<%-- 
    Document   : ReviewQuiz
    Created on : Oct 11, 2021, 11:13:04 PM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Review</title>

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
        <div class="page ">

            <div class="container page__container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="fixed-student-dashboard.html">Home</a></li>
                    <li class="breadcrumb-item active">Quiz Results</li>
                </ol>
                <div class="media mb-headings align-items-center">
                    <div class="media-body">
                        <h1 class="h2">300 Bài code thiếu nhi</h1>
                        <p class="text-muted">submited on 3rd Mar 2021</p>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Result</h4>
                    </div>
                    <div class="card-body media align-items-center">
                        <div class="media-body">
                            <h4 class="mb-0">9.8</h4>
                        </div>
                        <div class="media-right">
                            <a href="TakeExam.jsp"
                               class="btn btn-primary">Restart <i class="material-icons btn__icon--right">refresh</i></a>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Questions</h4>
                    </div>
                    <ul class="list-group list-group-fit mb-0">
                        <li class="list-group-item">
                            <div class="media">
                                <div class="media-left">
                                    <div class="text-muted-light">1.</div>
                                </div>
                                <div class="media-body">Tính tổng 2 số nguyên</div>
                                <div class="media-right"><span class="badge badge-success ">Correct</span></div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="media">
                                <div class="media-left">
                                    <div class="text-muted-light">2.</div>
                                </div>
                                <div class="media-body">Tính tổ hợp</div>
                                <div class="media-right"><span class="badge badge-success ">Correct</span></div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="media">
                                <div class="media-left">
                                    <div class="text-muted-light">3.</div>
                                </div>
                                <div class="media-body">Tính tổng, hiệu, tích, thương của 2 số nguyên</div>
                                <div class="media-right"><span class="badge badge-success ">Correct</span></div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="media">
                                <div class="media-left">
                                    <div class="text-muted-light">4.</div>
                                </div>
                                <div class="media-body">Tìm ước chung lớn nhất</div>
                                <div class="media-right"><span class="badge badge-danger ">Wrong</span></div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="media">
                                <div class="media-left">
                                    <div class="text-muted-light">5.</div>
                                </div>
                                <div class="media-body">Máy tính bỏ túi đơn giản</div>
                                <div class="media-right"><span class="badge badge-success ">Correct</span></div>
                            </div>
                        </li>
                    </ul>
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
