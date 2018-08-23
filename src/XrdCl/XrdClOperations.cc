#include <iostream>
#include <XrdCl/XrdClOperations.hh>
#include <typeinfo>

using namespace std;


namespace XrdCl {

    //////////// OperationHandler

    OperationHandler::OperationHandler(ResponseHandler *handler){
        responseHandler = handler;
        nextOperation = NULL;
        semaphore = NULL;
    }

    void OperationHandler::AddOperation(HandledOperation *op){
        if(nextOperation){
            nextOperation->AddOperation(op);
        } else {
            nextOperation = op;
        }
    }

    void OperationHandler::HandleResponseWithHosts(XRootDStatus *status, AnyObject *response, HostList *hostList){
        bool operationStatus = status->IsOK();
        responseHandler->HandleResponseWithHosts(status, response, hostList);
        if(operationStatus){
            RunNextOperation();
        } else {
            cout<<"Operation status = "<<operationStatus<<". Next operation will not be run."<<endl;
        }
        
    }

    void OperationHandler::HandleResponse(XRootDStatus *status, AnyObject *response){
        responseHandler->HandleResponse(status, response);
        if(status->IsOK()){
            RunNextOperation();
        } else {
            cout<<"Operation status = "<<status->IsOK()<<". Next operation will not be run."<<endl;
        }
    }

    void OperationHandler::RunNextOperation(){
        if(nextOperation){ 
            cout<<"Running next operation:  "<<nextOperation->GetName()<<endl;
            nextOperation->Run(); 
        } else if (semaphore){
            semaphore->Post();
        }
    }

    OperationHandler::~OperationHandler(){
        if(nextOperation){
            delete nextOperation;
        }
    }

    ResponseHandler* OperationHandler::GetHandler(){
        return responseHandler;
    }

    void OperationHandler::SetSemaphore(XrdSysSemaphore *sem){
        semaphore = sem;
        if(nextOperation){
            nextOperation->SetSemaphore(sem);
        }
    }


    ///////////// Operation

    Operation::Operation(File *f){
        file = f;
    }

    XRootDStatus Operation::Run(OperationHandler *handler){
        cout<<"Running Operation"<<endl;
        return XRootDStatus();
    }

    HandledOperation& Operation::SetHandler(ResponseHandler *h){
        OperationHandler *handler = new OperationHandler(h);
        HandledOperation *op = new HandledOperation(this, handler);
        return *op;
    }

    HandledOperation& Operation::operator>>(ResponseHandler *h){
        return SetHandler(h);
    }



    ///////////// Read

    Read::Read(File *f): Operation(f){}
    
    Read::Read(Read *obj): Operation(obj->file){
        _offset = obj->_offset;
        _size = obj->_size;
        _buffer = obj->_buffer;
    }

    Read& Read::operator()(uint64_t offset, uint32_t size, void *buffer){
        _offset = offset;
        _size = size;
        _buffer = buffer;
        Read* r = new Read(this);
        return *r;
    }

    XRootDStatus Read::Run(OperationHandler *handler){
        cout<<"Running Read"<<endl;
        return file->Read(_offset, _size, _buffer, handler);
    }

    ///////////// Open

    Open::Open(File *f): Operation(f){}

    Open::Open(Open *obj): Operation(obj->file){
        _url = obj->_url;
        _flags = obj->_flags;
        _mode = obj->_mode;
    }

    Open& Open::operator()(const std::string &url, OpenFlags::Flags flags, Access::Mode mode){
        _url = url;
        _flags = flags;
        _mode = mode;
        Open* o = new Open(this);
        return *o;
    }

    XRootDStatus Open::Run(OperationHandler *handler){
        cout<<"Running Open"<<endl;
        return file->Open(_url, _flags, _mode, handler);
    }

    ///////////// Close

    Close::Close(File *f): Operation(f){}

    Close::Close(Close *obj): Operation(obj->file){}

    Close& Close::operator()(){
        Close *c = new Close(this);
        return *c;
    }

    XRootDStatus Close::Run(OperationHandler *handler){
        cout<<"Running Close"<<endl;
        return file->Close(handler);
    }


    //////////////// HandledOperation

    HandledOperation::HandledOperation(){
        operation = NULL;
        handler = NULL;
    }

    HandledOperation::HandledOperation(Operation* op, OperationHandler* h){
        operation = op;
        handler = h;
    }

    void HandledOperation::AddOperation(HandledOperation* op){
        if(handler){
            handler->AddOperation(op);
        }
    }

    HandledOperation& HandledOperation::operator|(HandledOperation& op){
        AddOperation(&op);
        return *this;
    }

    XRootDStatus HandledOperation::Run(){
        if(operation){
            return operation->Run(handler);
        } else {
            return XRootDStatus();
        }
    }

    string HandledOperation::GetName(){
        return operation ? operation->GetName() : "No operation";
    }

    HandledOperation::~HandledOperation(){
        if(handler){ delete handler; }
        if(operation) { delete operation; }
    }

    void HandledOperation::SetSemaphore(XrdSysSemaphore *sem){
        if(handler){
            handler->SetSemaphore(sem);
        }
    }


    //////////////// Workflow

    Workflow::Workflow(HandledOperation &op){
        firstOperation = &op;
        semaphore = NULL;
    }

    Workflow::~Workflow(){
        delete firstOperation;
        delete semaphore;
    }

    Workflow& Workflow::Run(){
        if(!semaphore){
            semaphore = new XrdSysSemaphore();
            firstOperation->SetSemaphore(semaphore);
            semaphore->Wait();
            firstOperation->Run();
        } else {
            cout<<"Workflow is already running"<<endl;
        }
        return *this;
    }

    void Workflow::Wait(){
        semaphore->Wait();
        return;
    }

};
