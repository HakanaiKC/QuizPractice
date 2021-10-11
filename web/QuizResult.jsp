<%-- 
    Document   : QuizResult
    Created on : Oct 10, 2021, 11:07:29 PM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Exam Result</title>

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

        <div class="mdk-header-layout__content d-flex flex-column">
            <div class="page">

                <div class="container page__container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Home">Home</a></li>
                        <li class="breadcrumb-item active">Quiz Results</li>
                    </ol>

                    <!--Title-->
                    <div class="media mb-headings align-items-center">
                        <div class="media-body">
                            <h1 class="h2">Your attempts</h1>
                        </div>
                    </div>

                    <!--Result-->
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Result</h4>
                        </div>

                        <div class="card-body media align-items-center row">
                            <div class="media-body col-md-3">
                                <h4 class="mb-0">300 Bài code thiếu nhi</h4>
                            </div>
                            <div class="media-body col-md-3">
                                <h4 class="mb-0">5.8</h4>
                            </div>        
                            <div class="media-body col-md-4">
                                <p class="text-muted">Submitted on 2nd Feb 2016</p>
                            </div>  
                            <div class="media-right col-md-2" style="padding-left: 40px;">
                                <a href="TakeExam.jsp"
                                   class="btn btn-primary">Review <i class="fas fa-eye btn__icon--right"></i></a>
                            </div>
                        </div>
                        <div class="card-body media align-items-center row">
                            <div class="media-body col-md-3">
                                <h4 class="mb-0">Tuyển tập văn mẫu phần hai</h4>
                            </div>
                            <div class="media-body col-md-3">
                                <h4 class="mb-0">6.9</h4>
                            </div>        
                            <div class="media-body col-md-4">
                                <p class="text-muted">Submitted on 2nd Jan 2017</p>
                            </div>  
                            <div class="media-right col-md-2" style="padding-left: 40px;">
                                <a href="#"
                                   class="btn btn-primary">Review <i class="fas fa-eye btn__icon--right"></i></a>
                            </div>
                        </div>
                    </div>
                    <!--End Result-->
                </div>
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#ExamModal">
                    Attempt your exam
                </button>
            </div>     
        </div>

        <!--Attempt Pop-up-->
        <div class="modal fade" id="ExamModal" tabindex="-1" role="dialog" aria-labelledby="examModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="background-color: #29b6f6;">
                        <h3 class="modal-title" id="examModalLabel">Do you want to start your attempt?</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body row">
                        <div class="md-form col-md-6">
                        <h4>Set Question Limit</h4>
                        <input class="form-control" type="number" placeholder="Number of Questions" value="#">
                        </div> 
                        <br>                        
                        <div class="md-form col-md-6">
                            <h4>Set Time Limit</h4>
                            <input value="#" type="time" id="inputMDEx1" class="form-control">
                        </div>                 
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                        <button type="button" class="btn btn-primary">Yes</button>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
        <%@include file="Boostrap_Header.jsp"%>       
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
