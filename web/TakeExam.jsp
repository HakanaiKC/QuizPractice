<%-- 
    Document   : TakeExam
    Created on : Oct 10, 2021, 8:05:07 PM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Exam</title>

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
    <body>
        <%@include file="Header_All.jsp" %>
        <div class="preloader">
            <div class="sk-chase">
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
            </div>
        </div>
        
        <div class="mdk-header-layout__content">

            <div data-push
                 data-responsive-width="992px"
                 class="mdk-drawer-layout js-mdk-drawer-layout">
                <div class="mdk-drawer-layout__content page ">

                    <div class="container-fluid page__container">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Home">Home</a></li>
                            <li class="breadcrumb-item active">Exam</li>
                        </ol>

                        <!--Question info-->
                        <div class="card-group">
                            <div class="card">
                                <div class="card-body text-center">
                                    <h4 class="mb-0"><strong>25</strong></h4>
                                    <small class="text-muted-light">TOTAL</small>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body text-center">
                                    <h4 class="text-success mb-0"><strong>3</strong></h4>
                                    <small class="text-muted-light">CORECT</small>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body text-center">
                                    <h4 class="text-danger mb-0"><strong>5</strong></h4>
                                    <small class="text-muted-light">WRONG</small>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body text-center">
                                    <h4 class="text-primary mb-0"><strong>17</strong></h4>
                                    <small class="text-muted-light">LEFT</small>
                                </div>
                            </div>
                        </div>
                        <!--end Question info-->

                        <!--Question card-->
                        <div class="card">
                            <div class="card-header">
                                <div class="media align-items-center">
                                    <div class="media-left">
                                        <h4 class="mb-0"><strong>#9</strong></h4>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="card-title">
                                            Github command to deploy comits?
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input id="customCheck01"
                                               type="checkbox"
                                               class="custom-control-input">
                                        <label for="customCheck01"
                                               class="custom-control-label">git push</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input id="customCheck02"
                                               type="checkbox"
                                               class="custom-control-input">
                                        <label for="customCheck02"
                                               class="custom-control-label">git commit -m "message"</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input id="customCheck03"
                                               type="checkbox"
                                               class="custom-control-input">
                                        <label for="customCheck03"
                                               class="custom-control-label">git pull</label>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <a href="#"
                                   class="btn btn-white">Skip</a>
                                <a href="#"
                                   class="btn btn-success float-right">Submit <i class="material-icons btn__icon--right">send</i></a>
                            </div>
                        </div>
                        <!--End Question card-->
                    </div>
                </div>

                <!--Questions list-->
                <div class="mdk-drawer js-mdk-drawer"
                     data-align="end">
                    <div class="mdk-drawer__content ">
                        <div class="sidebar sidebar-right sidebar-light bg-white o-hidden"
                             data-perfect-scrollbar>

                            <!--Time-->
                            <div class="sidebar-p-y" style="padding-top: 5em;">
                                <div class="sidebar-heading">Time left</div>
                                <div class="countdown sidebar-p-x"
                                     data-value="4:30:30" <!--hour:minute:second-->
                                     data-unit="hour"></div>
                                <!--End Time-->   

                                <!--Question-->
                                <div class="sidebar-heading">Pending</div>
                                <ul class="list-group list-group-fit">
                                    <li class="list-group-item active">
                                        <a href="#">
                                            <span class="media align-items-center">
                                                <span class="media-left">
                                                    <span class="btn btn-white btn-circle">#9</span>
                                                </span>
                                                <span class="media-body">
                                                    Github command to deploy comits?
                                                </span>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                                <!--End of Question-->
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Questions list-->
            </div>
        </div>
        <%@include file="Boostrap_Header.jsp" %>
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

        <!-- Required by countdown -->
        <script src="assets/vendor/moment.min.js"></script>
        <!-- Easy Countdown -->
        <script src="assets/vendor/jquery.countdown.min.js"></script>

        <!-- Init -->
        <script src="assets/js/countdown.js"></script>
    </body>
</html>
