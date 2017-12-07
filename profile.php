<?php 
session_start();
if(!isset($_SESSION["user_id"]) || $_SESSION["user_id"]==null){
  print "<script>alert(\"Acceso invalido!\");window.location='index.php';</script>";
}
$user_id = $_SESSION["user_id"];
$user_nombre = $_SESSION["user_nombre"];
$user_permisos = $_SESSION["nivel_permisos"];
?>

<?php 
  if (isset($_REQUEST['cardcode']) && $_REQUEST['cardcode'] != '') {
    $cardcode = $_REQUEST['cardcode'];
    echo "<script type='text/javascript'>cardcode = '$cardcode';</script>";
  }else{
    header("Location: contacts.php");
  }
?>

<!DOCTYPE html>
<html>
  <head>
    <title>Minimal 1.3 - Blank Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="assets/images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap/bootstrap-dropdown-multilevel.css">

    <link href="assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bg-1">

    <!-- Preloader -->
    <div class="mask"><div id="loader"></div></div>
    <!--/Preloader -->

    <!-- Wrap all page content here -->
    <div id="wrap">

      


      <!-- Make page fluid -->
      <div class="row">
        




        <!-- Fixed navbar -->
        <div class="navbar navbar-default navbar-fixed-top navbar-transparent-black mm-fixed-top" role="navigation" id="navbar">
          


          <!-- Branding -->
          <div class="navbar-header col-md-2">
            <a class="navbar-brand" href="index.html">
              <strong>MIN</strong>IMAL
            </a>
            <div class="sidebar-collapse">
              <a href="#">
                <i class="fa fa-bars"></i>
              </a>
            </div>
          </div>
          <!-- Branding end -->


          <!-- .nav-collapse -->
          <div class="navbar-collapse">
                        
            <!-- Page refresh -->
            <ul class="nav navbar-nav refresh">
              <li class="divided">
                <a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
              </li>
            </ul>
            <!-- /Page refresh -->

            <!-- Search -->
            <div class="search" id="main-search">
              <i class="fa fa-search"></i> <input type="text" placeholder="Buscar...">
            </div>
            <!-- Search end -->

            <!-- Quick Actions -->
            <ul class="nav navbar-nav quick-actions">
              
              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-tasks"></i>
                  <span class="label label-transparent-black">2</span>
                </a>

                <ul class="dropdown-menu wide arrow nopadding bordered">
                  <li><h1>You have <strong>2</strong> new tasks</h1></li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Layout</div>
                        <div class="percent">80%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                          <span class="sr-only">40% Complete (success)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Schemes</div>
                        <div class="percent">15%</div>
                      </div>
                      <div class="progress progress-striped active progress-thin">
                        <div class="progress-bar progress-bar-cyan" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                          <span class="sr-only">45% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Forms</div>
                        <div class="percent">5%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 5%">
                          <span class="sr-only">5% Complete (warning)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">JavaScript</div>
                        <div class="percent">30%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                          <span class="sr-only">30% Complete (danger)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Dropdowns</div>
                        <div class="percent">60%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-amethyst" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li><a href="#">Check all tasks <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-envelope"></i>
                  <span class="label label-transparent-black">1</span>
                </a>

                <ul class="dropdown-menu wider arrow nopadding messages">
                  <li><h1>You have <strong>1</strong> new message</h1></li>
                  <li>
                    <a class="cyan" href="#">
                      <div class="profile-photo">
                        <img src="assets/images/ici-avatar.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">Ing. Imrich Kamarel</span>
                        <span class="time">12 mins</span>
                        <div class="message-content">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="green" href="#">
                      <div class="profile-photo">
                        <img src="assets/images/arnold-avatar.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">Arnold Karlsberg</span>
                        <span class="time">1 hour</span>
                        <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <div class="profile-photo">
                        <img src="assets/images/profile-photo.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">John Douey</span>
                        <span class="time">3 hours</span>
                        <div class="message-content">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="red" href="#">
                      <div class="profile-photo">
                        <img src="assets/images/peter-avatar.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">Peter Kay</span>
                        <span class="time">5 hours</span>
                        <div class="message-content">Ut enim ad minim veniam, quis nostrud exercitation</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="orange" href="#">
                      <div class="profile-photo">
                        <img src="assets/images/george-avatar.jpg" alt />
                      </div>
                      <div class="message-info">
                        <span class="sender">George McCain</span>
                        <span class="time">6 hours</span>
                        <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                      </div>
                    </a>
                  </li>


                  <li class="topborder"><a href="#">Check all messages <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-bell"></i>
                  <span class="label label-transparent-black">3</span>
                </a>

                <ul class="dropdown-menu wide arrow nopadding bordered">
                  <li><h1>You have <strong>3</strong> new notifications</h1></li>
                  
                  <li>
                    <a href="#">
                      <span class="label label-green"><i class="fa fa-user"></i></span>
                      New user registered.
                      <span class="small">18 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-red"><i class="fa fa-power-off"></i></span>
                      Server down.
                      <span class="small">27 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-orange"><i class="fa fa-plus"></i></span>
                      New order.
                      <span class="small">36 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-cyan"><i class="fa fa-power-off"></i></span>
                      Server restared.
                      <span class="small">45 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-amethyst"><i class="fa fa-power-off"></i></span>
                      Server started.
                      <span class="small">50 mins</span>
                    </a>
                  </li>

                   <li><a href="#">Check all notifications <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided user" id="current-user">
                <div class="profile-photo">
                  <img src="assets/images/profile-photo.jpg" alt />
                </div>
                <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                  John Douey<i class="fa fa-caret-down"></i>
                </a>
                
                <ul class="dropdown-menu arrow settings">

                  <li>
                    
                    <h3>Backgrounds:</h3>
                    <ul id="color-schemes">
                      <li><a href="#" class="bg-1"></a></li>
                      <li><a href="#" class="bg-2"></a></li>
                      <li><a href="#" class="bg-3"></a></li>
                      <li><a href="#" class="bg-4"></a></li>
                      <li><a href="#" class="bg-5"></a></li>
                      <li><a href="#" class="bg-6"></a></li>
                      <li class="title">Solid Backgrounds:</li>
                      <li><a href="#" class="solid-bg-1"></a></li>
                      <li><a href="#" class="solid-bg-2"></a></li>
                      <li><a href="#" class="solid-bg-3"></a></li>
                      <li><a href="#" class="solid-bg-4"></a></li>
                      <li><a href="#" class="solid-bg-5"></a></li>
                      <li><a href="#" class="solid-bg-6"></a></li>
                    </ul>


                  </li>

                  <li class="divider"></li>



                  <li>

                    <div class="form-group videobg-check">
                      <label class="col-xs-8 control-label">Video BG</label>
                      <div class="col-xs-4 control-label">
                        <div class="onoffswitch greensea small">
                          <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="videobg-check">
                          <label class="onoffswitch-label" for="videobg-check">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                          </label>
                        </div>
                      </div>
                    </div>

                    <ul id="videobackgrounds">
                      <li class="title">Choose type:</li>
                      <li><a href="#" class="video-bg-1"></a></li>
                      <li><a href="#" class="video-bg-2"></a></li>
                      <li><a href="#" class="video-bg-3"></a></li>
                      <li><a href="#" class="video-bg-4"></a></li>
                      <li><a href="#" class="video-bg-5"></a></li>
                      <li><a href="#" class="video-bg-6"></a></li>
                      <li><a href="#" class="video-bg-7"></a></li>
                      <li><a href="#" class="video-bg-8"></a></li>
                      <li><a href="#" class="video-bg-9"></a></li>
                      <li><a href="#" class="video-bg-10"></a></li>
                    </ul>

                  </li>


                  <li class="divider"></li>

                  <li>
                    <a href="#"><i class="fa fa-user"></i> Profile</a>
                  </li>

                  <li>
                    <a href="#"><i class="fa fa-calendar"></i> Calendar</a>
                  </li>

                  <li>
                    <a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-red" id="user-inbox">3</span></a>
                  </li>

                  <li class="divider"></li>

                  <li>
                    <a href="php/logout.php"><i class="fa fa-power-off"></i>Cerrar Session</a>
                  </li>
                </ul>
              </li>

              <li>
                <a href="#mmenu"><i class="fa fa-comments"></i></a>
              </li>
            </ul>
            <!-- /Quick Actions -->



        <!-- sidebar menu -->

                <div id="menu">
                  <!-- Se carga por menu.js y menu.php -->
                </div>

        <!-- /sidebar menu -->





          </div>
          <!--/.nav-collapse -->





        </div>
        <!-- Fixed navbar end -->
        




        
        <!-- Page content -->
        <div id="content" class="col-md-12">
          








          <!-- page header -->
          <div class="pageheader">
            

            <h2><i class="fa fa-file-audio-o" style="line-height: 48px;padding-left: 2px;"></i>Perfil Empresa</h2>

            <div id="alerta"></div>
            

            <div class="breadcrumbs">
              <ol class="breadcrumb">
                          <?php
                            $crumbs = explode("/",$_SERVER["REQUEST_URI"]);
                                 
                                  foreach($crumbs as $crumb){
                                      echo ('<li>'.$crumb.'</li>');
                                  }
                        ?>

              </ol>
            </div>


          </div>
          <!-- /page header -->
          
          




          <!-- content main container -->
          <div class="main">



<!-- CONTENIDO -->
            <!-- row -->
            <div class="row" id="contenido">

              <!-- col 4 -->
              <div class="col-md-4">
              

                <!-- tile -->
                <section class="tile transparent">




                  <!-- tile header -->
                  <div class="tile-header nopadding">               
                    <div class="controls">
                      <a href="#" class="minimize"><i class="fa fa-chevron-down"></i></a>
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile widget -->
                  <div class="tile-widget color transparent-white rounded-top-corners">
                    
                    <div class="user-card">
                      <h3><strong id='cardname'></strong></h3>
                      <ul class="profile-controls inline">
                        <li class="mailto"><a href="#"><i class="fa fa-envelope"></i> Send Email</a></li>
                        <li class="avatar"><img src="assets/images/profile-photo.jpg" alt class="img-circle profile-photo"></li>
                        <li class="callto" id="make-call">
                          <a href="#">
                            <span class="call">Call <i class="fa fa-phone"></i></span>
                            <span class="calling">Calling... <i class="fa fa-microphone"></i></span>
                          </a>
                        </li>
                      </ul>
                      <h5>Chief Designer</h5>
                      <div class="social-networks">
                        <a href="#"><i class="fa fa-facebook-square"></i></a>
                        <a href="#"><i class="fa fa-google-plus-square"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-github-square"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                      </div>
                    </div>                       

                  </div>
                  <!-- /tile widget -->

                  <!-- tile body -->
                  <div class="tile-body color transparent-black textured rounded-bottom-corners">
                    <ul class="inline divided social-feed">
                      <li>
                        <h4>126</h4>
                        Tweets
                      </li>
                      <li>
                        <h4>324</h4>
                        Following
                      </li>
                      <li>
                        <h4>1254</h4>
                        Followers
                      </li>
                    </ul>
                  </div>
                  <!-- /tile body -->
                


                </section>
                <!-- /tile -->



                <!-- tile -->
                <section class="tile color transparent-black">




                  <!-- tile header -->
                  <div class="tile-header">
                  <h1><strong>About</strong> Me</h1>               
                    <div class="controls">
                      <a href="#" class="minimize"><i class="fa fa-chevron-down"></i></a>
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->


                  <!-- tile body -->
                  <div class="tile-body padding-top-0">
                    <p class="about-me">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.</p>
                  </div>
                  <!-- /tile body -->
                


                </section>
                <!-- /tile -->



                <!-- tile -->
                <section class="tile color transparent-white">




                  <!-- tile header -->
                  <div class="tile-header">
                  <h1><strong>Friend</strong> List</h1>               
                    <div class="controls">
                      <a href="#" class="minimize"><i class="fa fa-chevron-down"></i></a>
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->


                  <!-- tile body -->
                  <div class="tile-body">
                    <ul class="friend-list">
                
                      <li>
                        <div class="media">
                          <a class="pull-left profile-photo" href="#">
                            <img class="media-object img-circle" src="assets/images/ici-avatar.jpg" alt="">
                          </a>
                          <div class="media-body">
                            <h6 class="media-heading">Ing. Imrich Kamarel</h6>
                            <button class="btn btn-blue btn-sm">Unfollow</button>
                          </div>
                        </div>
                      </li>

                      <li>
                        <div class="media">                      
                          <a class="pull-left profile-photo" href="#">
                            <img class="media-object img-circle" src="assets/images/arnold-avatar.jpg" alt="">
                          </a>
                          <div class="media-body">
                            <h6 class="media-heading">Arnold Karlsberg</h6>
                            <button class="btn btn-default btn-sm">Follow</button>
                          </div>

                        </div>
                      </li>

                      <li>
                        <div class="media">
                          <a class="pull-left profile-photo" href="#">
                            <img class="media-object img-circle" src="assets/images/peter-avatar.jpg" alt="">
                          </a>
                          <div class="media-body">
                            <h6 class="media-heading">Peter Kay</h6>
                            <button class="btn btn-default btn-sm">Follow</button>
                          </div>
                        </div>
                      </li>

                      <li>
                        <div class="media">
                          <a class="pull-left profile-photo" href="#">
                            <img class="media-object img-circle" src="assets/images/george-avatar.jpg" alt="">
                          </a>
                          <div class="media-body">
                            <h6 class="media-heading">George McCain</h6>
                            <button class="btn btn-blue btn-sm">Unfollow</button>
                          </div>
                        </div>
                      </li>

                    </ul>
                  </div>
                  <!-- /tile body -->
                


                </section>
                <!-- /tile -->




                <!-- tile -->
                <section class="tile">




                  <!-- tile header -->
                  <div class="tile-header">
                  <h1><strong>My</strong> Projects</h1>               
                    <div class="controls">
                      <a href="#" class="minimize"><i class="fa fa-chevron-down"></i></a>
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->


                  <!-- tile body -->
                  <div class="tile-body">
                    <ul class="project-list">
                
                      <li>
                        <div class="col-md-3 project-name">
                          Minimal
                        </div>
                        <div class="col-md-9">
                          <div class="progress-info">
                            <div class="percent">20%</div>
                          </div>
                          <div class="progress">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                              <span class="sr-only">20% Complete</span>
                            </div>
                          </div>
                        </div>
                      </li>

                      <li>
                        <div class="col-md-3 project-name">
                          Minoral
                        </div>
                        <div class="col-md-9">
                          <div class="progress-info">
                            <div class="percent">36%</div>
                          </div>
                          <div class="progress">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 36%">
                              <span class="sr-only">36% Complete</span>
                            </div>
                          </div>
                        </div>
                      </li>

                      <li>
                        <div class="col-md-3 project-name">
                          The Kamarel
                        </div>
                        <div class="col-md-9">
                          <div class="progress-info">
                            <div class="percent">80%</div>
                          </div>
                          <div class="progress">
                            <div class="progress-bar progress-bar-greensea" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                              <span class="sr-only">80% Complete</span>
                            </div>
                          </div>
                        </div>
                      </li>

                      <li>
                        <div class="col-md-3 project-name">
                          Themeforest
                        </div>
                        <div class="col-md-9">
                          <div class="progress-info">
                            <div class="percent">5%</div>
                          </div>
                          <div class="progress">
                            <div class="progress-bar progress-bar-drank" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 5%">
                              <span class="sr-only">5% Complete</span>
                            </div>
                          </div>
                        </div>
                      </li>


                    </ul>
                  </div>
                  <!-- /tile body -->
                


                </section>
                <!-- /tile -->
                


              </div>
              <!-- /col 4 -->

<!-- col 8 -->
              <div class="col-md-8">
              

                
                <!-- tile -->
                <section class="tile transparent">

                  <!-- tile widget -->
                  <div class="tile-widget nopadding color transparent-black rounded-top-corners">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs tabdrop">
                      <li class="active"><a href="#feed-tab" data-toggle="tab">Comentarios</a></li>
                      <li><a href="#tasks-tab" data-toggle="tab">Tasks</a></li>
                      <li><a href="#settings-tab" data-toggle="tab">Settings</a></li>
                    </ul>
                    <!-- / Nav tabs -->
                  </div>
                  <!-- /tile widget -->

                  <!-- tile body -->
                  <div class="tile-body tab-content rounded-bottom-corners">

                    <!-- Tab panes -->                 
                    <div id="feed-tab" class="tab-pane fade in active">
                      
                  <form id="form_coments" enctype="multipart/form-data">
                      <div class="feed-form">
                        <textarea class="form-control" name="comentarios" id="comentarios" placeholder="Escribir un comentario..." rows="5"></textarea>
                        <div id="errortexto"></div>
                        <div class="post-toolbar">
                          <a href="#" title="Add File" id="adjunto" class="btn btn-default"><i class="fa fa-paperclip"></i></a>
                          <a href="#" title="Add File" id="adjuntono" class="btn btn-danger"><i class="fa fa-paperclip"></i></a>
                          <a href="#"  title="Guardar" id="guardar" class="pull-right btn btn-success"><i class="fa fa-save"></i></a>
                          <input type="hidden" name="cardcode" value="<?php echo $cardcode; ?>">
                          <input type="hidden" name="user_id" value="<?php echo $user_id; ?>">
                        </div>
                        <br>
                        <div id="archivos">
                                 <input type="file" id="fotos" name="fotos" multiple="multiple"/>
                                       <ul id="nombres">
                                      <!-- Se llena por profile.js al cambiar el input file -->
                                        </ul>
                        </div>
                      </div>
                  </form>

                      <div class="feed-list">
                       
                        <article class="feed-post">
        
                       
                         <div class="feed-container">
                         
                            
                            <footer>

                              
                              <ul class="comments" id="comments">
                              
                                  <!-- se carga desde php/consulta_clientes_comentarios.php -->
                                                                               
                                
                              </ul>
                                
                            </footer>
                                                        
                          </div>
                          
                        </article>


                      </div>

                    </div>

                    <div id="tasks-tab" class="tab-pane fade in">
                      
                      <div class="btn-group btn-group-sm">
                        <button type="button" class="btn btn-default"><i class="fa fa-angle-left"></i></button>
                        <button type="button" class="btn btn-default"><i class="fa fa-angle-right"></i></button>
                      </div>

                      <h4 class="inline"><strong>April 10</strong>, 2014</h4>

                      <button type="button" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Add Task</button>


                      <ol class="task-list" id="task-list">

                        <!-- today tasks -->
                        <li class="group">
                          <div class="pointer"></div>
                          <h4><strong>Today</strong> April 10, 2014</h4>

                          <!-- tasks -->
                          <div class="task-group" id="accordion">

                            <!-- task -->
                            <div class="task panel">

                              <div class="priority priority-high"></div>

                              <div class="panel-heading">
                                
                                <div class="task-controls">
                                  <div class="checkbox">
                                    <input type="checkbox" id="task01chck">
                                    <label for="task01chck"></label>
                                  </div>

                                  <a href="#" class="mark marked"><i class="fa fa-star-o"></i></a>
                                </div>

                                <div class="heading">
                                  <h5>Responsive tweaks on another admin template</h5>
                                  <small>Added: April 06, 2014</small>
                                </div>

                                <span class="label label-red">high</span>

                                <a class="task-toggle" data-toggle="collapse" data-target="#task01" data-parent=".task-group" href="#">
                                  <i class="fa fa-angle-down"></i>
                                </a>

                              </div>

                              <div id="task01" class="collapse">
                                <div class="panel-body task-content">
                                  <div class="row">
                                    <div class="col-lg-10 col-md-8">
                                      <ul class="media-list">
                                        <li class="media">
                                          <i class="pull-left fa fa-thumb-tack"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>ID:</strong> #3694</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Due Date:</strong> April 10, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-user"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Assigned By:</strong> Ing. Imrich Kamarel</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Created At:</strong> April 03, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-info-circle"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Additional Info:</strong></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                          </div>
                                        </li>
                                      </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 task-controls">
                                      <button class="btn btn-red btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                      <button class="btn btn-blue btn-sm"><i class="fa fa-pencil"></i> Edit</button>
                                      <button class="btn btn-green btn-sm"><i class="fa fa-check"></i> Complete</button>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>
                            <!-- /task -->

                            <!-- task -->
                            <div class="task panel active">

                              <div class="priority priority-low"></div>

                              <div class="panel-heading">
                                
                                <div class="task-controls">
                                  <div class="checkbox">
                                    <input type="checkbox" id="task02chck">
                                    <label for="task02chck"></label>
                                  </div>

                                  <a href="#" class="mark"><i class="fa fa-star-o"></i></a>
                                </div>

                                <div class="heading">
                                  <h5>Another one task in our task list</h5>
                                  <small>Added: April 03, 2014</small>
                                </div>

                                <span class="label label-green">low</span>

                                <a class="task-toggle" data-toggle="collapse" data-target="#task02" data-parent=".task-group" href="#">
                                  <i class="fa fa-angle-down"></i>
                                </a>

                              </div>

                              <div id="task02" class="collapse in">
                                <div class="panel-body task-content">
                                  <div class="row">
                                    <div class="col-lg-10 col-md-8">
                                      <ul class="media-list">
                                        <li class="media">
                                          <i class="pull-left fa fa-thumb-tack"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>ID:</strong> #3694</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Due Date:</strong> April 10, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-user"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Assigned By:</strong> Ing. Imrich Kamarel</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Created At:</strong> April 03, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-info-circle"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Additional Info:</strong></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                          </div>
                                        </li>
                                      </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 task-controls">
                                      <button class="btn btn-red btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                      <button class="btn btn-blue btn-sm"><i class="fa fa-pencil"></i> Edit</button>
                                      <button class="btn btn-green btn-sm"><i class="fa fa-check"></i> Complete</button>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>
                            <!-- /task -->


                            <!-- task -->
                            <div class="task panel">

                              <div class="priority priority-medium"></div>

                              <div class="panel-heading">
                                
                                <div class="task-controls">
                                  <div class="checkbox">
                                    <input type="checkbox" id="task03chck">
                                    <label for="task03chck"></label>
                                  </div>

                                  <a href="#" class="mark"><i class="fa fa-star-o"></i></a>
                                </div>

                                <div class="heading">
                                  <h5>Another one task in our task list</h5>
                                  <small>Added: April 02, 2014</small>
                                </div>

                                <span class="label label-orange">medium</span>

                                <a class="task-toggle" data-toggle="collapse" data-target="#task03" data-parent=".task-group" href="#">
                                  <i class="fa fa-angle-down"></i>
                                </a>

                              </div>

                              <div id="task03" class="collapse">
                                <div class="panel-body task-content">
                                  <div class="row">
                                    <div class="col-lg-10 col-md-8">
                                      <ul class="media-list">
                                        <li class="media">
                                          <i class="pull-left fa fa-thumb-tack"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>ID:</strong> #3694</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Due Date:</strong> April 10, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-user"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Assigned By:</strong> Ing. Imrich Kamarel</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Created At:</strong> April 03, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-info-circle"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Additional Info:</strong></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                          </div>
                                        </li>
                                      </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 task-controls">
                                      <button class="btn btn-red btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                      <button class="btn btn-blue btn-sm"><i class="fa fa-pencil"></i> Edit</button>
                                      <button class="btn btn-green btn-sm"><i class="fa fa-check"></i> Complete</button>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>
                            <!-- /task -->


                          </div>
                          <!-- tasks -->


                        </li>
                        <!-- /today tasks -->



                        <!-- completed tasks -->
                        <li class="group completed">
                          <h5><i class="fa fa-check-circle-o"></i> <strong>Completed</strong> Tasks</h5>

                          <!-- tasks -->
                          <div class="task-group" id="accordion02">

                            <!-- task -->
                            <div class="task panel">

                              <div class="priority priority-normal"></div>

                              <div class="panel-heading">
                                
                                <div class="task-controls">
                                  <div class="checkbox">
                                    <input type="checkbox" id="task04chck" checked>
                                    <label for="task04chck"></label>
                                  </div>

                                  <a href="#" class="mark marked"><i class="fa fa-star-o"></i></a>
                                </div>

                                <div class="heading">
                                  <h5>Another one completed task in our task list</h5>
                                  <small>Added: April 06, 2014</small>
                                </div>

                                <span class="label">normal</span>

                                <a class="task-toggle" data-toggle="collapse" data-target="#task04" data-parent=".task-group" href="#">
                                  <i class="fa fa-angle-down"></i>
                                </a>

                              </div>

                              <div id="task04" class="collapse">
                                <div class="panel-body task-content">
                                  <div class="row">
                                    <div class="col-lg-10 col-md-8">
                                      <ul class="media-list">
                                        <li class="media">
                                          <i class="pull-left fa fa-thumb-tack"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>ID:</strong> #3694</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Due Date:</strong> April 10, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-user"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Assigned By:</strong> Ing. Imrich Kamarel</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Created At:</strong> April 03, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-info-circle"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Additional Info:</strong></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                          </div>
                                        </li>
                                      </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 task-controls">
                                      <button class="btn btn-red btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                      <button class="btn btn-blue btn-sm"><i class="fa fa-pencil"></i> Edit</button>
                                      <button class="btn btn-green btn-sm"><i class="fa fa-check"></i> Complete</button>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>
                            <!-- /task -->


                          </div>
                          <!-- tasks -->


                        </li>
                        <!-- /completed tasks -->



                        <!-- yesterday tasks -->
                        <li class="group">
                          <div class="pointer"></div>
                          <h4><strong>Yesterday</strong> April 09, 2014</h4>

                          <!-- tasks -->
                          <div class="task-group" id="accordion03">

                            <!-- task -->
                            <div class="task panel">

                              <div class="priority priority-medium"></div>

                              <div class="panel-heading">
                                
                                <div class="task-controls">
                                  <div class="checkbox">
                                    <input type="checkbox" id="task05chck">
                                    <label for="task05chck"></label>
                                  </div>

                                  <a href="#" class="mark marked"><i class="fa fa-star-o"></i></a>
                                </div>

                                <div class="heading">
                                  <h5>Another one task in our task list</h5>
                                  <small>Added: April 02, 2014</small>
                                </div>

                                <span class="label label-orange">medium</span>

                                <a class="task-toggle" data-toggle="collapse" data-target="#task05" data-parent=".task-group" href="#">
                                  <i class="fa fa-angle-down"></i>
                                </a>

                              </div>

                              <div id="task05" class="collapse">
                                <div class="panel-body task-content">
                                  <div class="row">
                                    <div class="col-lg-10 col-md-8">
                                      <ul class="media-list">
                                        <li class="media">
                                          <i class="pull-left fa fa-thumb-tack"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>ID:</strong> #3694</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Due Date:</strong> April 10, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-user"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Assigned By:</strong> Ing. Imrich Kamarel</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Created At:</strong> April 03, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-info-circle"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Additional Info:</strong></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                          </div>
                                        </li>
                                      </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 task-controls">
                                      <button class="btn btn-red btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                      <button class="btn btn-blue btn-sm"><i class="fa fa-pencil"></i> Edit</button>
                                      <button class="btn btn-green btn-sm"><i class="fa fa-check"></i> Complete</button>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>
                            <!-- /task -->


                          </div>
                          <!-- tasks -->


                        </li>
                        <!-- /today tasks -->



                        <!-- completed tasks -->
                        <li class="group completed">
                          <h5><i class="fa fa-check-circle-o"></i> <strong>Completed</strong> Tasks</h5>

                          <!-- tasks -->
                          <div class="task-group" id="accordion04">

                            <!-- task -->
                            <div class="task panel">

                              <div class="priority priority-normal"></div>

                              <div class="panel-heading">
                                
                                <div class="task-controls">
                                  <div class="checkbox">
                                    <input type="checkbox" id="task06chck" checked>
                                    <label for="task06chck"></label>
                                  </div>

                                  <a href="#" class="mark marked"><i class="fa fa-star-o"></i></a>
                                </div>

                                <div class="heading">
                                  <h5>Another one completed task in our task list</h5>
                                  <small>Added: April 06, 2014</small>
                                </div>

                                <span class="label label-default">normal</span>

                                <a class="task-toggle" data-toggle="collapse" data-target="#task06" data-parent=".task-group" href="#">
                                  <i class="fa fa-angle-down"></i>
                                </a>

                              </div>

                              <div id="task06" class="collapse">
                                <div class="panel-body task-content">
                                  <div class="row">
                                    <div class="col-lg-10 col-md-8">
                                      <ul class="media-list">
                                        <li class="media">
                                          <i class="pull-left fa fa-thumb-tack"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>ID:</strong> #3694</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Due Date:</strong> April 10, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-user"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Assigned By:</strong> Ing. Imrich Kamarel</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Created At:</strong> April 03, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-info-circle"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Additional Info:</strong></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                          </div>
                                        </li>
                                      </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 task-controls">
                                      <button class="btn btn-red btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                      <button class="btn btn-blue btn-sm"><i class="fa fa-pencil"></i> Edit</button>
                                      <button class="btn btn-green btn-sm"><i class="fa fa-check"></i> Complete</button>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>
                            <!-- /task -->



                            <!-- task -->
                            <div class="task panel">

                              <div class="priority priority-high"></div>

                              <div class="panel-heading">
                                
                                <div class="task-controls">
                                  <div class="checkbox">
                                    <input type="checkbox" id="task07chck" checked>
                                    <label for="task07chck"></label>
                                  </div>

                                  <a href="#" class="mark marked"><i class="fa fa-star-o"></i></a>
                                </div>

                                <div class="heading">
                                  <h5>Another one completed task in our task list</h5>
                                  <small>Added: April 06, 2014</small>
                                </div>

                                <span class="label label-red">high</span>

                                <a class="task-toggle" data-toggle="collapse" data-target="#task07" data-parent=".task-group" href="#">
                                  <i class="fa fa-angle-down"></i>
                                </a>

                              </div>

                              <div id="task07" class="collapse">
                                <div class="panel-body task-content">
                                  <div class="row">
                                    <div class="col-lg-10 col-md-8">
                                      <ul class="media-list">
                                        <li class="media">
                                          <i class="pull-left fa fa-thumb-tack"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>ID:</strong> #3694</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Due Date:</strong> April 10, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-user"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Assigned By:</strong> Ing. Imrich Kamarel</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-clock-o"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Created At:</strong> April 03, 2014</h5>
                                          </div>
                                        </li>
                                        <li class="media">
                                          <i class="pull-left fa fa-info-circle"></i>
                                          <div class="media-body">
                                            <h5 class="media-heading"><strong>Additional Info:</strong></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                          </div>
                                        </li>
                                      </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-4 task-controls">
                                      <button class="btn btn-red btn-sm"><i class="fa fa-trash-o"></i> Delete</button>
                                      <button class="btn btn-blue btn-sm"><i class="fa fa-pencil"></i> Edit</button>
                                      <button class="btn btn-green btn-sm"><i class="fa fa-check"></i> Complete</button>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>
                            <!-- /task -->


                          </div>
                          <!-- tasks -->


                        </li>
                        <!-- /completed tasks -->


                        <li class="more">
                          <div class="pointer"></div>
                          <button class="btn btn-default">Load More</button>
                        </li>
                                  

                      </ol>

                    </div>


                    <div id="settings-tab" class="tab-pane fade in">
                      

                      <form class="profile-settings">
                        
                        <div class="row">
                          <div class="form-group col-md-12 legend">
                            <h4><strong>Personal</strong> Settings</h4>
                            <p>Your personal account settings</p>
                          </div>
                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="first-name">First Name</label>
                            <input type="text" class="form-control" id="first-name" value="John">
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="last-name">Last Name</label>
                            <input type="text" class="form-control" id="last-name" value="Douey">
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="address1">Address Line 1</label>
                            <input type="text" class="form-control" id="address1" value="Vajnorska 215">
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="address2">Address Line 2</label>
                            <input type="text" class="form-control" id="address2" value="IBM Tower, floor #32">
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-4">
                            <label for="city">City</label>
                            <input type="text" class="form-control" id="city" value="Bratislava">
                          </div>

                          <div class="form-group col-sm-4">
                            <label for="state">State/Provice</label>
                            <input type="text" class="form-control" id="state" value="Bratislava">
                          </div>

                          <div class="form-group col-sm-4">
                            <label for="zip">Zip Code</label>
                            <input type="text" class="form-control" id="zip" value="215 62">
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="email">E-mail</label>
                            <input type="email" class="form-control" id="email" value="johny.d@tattek.com" readonly>
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="country">Country</label>
                            <select class="chosen-select form-control" id="country">
                              <option>Slovakia</option>
                              <option>Czech Republic</option>
                              <option>Poland</option>
                              <option>Hungary</option>
                              <option>Austria</option>
                            </select>
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="phone">Phone</label>
                            <input type="text" class="form-control" id="phone" value="+(421) 903 669 478">
                            <span class="help-block">+(421) 999 999 999</span>
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="avatar">Avatar</label>
                            <div class="input-group">
                              <span class="input-group-btn">
                                <span class="btn btn-primary btn-file">
                                  <i class="fa fa-upload"></i><input type="file" multiple="">
                                </span>
                              </span>
                              <input type="text" class="form-control" readonly="" id="avatar">
                            </div>
                            <span class="help-block">Allowed files: gif, png, jpg. Max file size 1Mb</span>
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="website">Website</label>
                            <input type="text" class="form-control" id="website" value="http://tattek.com/minimal">
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="bio">Bio</label>
                            <textarea class="form-control" id="bio" rows="4">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was</textarea>
                          </div>

                        </div>

                        <div class="row">
                          <div class="form-group col-md-12 legend">
                            <h4><strong>Social</strong> Settings</h4>
                            <p>Connect with your social profiles</p>
                          </div>
                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="facebook">Facebook</label>
                            <input type="text" class="form-control" id="facebook">
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="google-plus">Google+</label>
                            <input type="text" class="form-control" id="google-plus">
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="pinterest">Pinterest</label>
                            <input type="text" class="form-control" id="pinterest">
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="flickr">Flickr</label>
                            <input type="text" class="form-control" id="flickr">
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="dribbble">Dribbble</label>
                            <input type="text" class="form-control" id="dribbble">
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="github">GitHub</label>
                            <input type="text" class="form-control" id="github">
                          </div>

                        </div>

                        <div class="row">
                          <div class="form-group col-md-12 legend">
                            <h4><strong>Security</strong> Settings</h4>
                            <p>Secure your account</p>
                          </div>
                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="username" value="Johny.d" readonly>
                          </div>


                          <div class="form-group col-sm-6">
                            <label for="password">Current Password</label>
                            <input type="password" class="form-control" id="password" value="secretpassword" readonly>
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="new-password">New Password</label>
                            <input type="password" class="form-control" id="new-password">
                          </div>

                          <div class="form-group col-sm-6">
                            <label for="new-password-repeat">New Password Repeat</label>
                            <input type="password" class="form-control" id="new-password-repeat">
                          </div>

                        </div>

                        <div class="row">

                          <div class="form-group col-sm-6">
                            <label for="new-password">Profile Visibility</label>
                            <div class="radio">
                              <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                              <label for="optionsRadios1">For Everyone</label>
                            </div>
                            <div class="radio">
                              <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                              <label for="optionsRadios2">For Friends</label>
                            </div>
                            <div class="radio">
                              <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
                              <label for="optionsRadios3">Hidden for Everyone</label>
                            </div>
                          </div>

                          <div class="form-group col-sm-6">
                            <ul class="nolisttypes inlineSelect rowSelect">
                              <li class="title"><h5>Notifications:</h5></li>
                              <li>
                                <div class="checkbox">
                                  <input type="checkbox" checked="checke" value="1" id="opt01">
                                  <label for="opt01">New task notifications</label>
                                </div>
                              </li>
                              <li>
                                <div class="checkbox">
                                  <input type="checkbox" checked="checked" value="1" id="opt02">
                                  <label for="opt02">New friend request notifications</label>
                                </div>
                              </li>
                              <li>
                                <div class="checkbox">
                                  <input type="checkbox" value="1" id="opt03">
                                  <label for="opt03">New message nofifications</label>
                                </div>
                              </li>
                            </ul>
                          </div>

                        </div>

                      </form>
                    

                    </div>
                    <!-- / Tab panes -->

                  </div>
                  <!-- /tile body -->
                


                </section>
                <!-- /tile -->
                


              </div>
              <!-- /col 8 -->


              
            </div>
            <!-- /row -->
			
<!-- CONTENIDO -->
          


          </div>
          <!-- /content container -->






        </div>
        <!-- Page content end -->




        <div id="mmenu" class="right-panel">
          <!-- Nav tabs -->
          <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#mmenu-users" data-toggle="tab"><i class="fa fa-users"></i></a></li>
            <li class=""><a href="#mmenu-history" data-toggle="tab"><i class="fa fa-clock-o"></i></a></li>
            <li class=""><a href="#mmenu-friends" data-toggle="tab"><i class="fa fa-heart"></i></a></li>
            <li class=""><a href="#mmenu-settings" data-toggle="tab"><i class="fa fa-gear"></i></a></li>
          </ul>
              
          <!-- Tab panes -->
          <div class="tab-content">
            <div class="tab-pane active" id="mmenu-users">
              <h5><strong>Online</strong> Users</h5>

              <ul class="users-list">
                
                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Ulaanbaatar, Mongolia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Bratislava, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/peter-avatar.jpg" alt>

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Peter <strong>Kay</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Kosice, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/george-avatar.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">George <strong>McCain</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Prague, Czech Republic</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar1.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Lucius <strong>Cashmere</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Wien, Austria</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar2.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Jesse <strong>Phoenix</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Berlin, Germany</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>

              <h5><strong>Offline</strong> Users</h5>

              <ul class="users-list">
                
                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar4.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Dell <strong>MacApple</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Paris, France</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar5.jpg" alt>
                    </a>

                    <div class="media-body">
                      <h6 class="media-heading">Roger <strong>Flopple</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Rome, Italia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                    
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar6.jpg" alt>

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Nico <strong>Vulture</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Kyjev, Ukraine</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar7.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Bobby <strong>Socks</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Moscow, Russia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar8.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Anna <strong>Opichia</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Budapest, Hungary</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>

            </div>

            <div class="tab-pane" id="mmenu-history">
              <h5><strong>Chat</strong> History</h5>

              <ul class="history-list">
                
                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/peter-avatar.jpg" alt>

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Peter <strong>Kay</strong></h6>
                      <small>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit </small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>
                
            </div>

            <div class="tab-pane" id="mmenu-friends">
              <h5><strong>Friends</strong> List</h5>
                <ul class="favourite-list">
                
                <li class="online">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/arnold-avatar.jpg" alt>
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Bratislava, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar8.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Anna <strong>Opichia</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Budapest, Hungary</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/random-avatar1.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Lucius <strong>Cashmere</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Wien, Austria</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="assets/images/ici-avatar.jpg" alt>
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Ulaanbaatar, Mongolia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>
            </div>

            <div class="tab-pane pane-settings" id="mmenu-settings">
              <h5><strong>Chat</strong> Settings</h5>

              <ul class="settings">
               
                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Offline Users</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-offline" checked="">
                        <label class="onoffswitch-label" for="show-offline">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Fullname</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-fullname">
                        <label class="onoffswitch-label" for="show-fullname">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">History Enable</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-history" checked="">
                        <label class="onoffswitch-label" for="show-history">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Locations</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-location" checked="">
                        <label class="onoffswitch-label" for="show-location">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Notifications</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-notifications">
                        <label class="onoffswitch-label" for="show-notifications">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Undread Count</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-unread" checked="">
                        <label class="onoffswitch-label" for="show-unread">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

              </ul>
                
            </div><!-- tab-pane -->
              
          </div><!-- tab-content -->
        </div>






      </div>
      <!-- Make page fluid-->




    </div>
    <!-- Wrap all page content end -->



    <section class="videocontent" id="video"></section>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery_minimal.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="assets/js/vendor/bootstrap/bootstrap-dropdown-multilevel.js"></script>
    <script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>
    <script type="text/javascript" src="assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="assets/js/vendor/blockui/jquery.blockUI.js"></script>

    <script src="js/menu.js"></script>
    <script src="js/profile.js"></script>


  </body>
</html>
      