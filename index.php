<!DOCTYPE html>
<html>
  <head>
    <title>TRUST CORPORATION - INTRANET</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="assets/images/trust-favicon.png" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
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
    <!-- Wrap all page content here -->
    <div id="wrap">
      <!-- Make page fluid -->
      <div class="row">
        <!-- Page content -->
        <div id="content" class="col-md-12 full-page login">


          <div class="inside-block">
            <img src="assets/images/Logo_Trust_Corporation.png" width="70%" alt class="logo">
            <h1><strong>TRUST CORPORATION</strong> S.A.S.</h1>
            <h5>INTRANET</h5>

            <form id="form-signin" class="form-signin" action="php/login.php" method="POST">
              <section>
                <div class="input-group">
                  <input type="text" class="form-control" name="username" id="username" placeholder="Usuario">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <div class="input-group">
                  <input type="password" class="form-control" name="password" placeholder="Contraseña">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
              </section>
              <section class="controls">
                <div class="checkbox check-transparent">
                  <input type="checkbox" value="1" id="remember" checked>
                  <label for="remember">He leído y estoy de acuerdo con los
    términos y condiciones y aviso de privacidad</label>
                </div>
              
              </section>
              <section class="log-in">
                <button class="btn btn-greensea">Inicio</button>
               </section>
            </form>
          </div>


        </div>
        <!-- /Page content -->  
      </div>
    </div>
    <!-- Wrap all page content end -->
    <script src="js/jquery_minimal.js"></script>
    <script src="js/index.js"></script>
  </body>
</html>
      