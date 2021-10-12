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
                    <li class="breadcrumb-item"><a href="Home">Home</a></li>
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
                                <div class="media-body">Đá tảng tiếng Anh là gì</div>
                                <div class="media-right"><span class="badge badge-success ">Correct</span></div>
                            </div>
                            <!--Question Multiple Choice-->
                            <div class="card-body">
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input id="customCheck01"
                                               type="checkbox"
                                               class="custom-control-input"
                                               checked disabled>
                                        <label for="customCheck01"
                                               class="custom-control-label">rock</label>
                                               <i class="fas fa-times" style="color: red;"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input id="customCheck02"
                                               type="checkbox"
                                               class="custom-control-input"
                                               checked disabled>
                                        <label for="customCheck02"
                                               class="custom-control-label">kick</label>
                                               <i class="fas fa-times" style="color: red;"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input id="customCheck03"
                                               type="checkbox"
                                               class="custom-control-input"
                                               disabled>
                                        <label for="customCheck03"
                                               class="custom-control-label">ice</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input id="customCheck04"
                                               type="checkbox"
                                               class="custom-control-input"
                                               disabled>
                                        <label for="customCheck04"
                                               class="custom-control-label">stone</label>
                                               <i class="fas fa-check" style="color: green;"></i>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <!--Wrong Answer-->
                        <li class="list-group-item">
                            <div class="media">
                                <div class="media-left">
                                    <div class="text-muted-light">2.</div>
                                </div>
                                <div class="media-body">Bạn A có một quả táo, bạn B có 3 quả táo. Tính tổng thời gian bạn C ăn hết một cái bánh?</div>
                                <div class="media-right"><span class="badge badge-danger ">Wrong</span></div>
                            </div>
                            <!--Question-->
                            <div class="card-body form-group">
                                <div class="custom-controls-stacked">
                                    <div class="form-group">
                                        <div class="custom-control custom-radio">
                                            <input id="radioStacked1"
                                                   name="radio-stacked"
                                                   type="radio"
                                                   class="custom-control-input"
                                                   checked disabled>
                                            <label for="radioStacked1"
                                                   class="custom-control-label">204</label>
                                            <i class="fas fa-times" style="color: red;"></i>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-radio">
                                            <input id="radioStacked2"
                                                   name="radio-stacked"
                                                   type="hidden"
                                                   class="custom-control-input">
                                            <label for="radioStacked2"
                                                   class="custom-control-label">205</label>
                                            <i class="fas fa-check" style="color: green;"></i>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-radio">
                                            <input id="radioStacked3"
                                                   name="radio-stacked"
                                                   type="hidden"
                                                   class="custom-control-input">
                                            <label for="radioStacked3"
                                                   class="custom-control-label">206</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
        <%@include file="Boostrap_Header.jsp"%>       
        <script>
            $(':radio:not(:checked)').attr('disabled', true);
        </script>
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
