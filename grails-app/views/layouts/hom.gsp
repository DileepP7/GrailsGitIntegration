<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>LeapFrog Git Management</title>

    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-TileColor" content="#5bc0de">
    <meta name="msapplication-TileImage" content="${resource(dir: 'assets/img/', file: 'bootstrap.min.css')}">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="${resource(dir: 'assets/lib/bootstrap/css/', file: 'bootstrap.min.css')}">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="${resource(dir: 'assets/lib/Font-Awesome/css/', file: 'font-awesome.min.css')}">

    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="${resource(dir: 'assets/css/', file: 'main.css')}">
     <link rel="stylesheet" href="${resource(dir: 'assets/css/', file: 'bootstrap.icon-large.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'assets/css/', file: 'theme.css')}">
    
    
    <link type="text/css" rel="stylesheet" href="http://gregfranko.com/jquery.selectBoxIt.js/css/jquery.selectBoxIt.css" />
              

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
      <script src="${resource(dir: 'assets/lib/html5shiv/', file: 'html5shiv.js')}"></script>
	      <script src="${resource(dir: 'assets/lib/respond/', file: 'respond.min.js')}"></script>
	    <![endif]-->

 
    <!--Modernizr 3.0-->
    <script src="${resource(dir: 'assets/lib/', file: 'modernizr-build.min.js')}"></script>
    
  </head>
  <body>
    <div id="wrap">
      <div id="top">

        <!-- .navbar -->
        <nav class="navbar navbar-inverse navbar-static-top">

          <!-- Brand and toggle get grouped for better mobile display -->
          <header class="navbar-header">
<!--            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
              <span class="sr-only">Toggle navigation</span> 
              <span class="icon-bar"></span> 
              <span class="icon-bar"></span> 
              <span class="icon-bar"></span> 
            </button>-->
        <!--    <a href="index.html" class="navbar-brand" style="color:#428BCA;    font-size: 29px;font-weight: bold; padding-left: 22px;padding-top: 15px;">
             LF-GIT
            </a> -->
    <img src="${resource(dir: 'img/', file:'lflogo.png')}" height="55px" width="250px" style="margin-left:8px;" />

          </header>
          <div class="topnav">
            <div class="btn-toolbar">
              <div class="btn-group">
                <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" class="btn btn-success btn-sm" id="changeSidebarPos">
                  <i class="fa fa-expand"></i>
                </a> 
              </div>
              <div class="btn-group">
             <!--   <a data-placement="bottom" data-original-title="E-mail" data-toggle="tooltip" class="btn btn-default btn-sm">
                  <i class="fa fa-envelope"></i>
                  <span class="label label-warning">5</span> 
                </a> 
                <a data-placement="bottom" data-original-title="Messages" href="#" data-toggle="tooltip" class="btn btn-default btn-sm">
                  <i class="fa fa-comments"></i>
                  <span class="label label-danger">4</span> 
                </a> 
-->
              </div>
              <div class="btn-group">
               <!-- <a data-placement="bottom" data-original-title="Document" href="#" data-toggle="tooltip" class="btn btn-default btn-sm">
                  <i class="fa fa-file"></i>
                </a> 
                <a data-toggle="modal" data-original-title="Help" data-placement="bottom" class="btn btn-default btn-sm" href="#helpModal">
                  <i class="fa fa-question"></i>
                </a> -->
              </div>
              <div class="btn-group">
                <g:link controller="logout" data-toggle="tooltip" data-original-title="Logout" data-placement="bottom" class="btn btn-metis-1 btn-sm">
                  <i class="fa fa-power-off"></i>
                </g:link> 
              </div>
            </div>
          </div><!-- /.topnav -->
          <div class="collapse navbar-collapse navbar-ex1-collapse">

            <!-- .nav -->
            <ul class="nav navbar-nav">
<!--              <li> <a href="dashboard.html">Dashboard</a>  </li>-->
<!--              <li> <a href="table.html">Tables</a>  </li>
              <li> <a href="file.html">File Manager</a>  </li>-->
<!--              <li class='dropdown '>
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  Form Elements
                  <b class="caret"></b>
                </a> 
                <ul class="dropdown-menu">
                  <li> <a href="form-general.html">General</a>  </li>
                  <li> <a href="form-validation.html">Validation</a>  </li>
                  <li> <a href="form-wysiwyg.html">WYSIWYG</a>  </li>
                  <li> <a href="form-wizard.html">Wizard &amp; File Upload</a>  </li>
                </ul>
              </li>-->
            </ul><!-- /.nav -->
          </div>
        </nav><!-- /.navbar -->

        <!-- header.head -->
        <header class="head">
<!--          <div class="search-bar">
            <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip" class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#menu" id="menu-toggle">
              <i class="fa fa-expand"></i>
            </a> 
            <form class="main-search">
              <div class="input-group">
                <input type="text" class="input-small form-control" placeholder="Live Search ...">
                <span class="input-group-btn">
                                    <button class="btn btn-primary btn-sm text-muted" type="button"><i class="fa fa-search"></i></button>
                                </span> 
              </div>
            </form>
          </div>-->

          <!-- ."main-bar -->
          <div class="main-bar">
            <h3>
<!--              <i class="fa fa-home"></i>-->
                <span id="githublogo" title="Github Logo"><img src="${resource(dir: 'img/', file:'git.png')}" height="30px" width="30px"/></span>
                LFT Git Mgmt</h3>
          </div><!-- /.main-bar -->
        </header>

        <!-- end header.head -->
      </div><!-- /#top -->
      <div id="left">
        <div class="media user-media">
          <a class="user-link" href="">
              <g:if test="${session.getAttribute("git_avatar")!=""}">
      <img class="media-object img-thumbnail user-img" alt="User Picture" height="150px" width="150px" src="${session.getAttribute("git_avatar")}">
        </g:if>
        <g:else>
            <img class="media-object img-thumbnail user-img" alt="User Picture" src="assets/img/user.gif">
            </g:else>
            
          </a> 
          <div class="media-body">
<!--            <h5 class="media-heading"><sec:loggedInUserInfo field="username"/></h5>-->
            <ul class="list-unstyled user-info">
              <li> 
                      <g:if test="${session.getAttribute("git_name")!=""}">
                          <a href="">${session.getAttribute("git_name")}</a>
                          </g:if>
                          <g:else>
                  
                  <a href="">Administrator</a> 
                          </g:else>
              </li>
              
            </ul>
          </div>
        </div>

        <!-- #menu -->
        <ul id="menu" class="collapse">
          <li class="nav-header">
          <!--  Menu--> 
          </li>
          <li class="nav-divider"></li>
          <li class="">
            <a href="${createLink(controller:"hom", action:"index")}">
              <i class="fa fa-dashboard"></i>
              <span class="link-title">General Repos</span> 
          <!--    <span class="fa arrow"></span> -->
            </a> 
            </li>
            
                 <li class="">
            <a href="${createLink(controller:"hom", action:"organization")}">
              <i class="fa fa-dashboard"></i>
              <span class="link-title">Organizational Repos</span> 
         <!--     <span class="fa arrow"></span>  -->
            </a> 
            </li>
            <li class="">
            <a href="${createLink(controller:"hom", action:"accountSettings")}">
              <i class="fa fa-dashboard"></i>
              <span class="link-title">Account Settings</span> 
         <!--     <span class="fa arrow"></span>  -->
            </a> 
            </li>
            
             <g:if test="${session.getAttribute("token_status")=="none"}">
            <li class="">
          <oauth:connect provider="github">Connect to GitHub</oauth:connect>
              
            </li>
            </g:if>
            
            
            
            
            
            
            </ul>
                
                
                
                
                
                
<!--              <li class="">
                <i class="fa fa-angle-right"></i>&nbsp;<oauth:connect provider="github">Connect to Github</oauth:connect>
              </li>
              <li class="">
                <a href="alterne.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Alternative Style
                </a> 
              </li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:;">
              <i class="fa fa-tasks"></i>&nbsp;Components
              <span class="fa arrow"></span> 
            </a> 
            <ul>
              <li class="">
                <a href="icon.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Icon</a> 
              </li>
              <li class="">
                <a href="button.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Button</a> 
              </li>
              <li class="">
                <a href="progress.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Progress</a> 
              </li>
              <li class="">
                <a href="pricing.html">
                  <i class="fa fa-credit-card"></i>&nbsp;Pricing Table</a> 
              </li>
              <li class="">
                <a href="bgimage.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Bg Image</a> 
              </li>
              <li class="">
                <a href="bgcolor.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Bg Color</a> 
              </li>-->
<!--            </ul>
          </li>
          <li class="">
            <a href="javascript:;">
              <i class="fa fa-pencil"></i>&nbsp;Forms
              <span class="fa arrow"></span> 
            </a> 
            <ul>
              <li class="">
                <a href="form-general.html">
                  <i class="fa fa-angle-right"></i>&nbsp;General</a> 
              </li>
              <li class="">
                <a href="form-validation.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Validation</a> 
              </li>
              <li class="">
                <a href="form-wysiwyg.html">
                  <i class="fa fa-angle-right"></i>&nbsp;WYSIWYG</a> 
              </li>
              <li class="">
                <a href="form-wizard.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Wizard &amp; File Upload</a> 
              </li>
            </ul>
          </li>
          <li>
            <a href="table.html">
              <i class="fa fa-table"></i>&nbsp; Tables</a> 
          </li>
          <li>
            <a href="file.html">
              <i class="fa fa-file"></i>&nbsp;File Manager</a> 
          </li>
          <li>
            <a href="typography.html">
              <i class="fa fa-font"></i>&nbsp; Typography</a> 
          </li>
          <li>
            <a href="maps.html">
              <i class="fa fa-map-marker"></i>&nbsp;Maps</a> 
          </li>
          <li>
            <a href="chart.html">
              <i class="fa fa fa-bar-chart-o"></i>&nbsp;Charts</a> 
          </li>
          <li>
            <a href="calendar.html">
              <i class="fa fa-calendar"></i>&nbsp;Calendar</a> 
          </li>
          <li>
            <a href="javascript:;">
              <i class="fa fa-exclamation-triangle"></i>&nbsp;Error Pages
              <span class="fa arrow"></span> 
            </a> 
            <ul>
              <li>
                <a href="403.html">
                  <i class="fa fa-angle-right"></i>&nbsp;403</a> 
              </li>
              <li>
                <a href="404.html">
                  <i class="fa fa-angle-right"></i>&nbsp;404</a> 
              </li>
              <li>
                <a href="405.html">
                  <i class="fa fa-angle-right"></i>&nbsp;405</a> 
              </li>
              <li>
                <a href="500.html">
                  <i class="fa fa-angle-right"></i>&nbsp;500</a> 
              </li>
              <li>
                <a href="503.html">
                  <i class="fa fa-angle-right"></i>&nbsp;503</a> 
              </li>
              <li>
                <a href="offline.html">
                  <i class="fa fa-angle-right"></i>&nbsp;offline</a> 
              </li>
              <li>
                <a href="countdown.html">
                  <i class="fa fa-angle-right"></i>&nbsp;Under Construction</a> 
              </li>
            </ul>
          </li>
          <li>
            <a href="grid.html">
              <i class="fa fa-columns"></i>&nbsp;Grid</a> 
          </li>
          <li>
            <a href="blank.html">
              <i class="fa fa-square-o"></i>&nbsp;Blank Page</a> 
          </li>
          <li class="nav-divider"></li>
          <li>
            <a href="login.html">
              <i class="fa fa-sign-in"></i>&nbsp;Login Page</a> 
          </li>
          <li>
            <a href="javascript:;">Unlimited Level Menu  <span class="fa arrow"></span>  </a> 
            <ul>
              <li>
                <a href="javascript:;">Level 1  <span class="fa arrow"></span>  </a> 
                <ul>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                  <li>
                    <a href="javascript:;">Level 2  <span class="fa arrow"></span>  </a> 
                    <ul>
                      <li> <a href="javascript:;">Level 3</a>  </li>
                      <li> <a href="javascript:;">Level 3</a>  </li>
                      <li>
                        <a href="javascript:;">Level 3  <span class="fa arrow"></span>  </a> 
                        <ul>
                          <li> <a href="javascript:;">Level 4</a>  </li>
                          <li> <a href="javascript:;">Level 4</a>  </li>
                          <li>
                            <a href="javascript:;">Level 4  <span class="fa arrow"></span>  </a> 
                            <ul>
                              <li> <a href="javascript:;">Level 5</a>  </li>
                              <li> <a href="javascript:;">Level 5</a>  </li>
                              <li> <a href="javascript:;">Level 5</a>  </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li> <a href="javascript:;">Level 4</a>  </li>
                    </ul>
                  </li>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                </ul>
              </li>
              <li> <a href="javascript:;">Level 1</a>  </li>
              <li>
                <a href="javascript:;">Level 1  <span class="fa arrow"></span>  </a> 
                <ul>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                  <li> <a href="javascript:;">Level 2</a>  </li>
                </ul>
              </li>-->
          <!--  </ul>
          </li>
        </ul><!-- /#menu -->
      </div><!-- /#left -->
      <div id="content">
        <div class="outer">
          <div class="inner">
            <div class="col-lg-12">
              <g:layoutBody />
              
            </div>
          </div>

          <!-- end .inner -->
        </div>

        <!-- end .outer -->
      </div>

      <!-- end #content -->
    </div><!-- /#wrap -->
    <div id="footer">
      <p>2014 &copy; LF-Tech Admin</p>
    </div>

    <!-- #helpModal -->
    <div id="helpModal" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Modal title</h4>
          </div>
          <div class="modal-body">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
              in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal --><!-- /#helpModal -->
<!--     <script src="${resource(dir: 'assets/js/', file: 'anchorify.js')}"></script>-->







    <script src="${resource(dir: 'assets/lib/', file: 'jquery.min.js')}"></script>
    <script src="${resource(dir: 'assets/lib/bootstrap/js/', file: 'bootstrap.min.js')}"></script>
 
    <script src="${resource(dir: 'assets/js/', file: 'main.min.js')}"></script>
    <script src="${resource(dir: 'assets/lib/', file: 'bootstrap-confirmation.js')}"></script>
     <script src="${resource(dir: 'assets/lib/', file: 'typeahead.js')}"></script>
     <script src="${resource(dir: 'assets/lib/', file: 'customSelect.js')}"></script>
  
   
  
   <script type="text/javascript" src="${resource(dir: 'assets/carousel/js', file: 'jquery.easing.1.3.js')}"></script>
   <script type="text/javascript" src="${resource(dir: 'assets/carousel/js', file: 'jquery.contentcarousel.js')}"></script>
   <script type="text/javascript" src="${resource(dir: 'assets/carousel/js', file: 'jquery.mousewheel.js')}"></script>
   
   <link type="text/css"  href="${resource(dir: 'assets/carousel/css', file: 'style.css')}" rel='stylesheet' media="all" />
   <link type="text/css"  href="${resource(dir: 'assets/carousel/css', file: 'jquery.jscrollpane.css')}" rel='stylesheet' media="all" />
   
   
  
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
<script src="http://gregfranko.com/jquery.selectBoxIt.js/js/jquery.selectBoxIt.min.js"></script>
   
   
   
   <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Coustard:900' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Rochester' rel='stylesheet' type='text/css' />
                <style type="text/css">
                    #githublogo
                    {
                        cursor:pointer;
                        border-radius:2px;
                        padding:2px;
                        opacity:0.5;
                        background:#fff;
                   /*     -webkit-transition: color .4s ease-in-out;
                    -moz-transition: color .4s ease-in-out;
                    -o-transition: color .4s ease-in-out;
                    transition: color .4s ease-in-out; */
                     -webkit-transition: all 1s;
                        -moz-transition: all 1s;
                    transition: all 1s;
                       
                    
                    }
                    #githublogo:hover
                    {
                    background:red;
                    opacity:1;
                    }
      </style>
      
      
    <link class="include" rel="stylesheet" type="text/css"  href="${resource(dir: 'assets/graphs/css', file: 'jquery.jqplot.min.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'assets/graphs/css', file: 'examples.min.css')}" />
    <link type="text/css" rel="stylesheet" href="${resource(dir: 'assets/graphs/css', file: 'shCoreDefault.min.css')}" />
    <link type="text/css" rel="stylesheet" href="${resource(dir: 'assets/graphs/css', file: 'shThemejqPlot.min.css')}" />
  
    <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'excanvas.js')}"></script><![endif]-->
<%--    <script class="include" type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>--%>
<%--    --%>
    
    
    <script class="include" type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'jquery.jqplot.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'shCore.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'shBrushJScript.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'shBrushXml.min.js')}"></script>
<!-- Additional plugins go here -->

    <script class="include" type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'jqplot.barRenderer.min.js')}"></script>
    <script class="include" type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'jqplot.pieRenderer.min.js')}"></script>
    <script class="include" type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'jqplot.categoryAxisRenderer.min.js')}"></script>
    <script class="include" type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'jqplot.pointLabels.min.js')}"></script>
    
     <script type="text/javascript" src="${resource(dir: 'assets/graphs/js', file: 'example.min.js')}"></script>
      
      
     <script src="${resource(dir: 'assets/graphs/js', file:'jplot.donutRenderer.min.js')}" type="text/javascript">
    </script>
    <script src="${resource(dir: 'assets/graphs/js', file:'jplot.pieRenderer.min.js')}" type="text/javascript">
    </script>
    
    
    
    

     
     
  </body>
</html>