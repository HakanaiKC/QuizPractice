<!DOCTYPE html>
<html lang="en"
      dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible"
              content="IE=edge">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>

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
                    <a href="Home"
                       class="navbar-brand m-0">
                        QuizPractice
                    </a>
                </div>
                
                <!--Login Form-->
                <div class="card navbar-shadow">
                    <div class="card-header text-center">
                        <h4 class="card-title">Login</h4>
                        <p class="card-subtitle">Access your account</p>
                    </div>
                                        
                    <div class="card-body">
                        <!--Form-->
                        <form action="Login"
                              method="post">
                            
                            <!--Email-->
                            <div class="form-group">
                                <label class="form-label"
                                       for="email">Your email address:</label>
                                <div class="input-group input-group-merge">
                                    <input id="email"
                                           type="email"
                                           name="email"
                                           value="${email}"
                                           required
                                           class="form-control form-control-prepended"
                                           placeholder="Your email address">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <span class="far fa-envelope"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Pass-->
                            <div class="form-group">
                                <label class="form-label"
                                       for="password">Your password:</label>
                                <div class="input-group input-group-merge">
                                    <input id="password"
                                           type="password"
                                           name="pass"
                                           required
                                           value="${pass}"
                                           class="form-control form-control-prepended"
                                           placeholder="Your password"
                                           minlength="6"
                                           maxlength="32">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <span class="far fa-key"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--Remember Pass-->
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" ${remember eq 'ON'?"checked":""} name="remember" id="flexCheckDefault" value="ON">
                                <label class="form-check-label" for="flexCheckDefault">
                                    Remember me                         
                                </label>
                            </div>
                            <br/>
                            <div style="color: red">${requestScope.messageInvalidEmail_Pass}</div>
                            <div style="color: blue">${requestScope.messageSuccessfully}</div>
                            
                            
                            <!--Submit-->
                            <div class="form-group ">
                                <button type="submit"
                                        class="btn btn-primary btn-block">Login</button>
                            </div>
                            
                            <!--Fotget Pass-->
                            <div class="text-center">
                                <a href="ForgotPass.jsp"
                                   class="text-black-70"
                                   style="text-decoration: underline;">Forgot Password?</a>
                            </div>
                        </form>
                    </div>
                    
                    <!--Register-->
                    <div class="card-footer text-center text-black-50">
                        Not yet a student? <a href="Register.jsp">Sign Up</a>
                    </div>
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