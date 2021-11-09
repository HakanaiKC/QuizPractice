<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Student Profile</title>

        <!-- Custom Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500%7CRoboto:400,500&display=swap"
            rel="stylesheet">

        <!-- Perfect Scrollbar -->
        <link type="text/css" href="assets/vendor/perfect-scrollbar.css" rel="stylesheet">

        <!-- Material Design Icons -->
        <link type="text/css" href="assets/css/material-icons.css" rel="stylesheet">

        <!-- Font Awesome Icons -->
        <link type="text/css" href="assets/css/fontawesome.css" rel="stylesheet">

        <!-- Preloader -->
        <link type="text/css" href="assets/vendor/spinkit.css" rel="stylesheet">

        <!-- App CSS -->
        <link type="text/css" href="assets/css/app.css" rel="stylesheet">

    </head>

    <body class=" fixed-layout">

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

        <!-- Header Layout -->
        <div class="mdk-header-layout js-mdk-header-layout">

            <!-- Header -->

            <%@include file="Header_All.jsp" %>

            <!-- // END Header -->

            <!-- Header Layout Content -->

            <div class="mdk-header-layout__content d-flex flex-column">
                <div class="page pt-0" style="min-height: 900px; height: auto;">

                    <div class="bg-primary mdk-box js-mdk-box mb-0" style="height: 192px;"
                         data-effects="parallax-background blend-background">
                        <div class="mdk-box__bg">             
                            <div class="mdk-box__bg-front"
                                 style="background-image: url(assets/images/fpt.jpg); background-position: center;">
                            </div>
                        </div>
                    </div>
                    <div class="container page__container d-flex align-items-end position-relative mb-4">
                        <div class="avatar avatar-xxl position-absolute bottom-0 left-0 right-0">
                            <c:if test = "${profileUser.avatar == null}">
                                <img src="assets/images/unnamed.jpg" alt="avatar"
                                     class="avatar-img rounded-circle border-3">
                            </c:if>
                            <c:if test = "${profileUser.avatar != null}">
                                <img src="uploads/${profileUser.avatar}" alt="avatar"
                                     class="avatar-img rounded-circle border-3">
                            </c:if>
                        </div>
                        <ul class="nav nav-tabs-links flex" style="margin-left: 265px;">
                            <li class="nav-item">
                                <a href="#" class="nav-link">Quiz</a>
                            </li>
                        </ul>
                    </div>

                    <div class="container page__container mb-3">
                        <div class="row flex-sm-nowrap">

                            <!--Profile-->
                            <div class="col-sm-auto mb-3 mb-sm-0" style="width: 265px;">
                                <!--Name-->
                                <h1 class="h2 mb-1">${profileUser.username}</h1>
                                <br>
                                <h4>About me</h4>
                                <p class="text-black-70 measure-paragraph">${profileUser.about_me}</p>

                                <h4>Connect</h4>
                                <p class="text-black-70 measure-paragraph">${profileUser.connect}</p>

                            </div>
                            <!--End Profile-->

                            <!--Course Review-->

                            <div class="col-sm">
                                <c:forEach items="${quizList}" var="q">
                                    <div class="card" onclick="location.href = 'QuizEnrollServlet?quizid=${q.quiz_id}';" style="cursor:pointer;">
                                        <div class="card-header">
                                            <div class="d-flex row align-items-center">
                                                <div class="card-title col-sm-11" style="font-size: 18px; font-weight: bold; margin: 0;">${q.name}</div>
                                                <div class="edit-button col-sm-1">

                                                </div>
                                                <div class="n-question col-sm-2">${q.questionNum} questions</div>
                                                <div class="last-update col-sm-8">Last update: ${q.last_Update}</div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>


                            <!--End Course Review-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- // END Header Layout Content -->
            <jsp:include page="Footer.jsp"></jsp:include>
            <%@include file="Boostrap_Header.jsp" %>
            </div>
            <!-- // END Header Layout                         

        

        <script type="text/javascript">

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