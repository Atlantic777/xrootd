//////////////////////////////////////////////////////////////////////////
//                                                                      //
// XrdClientAdmin                                                       //
//                                                                      //
// Author: Fabrizio Furano (INFN Padova, 2004)                          //
// Adapted from XTNetAdmin (root.cern.ch) originally done by            //
//  Alvise Dorigo, Fabrizio Furano                                      //
//          INFN Padova, 2003                                           //
//                                                                      //
// A UNIX reference admin client for xrootd.                            //
//                                                                      //
//////////////////////////////////////////////////////////////////////////

//       $Id$

#include "XrdClient/XrdClientAdmin.hh"
#include "XrdClient/XrdClientDebug.hh"
#include "XrdClient/XrdClientUrlSet.hh"
#include "XrdClient/XrdClientConnAdmin.hh"
#include "XrdClient/XrdClientEnv.hh"
#include "XrdClient/XrdClientConnMgr.hh"


#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#ifndef WIN32
#include <unistd.h>
#include <strings.h>
#include <netinet/in.h>
#endif

XrdOucHash<XrdClientAdmin> XrdClientAdmin::fgAdminHash;
bool XrdClientAdmin::fgAdminConn = 0;

//_____________________________________________________________________________
void joinStrings(XrdOucString &buf, vecString vs)
{

   if (!vs.GetSize()) {
      buf = "";
      return;
   }

   if (vs.GetSize() == 1)
      buf = vs[0];
   else {
      for(int j=0; j < vs.GetSize(); j++)
	 {
	    buf += vs[j];
	    buf += "\n";
	 }
   }
   if (buf[buf.length()-1] == '\n')
      buf.erasefromend(1);
}

//_____________________________________________________________________________
XrdClientAdmin::XrdClientAdmin(const char *url) {


  // Pick-up the latest setting of the debug level
  DebugSetLevel(EnvGetLong(NAME_DEBUG));

  if (!ConnectionManager)
    Info(XrdClientDebug::kNODEBUG,
	 "",
	 "(C) 2004 SLAC XrdClientAdmin " << XRD_CLIENT_VERSION);

   fInitialUrl = url;

   fConnModule = (fgAdminConn) ? new XrdClientConnAdmin()
                               : new XrdClientConn();

   if (!fConnModule) {
      Error("XrdClientAdmin",
	    "Object creation failed.");
      abort();
   }

   // Set this instance as a handler for handling the consequences of a redirection
   fConnModule->SetRedirHandler(this);

}

//_____________________________________________________________________________
XrdClientAdmin::~XrdClientAdmin()
{
   delete fConnModule;
}

//_____________________________________________________________________________
XrdClientAdmin *XrdClientAdmin::GetClientAdmin(const char *url)
{
   // Checks if an admin for 'url' exists already.
   // Avoid duplications.
   XrdClientAdmin *ca = 0;

   // ID key
   XrdOucString key = XrdClientConn::GetKey(XrdClientUrlInfo(url));

   // If we have one for 'key', just use it
   if (fgAdminHash.Num() > 0 && (ca = fgAdminHash.Find(key.c_str()))) {
      return ca;
   }

   // Create one and save the reference in the hash table
   ca = new XrdClientAdmin(url);
   fgAdminHash.Add(key.c_str(), ca);

   // Done
   return ca;
}

//_____________________________________________________________________________
void XrdClientAdmin::SetAdminConn(bool on)
{
   // Switch between optmized and standard connections

   fgAdminConn = on;
}

//_____________________________________________________________________________
bool XrdClientAdmin::Connect()
{
   // Connect to the server

   // Nothing to do if already connected
   if (fConnModule && fConnModule->IsConnected()) {
      return TRUE;
   }

   short locallogid;
  
   // Now we try to set up the first connection
   // We cycle through the list of urls given in fInitialUrl
  
   // Max number of tries
   int connectMaxTry = EnvGetLong(NAME_FIRSTCONNECTMAXCNT);
  
   // Construction of the url set coming from the resolution of the hosts given
   XrdClientUrlSet urlArray(fInitialUrl);
   if (!urlArray.IsValid()) {
      Error("Connect", "The URL provided is incorrect.");
      return FALSE;
   }

   //
   // Now start the connection phase, picking randomly from UrlArray
   //
   urlArray.Rewind();
   locallogid = -1;
   int urlstried = 0;
   for (int connectTry = 0;
	(connectTry < connectMaxTry) && (!fConnModule->IsConnected()); 
	connectTry++) {

      XrdClientUrlInfo *thisUrl = 0;
      urlstried = (urlstried == urlArray.Size()) ? 0 : urlstried;

      bool nogoodurl = TRUE;
      while (urlArray.Size() > 0) {
     
         // Get an url from the available set
         if ((thisUrl = urlArray.GetARandomUrl())) {

            if (fConnModule->CheckHostDomain(thisUrl->Host)) {
               nogoodurl = FALSE;
               Info(XrdClientDebug::kHIDEBUG, "Connect", "Trying to connect to " <<
                                              thisUrl->Host << ":" << thisUrl->Port <<
                                              ". Connect try " << connectTry+1);
               locallogid = fConnModule->Connect(*thisUrl, this);
               // To find out if we have tried the whole URLs set
               urlstried++;
               break;
            } else {
               // Invalid domain: drop the url and move to next, if any
               urlArray.EraseUrl(thisUrl);
               continue;
            }

	 }
      }
      if (nogoodurl) {
         Error("Connect", "Access denied to all URL domains requested");
         break;
      }
     
      // We are connected to a host. Let's handshake with it.
      if (fConnModule->IsConnected()) {

	 // Now the have the logical Connection ID, that we can use as streamid for 
	 // communications with the server

	 Info(XrdClientDebug::kHIDEBUG, "Connect",
	      "The logical connection id is " << fConnModule->GetLogConnID() <<
	      ". This will be the streamid for this client");

	 fConnModule->SetUrl(*thisUrl);
        
	 Info(XrdClientDebug::kHIDEBUG, "Connect",
	      "Working url is " << thisUrl->GetUrl());
        
	 // after connection deal with server
	 if (!fConnModule->GetAccessToSrv()) {
            if (fConnModule->LastServerError.errnum == kXR_NotAuthorized) {
               if (urlstried == urlArray.Size()) {
                  // Authentication error: we tried all the indicated URLs:
                  // does not make much sense to retry
                  fConnModule->Disconnect(TRUE);
                  XrdOucString msg(fConnModule->LastServerError.errmsg);
                  msg.erasefromend(1);
                  Error("Connect", "Authentication failure: " << msg);
                  break;
               } else {
                  XrdOucString msg(fConnModule->LastServerError.errmsg);
                  msg.erasefromend(1);
                  Info(XrdClientDebug::kHIDEBUG, "Connect",
                                                 "Authentication failure: " << msg);
               }
            } else {
               Error("Connect", "Access to server failed: error: " <<
                                fConnModule->LastServerError.errnum << " (" << 
                                fConnModule->LastServerError.errmsg << ") - retrying.");
            }
         } else {
            Info(XrdClientDebug::kUSERDEBUG, "Connect", "Access to server granted.");
            break;
	 }
      }
     
      // The server denied access. We have to disconnect.
      Info(XrdClientDebug::kHIDEBUG, "Connect", "Disconnecting.");
     
      fConnModule->Disconnect(FALSE);
     
      if (connectTry < connectMaxTry-1) {

	 if (DebugLevel() >= XrdClientDebug::kUSERDEBUG)
	    Info(XrdClientDebug::kUSERDEBUG, "Connect",
	         "Connection attempt failed. Sleeping " <<
	         EnvGetLong(NAME_RECONNECTTIMEOUT) << " seconds.");
     
         sleep(EnvGetLong(NAME_RECONNECTTIMEOUT));

      }

   } //for connect try


   if (!fConnModule->IsConnected()) {
      return FALSE;
   }

  
   //
   // Variable initialization
   // If the server is a new xrootd ( load balancer or data server)
   //
   if ((fConnModule->GetServerType() != kSTRootd) && 
       (fConnModule->GetServerType() != kSTNone)) {
      // Now we are connected to a server that didn't redirect us after the 
      // login/auth phase

      Info(XrdClientDebug::kUSERDEBUG, "Connect", "Connected.");

     
   } else {
      // We close the connection only if we do not know the server type.
      // In the rootd case the connection may be re-used later.
      if (fConnModule->GetServerType() == kSTNone)
	 fConnModule->Disconnect(TRUE);

      return FALSE;
   }

   return TRUE;

}



//_____________________________________________________________________________
bool XrdClientAdmin::Stat(const char *fname, long &id, long long &size, long &flags, long &modtime)
{
   // Return file stat information. The interface and return value is
   // identical to TSystem::GetPathInfo().

   bool ok;

   // asks the server for stat file informations
   ClientRequest statFileRequest;

   memset( &statFileRequest, 0, sizeof(ClientRequest) );

   fConnModule->SetSID(statFileRequest.header.streamid);

   statFileRequest.stat.requestid = kXR_stat;

   memset(statFileRequest.stat.reserved, 0,
	  sizeof(statFileRequest.stat.reserved));

   statFileRequest.header.dlen = strlen(fname);

   char fStats[2048];
   id = 0;
   size = 0;
   flags = 0;
   modtime = 0;

   ok = fConnModule->SendGenCommand(&statFileRequest, (const char*)fname,
				    NULL, fStats , FALSE, (char *)"Stat");


   if (ok && (fConnModule->LastServerResp.status == 0)) {
      if (fConnModule->LastServerResp.dlen >= 0)
         fStats[fConnModule->LastServerResp.dlen] = 0;
      else
         fStats[0] = 0;
      Info(XrdClientDebug::kHIDEBUG,
	   "Stat", "Returned stats=" << fStats);
      sscanf(fStats, "%ld %lld %ld %ld", &id, &size, &flags, &modtime);
   }

   return ok;
}





//_____________________________________________________________________________
bool XrdClientAdmin::SysStatX(const char *paths_list, kXR_char *binInfo)
{
   XrdOucString pl(paths_list);
   bool ret;
   // asks the server for stat file informations
   ClientRequest statXFileRequest;
  
   memset( &statXFileRequest, 0, sizeof(ClientRequest) );
   fConnModule->SetSID(statXFileRequest.header.streamid);
   statXFileRequest.header.requestid = kXR_statx;

   statXFileRequest.stat.dlen = pl.length();
  
   ret = fConnModule->SendGenCommand(&statXFileRequest, pl.c_str(),
				     NULL, binInfo , FALSE, (char *)"SysStatX");
  
   return(ret);
}

//_____________________________________________________________________________
bool XrdClientAdmin::ExistFiles(vecString &vs, vecBool &vb)
{
   bool ret;
   XrdOucString buf;
   joinStrings(buf, vs);

   kXR_char *Info;
   Info = (kXR_char*) malloc(vs.GetSize()+1);
   memset((void *)Info, 0, vs.GetSize()+1);
  
   ret = this->SysStatX(buf.c_str(), Info);

   if (ret) for(int j=0; j <= vs.GetSize()-1; j++) {
         bool tmp = TRUE;

         if ( (*(Info+j) & kXR_isDir) || (*(Info+j) & kXR_other) ||
              (*(Info+j) & kXR_offline) )
                 tmp = FALSE;

         vb.Push_back(tmp);
      }


   free(Info);
   return ret;
}

//_____________________________________________________________________________
bool XrdClientAdmin::ExistDirs(vecString &vs, vecBool &vb)
{
   bool ret;
   XrdOucString buf;
   joinStrings(buf, vs);

   kXR_char *Info;
   Info = (kXR_char*) malloc(vs.GetSize()+1);
   memset((void *)Info, 0, vs.GetSize()+1);
  
   ret = this->SysStatX(buf.c_str(), Info);
  
   if (ret) for(int j=0; j <= vs.GetSize()-1; j++) {
      bool tmp;

      if( (*(Info+j) & kXR_isDir) ) {
	 tmp = TRUE;
	 vb.Push_back(tmp);
      } else {
	 tmp = FALSE;
	 vb.Push_back(tmp);
      }

   }

   free(Info);
   return ret;
}

//_____________________________________________________________________________
bool XrdClientAdmin::IsFileOnline(vecString &vs, vecBool &vb)
{
   bool ret;
   XrdOucString buf;
   joinStrings(buf, vs);

   kXR_char *Info;
   Info = (kXR_char*) malloc(vs.GetSize()+1);
   memset((void *)Info, 0, vs.GetSize()+1);
  
   ret = this->SysStatX(buf.c_str(), Info);
  
   if (ret) for(int j=0; j <= vs.GetSize()-1; j++) {
      bool tmp;

      if( !(*(Info+j) & kXR_offline) ) {
	 tmp = TRUE;
	 vb.Push_back(tmp);
      } else {
	 tmp = FALSE;
	 vb.Push_back(tmp);
      }
      
   }

   free(Info);
   return ret;
}


// Called by the conn module after a redirection has been succesfully handled
//_____________________________________________________________________________
bool XrdClientAdmin::OpenFileWhenRedirected(char *newfhandle, bool &wasopen) {
   // We simply do nothing...
   wasopen = FALSE;
   return TRUE;
}

//_____________________________________________________________________________
bool XrdClientAdmin::Rmdir(const char *path) 
{
   // Remove an empty remote directory
   ClientRequest rmdirFileRequest;

   memset( &rmdirFileRequest, 0, sizeof(rmdirFileRequest) );
   fConnModule->SetSID(rmdirFileRequest.header.streamid);
   rmdirFileRequest.header.requestid = kXR_rmdir;
   rmdirFileRequest.header.dlen = strlen(path);
  
   return (fConnModule->SendGenCommand(&rmdirFileRequest, path, 
				       NULL, NULL, FALSE, (char *)"Rmdir"));

}

//_____________________________________________________________________________
bool XrdClientAdmin::Rm(const char *file) 
{
   // Remove a remote file
   ClientRequest rmFileRequest;

   memset( &rmFileRequest, 0, sizeof(rmFileRequest) );
   fConnModule->SetSID(rmFileRequest.header.streamid);
   rmFileRequest.header.requestid = kXR_rm;
   rmFileRequest.header.dlen = strlen(file);
  
   return (fConnModule->SendGenCommand(&rmFileRequest, file,
				       NULL, NULL, FALSE, (char *)"Rm"));
}

//_____________________________________________________________________________
bool XrdClientAdmin::Chmod(const char *file, int user, int group, int other)
{
   // Change the permission of a remote file
   ClientRequest chmodFileRequest;

   memset( &chmodFileRequest, 0, sizeof(chmodFileRequest) );

   fConnModule->SetSID(chmodFileRequest.header.streamid);
   chmodFileRequest.header.requestid = kXR_chmod;

   if(user  & 4) 
      chmodFileRequest.chmod.mode |= kXR_ur;
   if(user  & 2) 
      chmodFileRequest.chmod.mode |= kXR_uw;
   if(user  & 1) 
      chmodFileRequest.chmod.mode |= kXR_ux;

   if(group & 4) 
      chmodFileRequest.chmod.mode |= kXR_gr;
   if(group & 2)
      chmodFileRequest.chmod.mode |= kXR_gw;
   if(group & 1)
      chmodFileRequest.chmod.mode |= kXR_gx;

   if(other & 4)
      chmodFileRequest.chmod.mode |= kXR_or;
   if(other & 2)
      chmodFileRequest.chmod.mode |= kXR_ow;
   if(other & 1)
      chmodFileRequest.chmod.mode |= kXR_ox;

   chmodFileRequest.header.dlen = strlen(file);
  
  
   return (fConnModule->SendGenCommand(&chmodFileRequest, file,
				       NULL, NULL, FALSE, (char *)"Chmod")); 

}

//_____________________________________________________________________________
bool XrdClientAdmin::Mkdir(const char *dir, int user, int group, int other)
{
   // Create a remote directory
   ClientRequest mkdirRequest;

   memset( &mkdirRequest, 0, sizeof(mkdirRequest) );

   fConnModule->SetSID(mkdirRequest.header.streamid);

   mkdirRequest.header.requestid = kXR_mkdir;

   memset(mkdirRequest.mkdir.reserved, 0, 
	  sizeof(mkdirRequest.mkdir.reserved));

   if(user  & 4) 
      mkdirRequest.mkdir.mode |= kXR_ur;
   if(user  & 2) 
      mkdirRequest.mkdir.mode |= kXR_uw;
   if(user  & 1) 
      mkdirRequest.mkdir.mode |= kXR_ux;

   if(group & 4) 
      mkdirRequest.mkdir.mode |= kXR_gr;
   if(group & 2)
      mkdirRequest.mkdir.mode |= kXR_gw;
   if(group & 1)
      mkdirRequest.mkdir.mode |= kXR_gx;

   if(other & 4)
      mkdirRequest.mkdir.mode |= kXR_or;
   if(other & 2)
      mkdirRequest.mkdir.mode |= kXR_ow;
   if(other & 1)
      mkdirRequest.mkdir.mode |= kXR_ox;

   mkdirRequest.mkdir.options[0] = kXR_mkdirpath;

   mkdirRequest.header.dlen = strlen(dir);
  
   return (fConnModule->SendGenCommand(&mkdirRequest, dir,
				       NULL, NULL, FALSE, (char *)"Mkdir"));

}

//_____________________________________________________________________________
bool XrdClientAdmin::Mv(const char *fileSrc, const char *fileDest)
{
   bool ret;

   // Rename a remote file
   ClientRequest mvFileRequest;

   memset( &mvFileRequest, 0, sizeof(mvFileRequest) );

   fConnModule->SetSID(mvFileRequest.header.streamid);
   mvFileRequest.header.requestid = kXR_mv;

   mvFileRequest.header.dlen = strlen( fileDest ) + strlen( fileSrc ) + 1; // len + len + string terminator \0

   char *data = new char[mvFileRequest.header.dlen+2]; // + 1 for space separator + 1 for \0
   memset(data, 0, mvFileRequest.header.dlen+2);
   strcpy( data, fileSrc );
   strcat( data, " " );
   strcat( data, fileDest );
  
   ret = fConnModule->SendGenCommand(&mvFileRequest, data,
				     NULL, NULL, FALSE, (char *)"Mv");

   delete(data);

   return ret;
}

//_____________________________________________________________________________
UnsolRespProcResult XrdClientAdmin::ProcessUnsolicitedMsg(XrdClientUnsolMsgSender *sender,
							  XrdClientMessage *unsolmsg)
{
   // We are here if an unsolicited response comes from a logical conn
   // The response comes in the form of an TXMessage *, that must NOT be
   // destroyed after processing. It is destroyed by the first sender.
   // Remember that we are in a separate thread, since unsolicited 
   // responses are asynchronous by nature.

   if (unsolmsg->GetStatusCode() != XrdClientMessage::kXrdMSC_ok) {
	Info(XrdClientDebug::kHIDEBUG,
	     "ProcessUnsolicitedMsg", "Incoming unsolicited communication error message." );
    }
    else {
	Info(XrdClientDebug::kHIDEBUG,
	     "ProcessUnsolicitedMsg", "Incoming unsolicited response from streamid " <<
	     unsolmsg->HeaderSID() );
    }

   // Local processing ....
   if (unsolmsg->IsAttn()) {
      struct ServerResponseBody_Attn *attnbody;

      attnbody = (struct ServerResponseBody_Attn *)unsolmsg->GetData();

      int actnum = (attnbody) ? (attnbody->actnum) : 0;

      // "True" async resp is processed here
      switch (actnum) {

      case kXR_asyncdi:
	 // Disconnection + delayed reconnection request

	 struct ServerResponseBody_Attn_asyncdi *di;
	 di = (struct ServerResponseBody_Attn_asyncdi *)unsolmsg->GetData();

	 // Explicit redirection request
	 if (di) {
	    Info(XrdClientDebug::kUSERDEBUG,
		 "ProcessUnsolicitedMsg", "Requested Disconnection + Reconnect in " <<
		 ntohl(di->wsec) << " seconds.");

	    fConnModule->SetRequestedDestHost((char *)(fConnModule->GetCurrentUrl().Host.c_str()),
					      fConnModule->GetCurrentUrl().Port);
	    fConnModule->SetREQDelayedConnectState(ntohl(di->wsec));
	 }

	 // Other objects may be interested in this async resp
	 return kUNSOL_CONTINUE;
	 break;
	 
      case kXR_asyncrd:
	 // Redirection request

	 struct ServerResponseBody_Attn_asyncrd *rd;
	 rd = (struct ServerResponseBody_Attn_asyncrd *)unsolmsg->GetData();

	 // Explicit redirection request
	 if (rd && (strlen(rd->host) > 0)) {
	    Info(XrdClientDebug::kUSERDEBUG,
		 "ProcessUnsolicitedMsg", "Requested redir to " << rd->host <<
		 ":" << ntohl(rd->port));

	    fConnModule->SetRequestedDestHost(rd->host, ntohl(rd->port));
	 }

	 // Other objects may be interested in this async resp
	 return kUNSOL_CONTINUE;
	 break;

      case kXR_asyncwt:
	 // Puts the client in wait state

	 struct ServerResponseBody_Attn_asyncwt *wt;
	 wt = (struct ServerResponseBody_Attn_asyncwt *)unsolmsg->GetData();

	 if (wt) {
	    Info(XrdClientDebug::kUSERDEBUG,
		 "ProcessUnsolicitedMsg", "Pausing client for " << ntohl(wt->wsec) <<
		 " seconds.");

	    fConnModule->SetREQPauseState(ntohl(wt->wsec));
	 }

	 // Other objects may be interested in this async resp
	 return kUNSOL_CONTINUE;
	 break;

      case kXR_asyncgo:
	 // Resumes from pause state

	 Info(XrdClientDebug::kUSERDEBUG,
	      "ProcessUnsolicitedMsg", "Resuming from pause.");

	    fConnModule->SetREQPauseState(0);

	 // Other objects may be interested in this async resp
	 return kUNSOL_CONTINUE;
	 break;

      case kXR_asynresp:
	// A response to a request which got a kXR_waitresp as a response
	
	// We pass it direcly to the connmodule for processing
	// The processing will tell if the streamid matched or not,
	// in order to stop further processing
	return fConnModule->ProcessAsynResp(unsolmsg);
	break;

      default:

	Info(XrdClientDebug::kUSERDEBUG,
	      "ProcessUnsolicitedMsg", "Empty message");

	// Propagate the message
	return kUNSOL_CONTINUE;

      } // switch

      
   }
   else
       // Let's see if the message is a communication error message
       if (unsolmsg->GetStatusCode() != XrdClientMessage::kXrdMSC_ok)
	   return fConnModule->ProcessAsynResp(unsolmsg);


   return kUNSOL_CONTINUE;
}



//_____________________________________________________________________________
bool XrdClientAdmin::Protocol(kXR_int32 &proto, kXR_int32 &kind)
{
   ClientRequest protoRequest;

   memset( &protoRequest, 0, sizeof(protoRequest) );

   fConnModule->SetSID(protoRequest.header.streamid);

   protoRequest.header.requestid = kXR_protocol;

   char buf[8]; // For now 8 bytes are returned... in future could increase with more infos
   bool ret = fConnModule->SendGenCommand(&protoRequest, NULL,
					  NULL, buf, FALSE, (char *)"Protocol");
  
   memcpy(&proto, buf, sizeof(proto));
   memcpy(&kind, buf + sizeof(proto), sizeof(kind));

   proto = ntohl(proto);
   kind  = ntohl(kind);
    
   return ret;
}

//_____________________________________________________________________________
bool XrdClientAdmin::Prepare(vecString vs, kXR_char option, kXR_char prty)
{
   // Send a bulk prepare request for a vector of paths

   XrdOucString buf;
   joinStrings(buf, vs);

   return Prepare(buf.c_str(), option, prty);
}

//_____________________________________________________________________________
bool XrdClientAdmin::Prepare(const char *buf, kXR_char option, kXR_char prty)
{
   // Send a bulk prepare request for a '\n' separated list in buf

   ClientRequest prepareRequest;

   memset( &prepareRequest, 0, sizeof(prepareRequest) );

   fConnModule->SetSID(prepareRequest.header.streamid);

   prepareRequest.header.requestid    = kXR_prepare;
   prepareRequest.prepare.options     = option;
   prepareRequest.prepare.prty        = prty;

   prepareRequest.header.dlen = strlen(buf);

   bool ret = fConnModule->SendGenCommand(&prepareRequest, buf,
                                          NULL, NULL , FALSE, (char *)"Prepare");

   return ret;
}

//_____________________________________________________________________________
bool  XrdClientAdmin::DirList(const char *dir, vecString &entries) {
   bool ret;
   // asks the server for the content of a directory
   ClientRequest DirListFileRequest;
   kXR_char *dl;
  
   memset( &DirListFileRequest, 0, sizeof(ClientRequest) );
   fConnModule->SetSID(DirListFileRequest.header.streamid);
   DirListFileRequest.header.requestid = kXR_dirlist;

   DirListFileRequest.dirlist.dlen = strlen(dir);
  
   // Note that the connmodule has to dynamically alloc the space for the answer
   ret = fConnModule->SendGenCommand(&DirListFileRequest, dir,
				     (void **)&dl, 0, TRUE, (char *)"DirList");
  
   // Now parse the answer building the entries vector
   if (ret) {

      kXR_char *entry, *startp = dl, *endp = dl;

      while (endp) {

	 if ( (endp = (kXR_char *)strchr((const char*)startp, '\n')) ) {
            entry = (kXR_char *)malloc(endp-startp+1);
            memset((char *)entry, 0, endp-startp+1);
	    strncpy((char *)entry, (char *)startp, endp-startp);
	    endp++;
	 }
	 else
	    entry = (kXR_char *)strdup((char *)startp);
      
	 if (entry && strlen((char *)entry)) {
	    XrdOucString e((const char *)entry);

	    entries.Push_back(e);
	    free(entry);
	 }

	 startp = endp;
      }

   
  
   }

   if (dl) free(dl);
   return(ret);

}



//_____________________________________________________________________________
long XrdClientAdmin::GetChecksum(kXR_char *path, kXR_char **chksum)
{
   ClientRequest chksumRequest;

   memset( &chksumRequest, 0, sizeof(chksumRequest) );

   fConnModule->SetSID(chksumRequest.header.streamid);

   chksumRequest.query.requestid = kXR_query;
   chksumRequest.query.infotype = kXR_Qcksum;
   chksumRequest.query.dlen = strlen((char *) path);

   bool ret = fConnModule->SendGenCommand(&chksumRequest, (const char*) path,
					  (void **)chksum, NULL, TRUE,
					  (char *)"GetChecksum");
  
   if (ret) return (fConnModule->LastServerResp.dlen);
   else return 0;
}

//_____________________________________________________________________________
bool XrdClientAdmin::Locate(kXR_char *path, XrdClientUrlInfo &eurl, bool fast)
{
   // Find out the exact location of the file 'path' and save the corresponding
   // URL in eurl. If 'fast' is TRUE do not check actual availability of the
   // file on the end-point data server, otherwise a 'stat' operation is performed
   // which may result in a significant performance penalty.
   // In case of success 1 (TRUE) is returned; in case of error eurl is untouched
   // and 0 (FALSE) is returned.

   bool rc = 1;

   if (fast) {

      XrdOucString srcurl = eurl.GetUrl();
      eurl.TakeUrl(XrdOucString((const char*)path));

      // We do not want to redirected, just the redir info
      short oldredirmx = fConnModule->GetMaxRedirCnt();
      fConnModule->SetMaxRedirCnt(1);

      // Fill the client request
      ClientRequest statFileRequest;
      memset( &statFileRequest, 0, sizeof(ClientRequest) );
      fConnModule->SetSID(statFileRequest.header.streamid);
      statFileRequest.stat.requestid = kXR_stat;
      memset(statFileRequest.stat.reserved, 0, sizeof(statFileRequest.stat.reserved));
      statFileRequest.header.dlen = eurl.File.length();

      bool ok = fConnModule->SendGenCommand(&statFileRequest, eurl.File.c_str(),
                                            0, 0, FALSE, (char *)"Stat");
      if (!ok && (fConnModule->LastServerResp.status != kXR_redirect)) {
         // Failure: restore original settings and return
         eurl.TakeUrl(srcurl);
         fConnModule->SetMaxRedirCnt(oldredirmx);
         return 0;
      }

      // Endpoint url
      if (ok) {
         eurl.Proto = fConnModule->GetCurrentUrl().Proto;
         eurl.Host = fConnModule->GetCurrentUrl().Host;
         eurl.Port = fConnModule->GetCurrentUrl().Port;
      } else {
         eurl.Proto = fConnModule->GetRedirUrl().Proto;
         eurl.Host = fConnModule->GetRedirUrl().Host;
         eurl.Port = fConnModule->GetRedirUrl().Port;
      }

      // Get physical connection to check the server type: if redirector we have to
      // continue stepping down to find the end-poit data server
      XrdClientPhyConnection *p = XrdClientConn::GetConnectionMgr()->GetPhyConnection(eurl);
      if (!p || !(p->fServerType == kSTDataXrootd)) {
         XrdClientAdmin *ca = GetClientAdmin(eurl.GetUrl().c_str());
         if (!ca || !ca->Connect()) {
            // Failure: restore original settings and return
            eurl.TakeUrl(srcurl);
            fConnModule->SetMaxRedirCnt(oldredirmx);
            return 0;
         }
         rc = ca->Locate((kXR_char *)eurl.File.c_str(), eurl, 1);
      }

      // Original settings
      fConnModule->SetMaxRedirCnt(oldredirmx);

   } else {

      // Default
      eurl.TakeUrl(XrdOucString((const char*)path));

      // Stat the file
      long id, flags, modtime;
      long long size;
      if ((rc = Stat((const char *)path, id, size, flags, modtime))) {
         // Endpoint url
         if (fConnModule->GetRedirUrl().Host.length() <= 0) {
            eurl.Host = fConnModule->GetCurrentUrl().Host;
            eurl.Port = fConnModule->GetCurrentUrl().Port;
         } else {
            eurl.Host = fConnModule->GetRedirUrl().Host;
            eurl.Port = fConnModule->GetRedirUrl().Port;
         }
      }
   }

   // Done!
   return rc;
}
