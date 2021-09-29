<!DOCTYPE html>
<html lang="en"
      dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible"
              content="IE=edge">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Signup</title>

        <!-- Custom Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500%7CRoboto:400,500&display=swap"
              rel="stylesheet">

        <!-- Perfect Scrollbar -->
        <link type="text/css"
              href="assets/vendor/perfect-scrollbar.css"
              rel="stylesheet">

        <!-- Material Design Icons -->
        <link type="text/css"
              href="assets/css/material-icons.css"
              rel="stylesheet">

        <!-- Font Awesome Icons -->
        <link type="text/css"
              href="assets/css/fontawesome.css"
              rel="stylesheet">

        <!-- Preloader -->
        <link type="text/css"
              href="assets/vendor/spinkit.css"
              rel="stylesheet">

        <!-- App CSS -->
        <link type="text/css"
              href="assets/css/app.css"
              rel="stylesheet">

    </head>

    <body class="login">

        <div class="d-flex align-items-center"
             style="min-height: 100vh">
            <div class="col-sm-8 col-md-6 col-lg-4 mx-auto"
                 style="min-width: 300px;">
                <div class="d-flex justify-content-center mb-5 navbar-light">
                    <!-- Brand -->
                    <a href="Home.jsp"
                       class="navbar-brand m-0">
                        QuizPractice
                    </a>
                </div>
                
                <!--Forget Pass Form-->
                <div class="card navbar-shadow">
                    <div class="card-header text-center">
                        <h4 class="card-title">Forgot Password?</h4>
                        <p class="card-subtitle">Recover your account password</p>
                    </div>
                    <div class="card-body">
                        <!--Notification-->
                        <div class="alert alert-light border-1 border-left-3 border-left-primary d-flex"
                             role="alert">
                            <i class="material-icons text-success mr-3">check_circle</i>
                            <div class="text-body">An email with password reset instructions has been sent to your email address, if it exists on our system.</div>
                        </div>
                        
                        <!--Email user-->
                        <form action="ForgotPassword"
                              novalidate
                              method="post">
                            <div class="form-group">
                                <label class="form-label"
                                       for="email">Email address:</label>
                                <div class="input-group input-group-merge">
                                    <input id="email"
                                           type="email"
                                           required=""
                                           name="email_SendNewPass"
                                           class="form-control form-control-prepended"
                                           placeholder="Your email address">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <span class="far fa-envelope"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Submit-->
                            <button type="submit"
                                    class="btn btn-primary btn-block">Send instructions</button>
                        </form>
                    </div>
                    
                    <!--Login-->
                    <div class="card-footer text-center text-black-50">Remember your password? <a href="Login.jsp">Login</a></div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="assets/vendor/jquery.min.js"></script>

        <!-- Bootstrap -->
        <script src="assets/vendor/popper.min.js"></script>
        <script src="assets/vendor/bootstrap.min.js"></script>

        <!-- Perfect Scrollbar -->
        <script src="assets/vendor/perfect-scrollbar.min.js"></script>

        <!-- MDK -->
        <script src="assets/vendor/dom-factory.js"></script>
        <script src="assets/vendor/material-design-kit.js"></script>

        <!-- App JS -->
        <script src="assets/js/app.js"></script>

        <!-- Highlight.js -->
        <script src="assets/js/hljs.js"></script>

    </body>

</html>