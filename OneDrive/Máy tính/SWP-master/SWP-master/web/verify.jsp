<%-- 
    Document   : Verify
    Created on : Sep 23, 2021, 8:59:37 AM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible"
              content="IE=edge">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Verify</title>

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
                        <h4 class="card-title">Verify</h4>
                        <p class="card-subtitle">Verify your account</p>
                    </div>

                    <div class="card-body">
                        <!--Form-->
                        <form action="VerifyCode" method="post">
                            <p class="Form-subtitle">
                                We just need to verify your email address before you can access to QuizPractice.<br><br>
                                Verify your email address by enter verification code<br><br>
                                Best Regard! The QuizPractice team</p>
                            <!--Code-->
                            <div class="form-group">
                                <div class="form-group"> 
                                    <div class="input-group input-group-merge">
                                        <input id="code"
                                               type="text" name="authcode"
                                               required
                                               class="form-control form-control-prepended"
                                               placeholder="Your verify code"
                                               maxlength="6">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                                <i class="fas fa-user-secret"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div style="color: red">${requestScope.messVerify1}</div>
                            <div style="color: green">${requestScope.messVerify2}</div>
                            <br/>
                            <!--Submit-->
                            <div class="form-group ">
                                <button type="submit"
                                        class="btn btn-success btn-block">Verify</button>
                            </div>
                            <div class="card-footer text-center text-black-50">Already signed up? <a href="Login.jsp">Login</a></div>
                        </form>
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
