



<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-b54806b006ba52935377cfa698af8bb2200dd03318001e967d986314f4c11d29.css" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-7779b57edafe155a3aa1b637cecde8ee61b92710fda0c54fdffc9826639a0bdd.css" media="all" rel="stylesheet" />
    
    
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/site-f6ce114ac3bc145f575863b4a6dbdf65e924bccb184fc4d4a4f5a09819b4173d.css" media="all" rel="stylesheet" />
    

    <link as="script" href="https://assets-cdn.github.com/assets/frameworks-779e3c6faa0d0139afab0793984d0529dd910e1645b109e2e6a281ae6a97ad7a.js" rel="preload" />
    
    <link as="script" href="https://assets-cdn.github.com/assets/github-610f0ec6bfdb0c7e0930c7f65c6a5216107e3d66611e9bca8d69f06dde94283b.js" rel="preload" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=device-width">
    
    <title>xrootd/eupspkg.cfg.sh at lsst-dev · lsst/xrootd · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="https://avatars2.githubusercontent.com/u/1134504?v=3&amp;s=400" name="twitter:image:src" /><meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="lsst/xrootd" name="twitter:title" /><meta content="xrootd - The XRootD central repository" name="twitter:description" />
      <meta content="https://avatars2.githubusercontent.com/u/1134504?v=3&amp;s=400" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="lsst/xrootd" property="og:title" /><meta content="https://github.com/lsst/xrootd" property="og:url" /><meta content="xrootd - The XRootD central repository" property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    
    <meta name="pjax-timeout" content="1000">
    
    <meta name="request-id" content="864FE643:19328:819BE92:57E3C518" data-pjax-transient>

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
<meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="864FE643:19328:819BE92:57E3C518" name="octolytics-dimension-request_id" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />



  <meta class="js-ga-set" name="dimension1" content="Logged Out">



        <meta name="hostname" content="github.com">
    <meta name="user-login" content="">

        <meta name="expected-hostname" content="github.com">
      <meta name="js-proxy-site-detection-payload" content="ODQ4YTQ2YTJiMWQwZDdlNDJmODI3ZWNlNjBjNDljZWRhYjJlMTdiOTM4MDI3ZjVlNGVhYzc5MTAwYTE0N2IwNnx7InJlbW90ZV9hZGRyZXNzIjoiMTM0Ljc5LjIzMC42NyIsInJlcXVlc3RfaWQiOiI4NjRGRTY0MzoxOTMyODo4MTlCRTkyOjU3RTNDNTE4IiwidGltZXN0YW1wIjoxNDc0NTQ0OTIwfQ==">


      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta name="html-safe-nonce" content="92c27320e96d71ad8aab358f98c6ec117839e62c">
    <meta content="70089dafc1f9fc989b86a51ff9646a2927451c44" name="form-nonce" />

    <meta http-equiv="x-pjax-version" content="799233884d6b105cb0d71874f12b85fe">
    

      
  <meta name="description" content="xrootd - The XRootD central repository">
  <meta name="go-import" content="github.com/lsst/xrootd git https://github.com/lsst/xrootd.git">

  <meta content="1134504" name="octolytics-dimension-user_id" /><meta content="lsst" name="octolytics-dimension-user_login" /><meta content="41933835" name="octolytics-dimension-repository_id" /><meta content="lsst/xrootd" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="true" name="octolytics-dimension-repository_is_fork" /><meta content="8924314" name="octolytics-dimension-repository_parent_id" /><meta content="xrootd/xrootd" name="octolytics-dimension-repository_parent_nwo" /><meta content="8924314" name="octolytics-dimension-repository_network_root_id" /><meta content="xrootd/xrootd" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/lsst/xrootd/commits/lsst-dev.atom" rel="alternate" title="Recent Commits to xrootd:lsst-dev" type="application/atom+xml">


      <link rel="canonical" href="https://github.com/lsst/xrootd/blob/lsst-dev/ups/eupspkg.cfg.sh" data-pjax-transient>
  </head>


  <body class="logged-out  env-production  vis-public fork page-blob">
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



          <header class="site-header js-details-container" role="banner">
  <div class="container-responsive">
    <a class="header-logo-invertocat" href="https://github.com/" aria-label="Homepage" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="32" version="1.1" viewBox="0 0 16 16" width="32"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path></svg>
    </a>

    <button class="btn-link float-right site-header-toggle js-details-target" type="button" aria-label="Toggle navigation">
      <svg aria-hidden="true" class="octicon octicon-three-bars" height="24" version="1.1" viewBox="0 0 12 16" width="18"><path d="M11.41 9H.59C0 9 0 8.59 0 8c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zm0-4H.59C0 5 0 4.59 0 4c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zM.59 11H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1H.59C0 13 0 12.59 0 12c0-.59 0-1 .59-1z"></path></svg>
    </button>

    <div class="site-header-menu">
      <nav class="site-header-nav site-header-nav-main">
        <a href="/personal" class="js-selected-navigation-item nav-item nav-item-personal" data-ga-click="Header, click, Nav menu - item:personal" data-selected-links="/personal /personal">
          Personal
</a>        <a href="/open-source" class="js-selected-navigation-item nav-item nav-item-opensource" data-ga-click="Header, click, Nav menu - item:opensource" data-selected-links="/open-source /open-source">
          Open source
</a>        <a href="/business" class="js-selected-navigation-item nav-item nav-item-business" data-ga-click="Header, click, Nav menu - item:business" data-selected-links="/business /business/partners /business/features /business/customers /business">
          Business
</a>        <a href="/explore" class="js-selected-navigation-item nav-item nav-item-explore" data-ga-click="Header, click, Nav menu - item:explore" data-selected-links="/explore /trending /trending/developers /integrations /integrations/feature/code /integrations/feature/collaborate /integrations/feature/ship /explore">
          Explore
</a>      </nav>

      <div class="site-header-actions">
            <a class="btn btn-primary site-header-actions-btn" href="/join?source=header-repo" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
          <a class="btn site-header-actions-btn mr-2" href="/login?return_to=%2Flsst%2Fxrootd%2Fblob%2Flsst-dev%2Fups%2Feupspkg.cfg.sh" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
      </div>

        <nav class="site-header-nav site-header-nav-secondary">
          <a class="nav-item" href="/pricing">Pricing</a>
          <a class="nav-item" href="/blog">Blog</a>
          <a class="nav-item" href="https://help.github.com">Support</a>
          <a class="nav-item header-search-link" href="https://github.com/search">Search GitHub</a>
              <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/lsst/xrootd/search" class="js-site-search-form" data-scoped-search-url="/lsst/xrootd/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <label class="form-control header-search-wrapper js-chromeless-input-container">
      <div class="header-search-scope">This repository</div>
      <input type="text"
        class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
        data-hotkey="s"
        name="q"
        placeholder="Search"
        aria-label="Search this repository"
        data-unscoped-placeholder="Search GitHub"
        data-scoped-placeholder="Search"
        autocapitalize="off">
    </label>
</form></div>

        </nav>
    </div>
  </div>
</header>



    <div id="start-of-content" class="accessibility-aid"></div>

      <div id="js-flash-container">
</div>


    <div role="main">
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode">
    <div id="js-repo-pjax-container" data-pjax-container>
      
<div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav">
  <div class="container repohead-details-container">

    

<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2Flsst%2Fxrootd"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"></path></svg>
    Watch
  </a>
  <a class="social-count" href="/lsst/xrootd/watchers"
     aria-label="24 users are watching this repository">
    24
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2Flsst%2Fxrootd"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>
    Star
  </a>

    <a class="social-count js-social-count" href="/lsst/xrootd/stargazers"
      aria-label="0 users starred this repository">
      0
    </a>

  </li>

  <li>
      <a href="/login?return_to=%2Flsst%2Fxrootd"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>
        Fork
      </a>

    <a href="/lsst/xrootd/network" class="social-count"
       aria-label="39 users are forked this repository">
      39
    </a>
  </li>
</ul>

    <h1 class="public ">
  <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>
  <span class="author" itemprop="author"><a href="/lsst" class="url fn" rel="author">lsst</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/lsst/xrootd" data-pjax="#js-repo-pjax-container">xrootd</a></strong>

    <span class="fork-flag">
      <span class="text">forked from <a href="/xrootd/xrootd">xrootd/xrootd</a></span>
    </span>
</h1>

  </div>
  <div class="container">
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/lsst/xrootd/tree/lsst-dev" aria-selected="true" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /lsst/xrootd/tree/lsst-dev" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"></path></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>


  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/lsst/xrootd/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /lsst/xrootd/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>
      <span itemprop="name">Pull requests</span>
      <span class="counter">1</span>
      <meta itemprop="position" content="3">
</a>  </span>

  <a href="/lsst/xrootd/projects" class="js-selected-navigation-item reponav-item" data-selected-links="repo_projects new_repo_project repo_project /lsst/xrootd/projects">
    <svg class="octicon" aria-hidden="true" version="1.1" width="15" height="16" viewBox="0 0 15 16">
      <path d="M1 15h13V1H1v14zM15 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1a1 1 0 0 1 1-1h13a1 1 0 0 1 1 1zm-4.41 11h1.82c.59 0 .59-.41.59-1V3c0-.59 0-1-.59-1h-1.82C10 2 10 2.41 10 3v8c0 .59 0 1 .59 1zm-4-2h1.82C9 10 9 9.59 9 9V3c0-.59 0-1-.59-1H6.59C6 2 6 2.41 6 3v6c0 .59 0 1 .59 1zM2 13V3c0-.59 0-1 .59-1h1.82C5 2 5 2.41 5 3v10c0 .59 0 1-.59 1H2.59C2 14 2 13.59 2 13z"></path>
    </svg>
    Projects
    <span class="counter">0</span>
</a>


  <a href="/lsst/xrootd/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="pulse /lsst/xrootd/pulse">
    <svg aria-hidden="true" class="octicon octicon-pulse" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M11.5 8L8.8 5.4 6.6 8.5 5.5 1.6 2.38 8H0v2h3.6l.9-1.8.9 5.4L9 8.5l1.6 1.5H14V8z"></path></svg>
    Pulse
</a>
  <a href="/lsst/xrootd/graphs" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors /lsst/xrootd/graphs">
    <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"></path></svg>
    Graphs
</a>

</nav>

  </div>
</div>

<div class="container new-discussion-timeline experiment-repo-nav">
  <div class="repository-content">

    

<a href="/lsst/xrootd/blob/c2d41a6ebb31728c088d5fa0dc45ee1ed0b97229/ups/eupspkg.cfg.sh" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:66145bba24498be0a035fb809e012dae -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu branch-select-menu js-menu-container js-select-menu float-left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">lsst-dev</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/legacy/master/ups/eupspkg.cfg.sh"
               data-name="legacy/master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                legacy/master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/legacy/tickets/DM-1622/ups/eupspkg.cfg.sh"
               data-name="legacy/tickets/DM-1622"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                legacy/tickets/DM-1622
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/legacy/u/mjuric/osx-compatibility/ups/eupspkg.cfg.sh"
               data-name="legacy/u/mjuric/osx-compatibility"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                legacy/u/mjuric/osx-compatibility
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/legacy/u/timj/DM-3584/ups/eupspkg.cfg.sh"
               data-name="legacy/u/timj/DM-3584"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                legacy/u/timj/DM-3584
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/lsst/xrootd/blob/lsst-dev/ups/eupspkg.cfg.sh"
               data-name="lsst-dev"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                lsst-dev
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/master/ups/eupspkg.cfg.sh"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/stable-3.3.x/ups/eupspkg.cfg.sh"
               data-name="stable-3.3.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                stable-3.3.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/stable-3.3.6-x/ups/eupspkg.cfg.sh"
               data-name="stable-3.3.6-x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                stable-3.3.6-x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/stable-4.0.x/ups/eupspkg.cfg.sh"
               data-name="stable-4.0.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                stable-4.0.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/stable-4.1.x-cern/ups/eupspkg.cfg.sh"
               data-name="stable-4.1.x-cern"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                stable-4.1.x-cern
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/stable-4.1.x/ups/eupspkg.cfg.sh"
               data-name="stable-4.1.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                stable-4.1.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/stable-4.2.x/ups/eupspkg.cfg.sh"
               data-name="stable-4.2.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                stable-4.2.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/tickets/DM-3200/ups/eupspkg.cfg.sh"
               data-name="tickets/DM-3200"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                tickets/DM-3200
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/tickets/DM-3898/ups/eupspkg.cfg.sh"
               data-name="tickets/DM-3898"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                tickets/DM-3898
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/tickets/DM-4092/ups/eupspkg.cfg.sh"
               data-name="tickets/DM-4092"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                tickets/DM-4092
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/tickets/DM-4617/ups/eupspkg.cfg.sh"
               data-name="tickets/DM-4617"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                tickets/DM-4617
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/tickets/DM-7030/ups/eupspkg.cfg.sh"
               data-name="tickets/DM-7030"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                tickets/DM-7030
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/tickets/DM-7553/ups/eupspkg.cfg.sh"
               data-name="tickets/DM-7553"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                tickets/DM-7553
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/tickets/DM-7656/ups/eupspkg.cfg.sh"
               data-name="tickets/DM-7656"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                tickets/DM-7656
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/tickets/DM-7679/ups/eupspkg.cfg.sh"
               data-name="tickets/DM-7679"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                tickets/DM-7679
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/u/fritzm/4.3.0.lsst1/ups/eupspkg.cfg.sh"
               data-name="u/fritzm/4.3.0.lsst1"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                u/fritzm/4.3.0.lsst1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/u/fritzm/4.3.0.rc3.lsst1/ups/eupspkg.cfg.sh"
               data-name="u/fritzm/4.3.0.rc3.lsst1"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                u/fritzm/4.3.0.rc3.lsst1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/xrdposixcl/ups/eupspkg.cfg.sh"
               data-name="xrdposixcl"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                xrdposixcl
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/lsst/xrootd/blob/xrdssi/ups/eupspkg.cfg.sh"
               data-name="xrdssi"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                xrdssi
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xssi-20150311/ups/eupspkg.cfg.sh"
              data-name="xssi-20150311"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xssi-20150311">
                xssi-20150311
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xssi-1.0.1/ups/eupspkg.cfg.sh"
              data-name="xssi-1.0.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xssi-1.0.1">
                xssi-1.0.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xssi-1.0.0/ups/eupspkg.cfg.sh"
              data-name="xssi-1.0.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xssi-1.0.0">
                xssi-1.0.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrootd-20090206-1632/ups/eupspkg.cfg.sh"
              data-name="xrootd-20090206-1632"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrootd-20090206-1632">
                xrootd-20090206-1632
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrootd-20081122-0000/ups/eupspkg.cfg.sh"
              data-name="xrootd-20081122-0000"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrootd-20081122-0000">
                xrootd-20081122-0000
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrootd-20081118-1117/ups/eupspkg.cfg.sh"
              data-name="xrootd-20081118-1117"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrootd-20081118-1117">
                xrootd-20081118-1117
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrootd-20081114-1728/ups/eupspkg.cfg.sh"
              data-name="xrootd-20081114-1728"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrootd-20081114-1728">
                xrootd-20081114-1728
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrootd-20081015-1036/ups/eupspkg.cfg.sh"
              data-name="xrootd-20081015-1036"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrootd-20081015-1036">
                xrootd-20081015-1036
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrootd-20080710-1621/ups/eupspkg.cfg.sh"
              data-name="xrootd-20080710-1621"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrootd-20080710-1621">
                xrootd-20080710-1621
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrdssi-1.0.6/ups/eupspkg.cfg.sh"
              data-name="xrdssi-1.0.6"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrdssi-1.0.6">
                xrdssi-1.0.6
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrdssi-1.0.6.lsst1/ups/eupspkg.cfg.sh"
              data-name="xrdssi-1.0.6.lsst1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrdssi-1.0.6.lsst1">
                xrdssi-1.0.6.lsst1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrdssi-1.0.5/ups/eupspkg.cfg.sh"
              data-name="xrdssi-1.0.5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrdssi-1.0.5">
                xrdssi-1.0.5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrdssi-1.0.4/ups/eupspkg.cfg.sh"
              data-name="xrdssi-1.0.4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrdssi-1.0.4">
                xrdssi-1.0.4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrdssi-1.0.3/ups/eupspkg.cfg.sh"
              data-name="xrdssi-1.0.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrdssi-1.0.3">
                xrdssi-1.0.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/xrdssi-1.0.2/ups/eupspkg.cfg.sh"
              data-name="xrdssi-1.0.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="xrdssi-1.0.2">
                xrdssi-1.0.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100831-2042/ups/eupspkg.cfg.sh"
              data-name="v20100831-2042"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100831-2042">
                v20100831-2042
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100824-1320/ups/eupspkg.cfg.sh"
              data-name="v20100824-1320"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100824-1320">
                v20100824-1320
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100727-1549/ups/eupspkg.cfg.sh"
              data-name="v20100727-1549"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100727-1549">
                v20100727-1549
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100714-1501/ups/eupspkg.cfg.sh"
              data-name="v20100714-1501"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100714-1501">
                v20100714-1501
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100617-1658/ups/eupspkg.cfg.sh"
              data-name="v20100617-1658"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100617-1658">
                v20100617-1658
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100607-1216/ups/eupspkg.cfg.sh"
              data-name="v20100607-1216"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100607-1216">
                v20100607-1216
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100602-0830/ups/eupspkg.cfg.sh"
              data-name="v20100602-0830"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100602-0830">
                v20100602-0830
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100525-1724/ups/eupspkg.cfg.sh"
              data-name="v20100525-1724"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100525-1724">
                v20100525-1724
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100510-1509/ups/eupspkg.cfg.sh"
              data-name="v20100510-1509"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100510-1509">
                v20100510-1509
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100503-1522/ups/eupspkg.cfg.sh"
              data-name="v20100503-1522"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100503-1522">
                v20100503-1522
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100503-0944/ups/eupspkg.cfg.sh"
              data-name="v20100503-0944"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100503-0944">
                v20100503-0944
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100421-1008/ups/eupspkg.cfg.sh"
              data-name="v20100421-1008"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100421-1008">
                v20100421-1008
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100413-1018/ups/eupspkg.cfg.sh"
              data-name="v20100413-1018"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100413-1018">
                v20100413-1018
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100401-2148/ups/eupspkg.cfg.sh"
              data-name="v20100401-2148"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100401-2148">
                v20100401-2148
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100325-1237/ups/eupspkg.cfg.sh"
              data-name="v20100325-1237"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100325-1237">
                v20100325-1237
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100325-1126/ups/eupspkg.cfg.sh"
              data-name="v20100325-1126"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100325-1126">
                v20100325-1126
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100315-1007/ups/eupspkg.cfg.sh"
              data-name="v20100315-1007"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100315-1007">
                v20100315-1007
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100303-1613/ups/eupspkg.cfg.sh"
              data-name="v20100303-1613"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100303-1613">
                v20100303-1613
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100219-0901/ups/eupspkg.cfg.sh"
              data-name="v20100219-0901"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100219-0901">
                v20100219-0901
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100208-1428/ups/eupspkg.cfg.sh"
              data-name="v20100208-1428"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100208-1428">
                v20100208-1428
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100205-0000/ups/eupspkg.cfg.sh"
              data-name="v20100205-0000"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100205-0000">
                v20100205-0000
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100115-1117/ups/eupspkg.cfg.sh"
              data-name="v20100115-1117"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100115-1117">
                v20100115-1117
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100113-1502/ups/eupspkg.cfg.sh"
              data-name="v20100113-1502"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100113-1502">
                v20100113-1502
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20100108-0940/ups/eupspkg.cfg.sh"
              data-name="v20100108-0940"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20100108-0940">
                v20100108-0940
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20091104-1102/ups/eupspkg.cfg.sh"
              data-name="v20091104-1102"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20091104-1102">
                v20091104-1102
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20091028-1003/ups/eupspkg.cfg.sh"
              data-name="v20091028-1003"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20091028-1003">
                v20091028-1003
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20091008-2019/ups/eupspkg.cfg.sh"
              data-name="v20091008-2019"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20091008-2019">
                v20091008-2019
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090930-1117/ups/eupspkg.cfg.sh"
              data-name="v20090930-1117"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090930-1117">
                v20090930-1117
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090904-1035/ups/eupspkg.cfg.sh"
              data-name="v20090904-1035"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090904-1035">
                v20090904-1035
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090904-0700/ups/eupspkg.cfg.sh"
              data-name="v20090904-0700"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090904-0700">
                v20090904-0700
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090727-1318/ups/eupspkg.cfg.sh"
              data-name="v20090727-1318"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090727-1318">
                v20090727-1318
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090721-0636/ups/eupspkg.cfg.sh"
              data-name="v20090721-0636"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090721-0636">
                v20090721-0636
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090623-1817/ups/eupspkg.cfg.sh"
              data-name="v20090623-1817"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090623-1817">
                v20090623-1817
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090611-0430/ups/eupspkg.cfg.sh"
              data-name="v20090611-0430"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090611-0430">
                v20090611-0430
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090512-1021/ups/eupspkg.cfg.sh"
              data-name="v20090512-1021"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090512-1021">
                v20090512-1021
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090512-1021p1/ups/eupspkg.cfg.sh"
              data-name="v20090512-1021p1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090512-1021p1">
                v20090512-1021p1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090421-1340/ups/eupspkg.cfg.sh"
              data-name="v20090421-1340"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090421-1340">
                v20090421-1340
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090217-0500/ups/eupspkg.cfg.sh"
              data-name="v20090217-0500"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090217-0500">
                v20090217-0500
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090216-0730/ups/eupspkg.cfg.sh"
              data-name="v20090216-0730"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090216-0730">
                v20090216-0730
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090202-1402/ups/eupspkg.cfg.sh"
              data-name="v20090202-1402"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090202-1402">
                v20090202-1402
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20090127-1140/ups/eupspkg.cfg.sh"
              data-name="v20090127-1140"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20090127-1140">
                v20090127-1140
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080923-1633/ups/eupspkg.cfg.sh"
              data-name="v20080923-1633"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080923-1633">
                v20080923-1633
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080828-1632/ups/eupspkg.cfg.sh"
              data-name="v20080828-1632"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080828-1632">
                v20080828-1632
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080728-0933/ups/eupspkg.cfg.sh"
              data-name="v20080728-0933"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080728-0933">
                v20080728-0933
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080722-1249/ups/eupspkg.cfg.sh"
              data-name="v20080722-1249"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080722-1249">
                v20080722-1249
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080626-1805p1/ups/eupspkg.cfg.sh"
              data-name="v20080626-1805p1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080626-1805p1">
                v20080626-1805p1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080609-0300-beforeXrdSysHeaders/ups/eupspkg.cfg.sh"
              data-name="v20080609-0300-beforeXrdSysHeaders"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080609-0300-beforeXrdSysHeaders">
                v20080609-0300-beforeXrdSysHeaders
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080531-0714p1/ups/eupspkg.cfg.sh"
              data-name="v20080531-0714p1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080531-0714p1">
                v20080531-0714p1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080513-1222/ups/eupspkg.cfg.sh"
              data-name="v20080513-1222"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080513-1222">
                v20080513-1222
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080508/ups/eupspkg.cfg.sh"
              data-name="v20080508"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080508">
                v20080508
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20080410-0747/ups/eupspkg.cfg.sh"
              data-name="v20080410-0747"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20080410-0747">
                v20080410-0747
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071116-0000/ups/eupspkg.cfg.sh"
              data-name="v20071116-0000"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071116-0000">
                v20071116-0000
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071116-0000d/ups/eupspkg.cfg.sh"
              data-name="v20071116-0000d"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071116-0000d">
                v20071116-0000d
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071116-0000b/ups/eupspkg.cfg.sh"
              data-name="v20071116-0000b"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071116-0000b">
                v20071116-0000b
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071116-0000a/ups/eupspkg.cfg.sh"
              data-name="v20071116-0000a"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071116-0000a">
                v20071116-0000a
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071115-precmsd/ups/eupspkg.cfg.sh"
              data-name="v20071115-precmsd"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071115-precmsd">
                v20071115-precmsd
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071115-cmsd/ups/eupspkg.cfg.sh"
              data-name="v20071115-cmsd"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071115-cmsd">
                v20071115-cmsd
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071101-0808/ups/eupspkg.cfg.sh"
              data-name="v20071101-0808"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071101-0808">
                v20071101-0808
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071101-0808p1/ups/eupspkg.cfg.sh"
              data-name="v20071101-0808p1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071101-0808p1">
                v20071101-0808p1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071028-1219/ups/eupspkg.cfg.sh"
              data-name="v20071028-1219"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071028-1219">
                v20071028-1219
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071018-0716/ups/eupspkg.cfg.sh"
              data-name="v20071018-0716"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071018-0716">
                v20071018-0716
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071001-0000/ups/eupspkg.cfg.sh"
              data-name="v20071001-0000"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071001-0000">
                v20071001-0000
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071001-0000e/ups/eupspkg.cfg.sh"
              data-name="v20071001-0000e"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071001-0000e">
                v20071001-0000e
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071001-0000d/ups/eupspkg.cfg.sh"
              data-name="v20071001-0000d"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071001-0000d">
                v20071001-0000d
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071001-0000c/ups/eupspkg.cfg.sh"
              data-name="v20071001-0000c"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071001-0000c">
                v20071001-0000c
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071001-0000b/ups/eupspkg.cfg.sh"
              data-name="v20071001-0000b"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071001-0000b">
                v20071001-0000b
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20071001-0000a/ups/eupspkg.cfg.sh"
              data-name="v20071001-0000a"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20071001-0000a">
                v20071001-0000a
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070917-1105/ups/eupspkg.cfg.sh"
              data-name="v20070917-1105"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070917-1105">
                v20070917-1105
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070726-0800-beforeXrdSysPthread/ups/eupspkg.cfg.sh"
              data-name="v20070726-0800-beforeXrdSysPthread"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070726-0800-beforeXrdSysPthread">
                v20070726-0800-beforeXrdSysPthread
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070726-0300-beforeXrdSysPthread/ups/eupspkg.cfg.sh"
              data-name="v20070726-0300-beforeXrdSysPthread"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070726-0300-beforeXrdSysPthread">
                v20070726-0300-beforeXrdSysPthread
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070716-0300/ups/eupspkg.cfg.sh"
              data-name="v20070716-0300"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070716-0300">
                v20070716-0300
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070712-beforeROOTchanges/ups/eupspkg.cfg.sh"
              data-name="v20070712-beforeROOTchanges"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070712-beforeROOTchanges">
                v20070712-beforeROOTchanges
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070321-1251/ups/eupspkg.cfg.sh"
              data-name="v20070321-1251"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070321-1251">
                v20070321-1251
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070321-1251p1/ups/eupspkg.cfg.sh"
              data-name="v20070321-1251p1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070321-1251p1">
                v20070321-1251p1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070320-1654/ups/eupspkg.cfg.sh"
              data-name="v20070320-1654"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070320-1654">
                v20070320-1654
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070305-1056/ups/eupspkg.cfg.sh"
              data-name="v20070305-1056"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070305-1056">
                v20070305-1056
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20070130-1143/ups/eupspkg.cfg.sh"
              data-name="v20070130-1143"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20070130-1143">
                v20070130-1143
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20060928-1600/ups/eupspkg.cfg.sh"
              data-name="v20060928-1600"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20060928-1600">
                v20060928-1600
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20060523-1741/ups/eupspkg.cfg.sh"
              data-name="v20060523-1741"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20060523-1741">
                v20060523-1741
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20060523-0218/ups/eupspkg.cfg.sh"
              data-name="v20060523-0218"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20060523-0218">
                v20060523-0218
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20060508-2357/ups/eupspkg.cfg.sh"
              data-name="v20060508-2357"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20060508-2357">
                v20060508-2357
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20060418-0404/ups/eupspkg.cfg.sh"
              data-name="v20060418-0404"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20060418-0404">
                v20060418-0404
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20060415-1738/ups/eupspkg.cfg.sh"
              data-name="v20060415-1738"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20060415-1738">
                v20060415-1738
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20060414-1334/ups/eupspkg.cfg.sh"
              data-name="v20060414-1334"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20060414-1334">
                v20060414-1334
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/lsst/xrootd/tree/v20060307-1857/ups/eupspkg.cfg.sh"
              data-name="v20060307-1857"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target" title="v20060307-1857">
                v20060307-1857
              </span>
            </a>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="BtnGroup float-right">
    <a href="/lsst/xrootd/find/lsst-dev"
          class="js-pjax-capture-input btn btn-sm BtnGroup-item"
          data-pjax
          data-hotkey="t">
      Find file
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm BtnGroup-item tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
  </div>
  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/lsst/xrootd/tree/lsst-dev"><span>xrootd</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/lsst/xrootd/tree/lsst-dev/ups"><span>ups</span></a></span><span class="separator">/</span><strong class="final-path">eupspkg.cfg.sh</strong>
  </div>
</div>

<include-fragment class="commit-tease" src="/lsst/xrootd/contributors/lsst-dev/ups/eupspkg.cfg.sh">
  <div>
    Fetching contributors&hellip;
  </div>

  <div class="commit-tease-contributors">
    <img alt="" class="loader-loading float-left" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" />
    <span class="loader-error">Cannot retrieve contributors at this time</span>
  </div>
</include-fragment>
<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/lsst/xrootd/raw/lsst-dev/ups/eupspkg.cfg.sh" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/lsst/xrootd/blame/lsst-dev/ups/eupspkg.cfg.sh" class="btn btn-sm js-update-url-with-hash BtnGroup-item">Blame</a>
      <a href="/lsst/xrootd/commits/lsst-dev/ups/eupspkg.cfg.sh" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
    </div>


        <button type="button" class="btn-octicon disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"></path></svg>
        </button>
        <button type="button" class="btn-octicon btn-octicon-danger disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"></path></svg>
        </button>
  </div>

  <div class="file-info">
      38 lines (29 sloc)
      <span class="file-info-divider"></span>
    719 Bytes
  </div>
</div>

  

  <div itemprop="text" class="blob-wrapper data type-shell">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># EupsPkg config file. Sourced by &#39;eupspkg&#39;</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c"># Breaks on Darwin w/o this</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-k">export</span> LANG=C</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line">PKGDIR=<span class="pl-smi">$PWD</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line">BUILDDIR=<span class="pl-smi">$PWD</span>/../xrootd-build</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-en">config</span>()</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line">{</td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line">        rm -rf <span class="pl-smi">${BUILDDIR}</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line">        mkdir <span class="pl-smi">${BUILDDIR}</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">cd</span> <span class="pl-smi">${BUILDDIR}</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line">        cmake <span class="pl-smi">${PKGDIR}</span> -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=<span class="pl-smi">${PREFIX}</span> -DENABLE_PERL=FALSE</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line">}</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-en">build</span>()</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">{</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">cd</span> <span class="pl-smi">${BUILDDIR}</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line">        default_build</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line">}</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-en">install</span>()</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">{</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">cd</span> <span class="pl-smi">${BUILDDIR}</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line">        make -j<span class="pl-smi">$NJOBS</span> install</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">        ARCH=<span class="pl-s"><span class="pl-pds">`</span>arch<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">case</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-smi">${ARCH}</span><span class="pl-pds">&quot;</span></span> in</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">            x86_64) mkdir -p <span class="pl-smi">${PREFIX}</span>/lib <span class="pl-k">&amp;&amp;</span> <span class="pl-c1">cd</span> <span class="pl-smi">${PREFIX}</span>/lib <span class="pl-k">&amp;&amp;</span> ln -s ../lib64/<span class="pl-k">*</span> <span class="pl-c1">.</span> ;;</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">*</span>)      <span class="pl-c1">echo</span> <span class="pl-s"><span class="pl-pds">&quot;</span>Default behaviour for managing lib(64)/ directory<span class="pl-pds">&quot;</span></span> ;;</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">esac</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">cd</span> <span class="pl-smi">${PKGDIR}</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">        install_ups</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">}</td>
      </tr>
</table>

  </div>

</div>

<button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="d-none">Jump to Line</button>
<div id="jump-to-line" style="display:none">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>


    </div>
  </div>

    </div>

        <div class="container site-footer-container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links float-right">
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact GitHub</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage" class="site-footer-mark" title="GitHub">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path></svg>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2016 <span title="0.10771s from github-fe148-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    

    <div id="ajax-error-message" class="ajax-error-message flash flash-error">
      <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"></path></svg>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path></svg>
      </button>
      You can't perform that action at this time.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/compat-40e365359d1c4db1e36a55be458e60f2b7c24d58b5a00ae13398480e7ba768e0.js"></script>
      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-779e3c6faa0d0139afab0793984d0529dd910e1645b109e2e6a281ae6a97ad7a.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-610f0ec6bfdb0c7e0930c7f65c6a5216107e3d66611e9bca8d69f06dde94283b.js"></script>
      
      
      
      
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
      <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"></path></svg>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
    <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path></svg>
    </button>
  </div>
</div>

  </body>
</html>

