<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Library</title>

        <link rel="stylesheet" href="assets/css/library.css" />

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
        <c:if test="${sessionScope.userSeisson == null}" >
            <% {
                    response.sendRedirect("Home");
                }%>
        </c:if>
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
        <div class="row container_home">
            <div class="col-sm-2"></div>
            <!--Drop down-->
            <div class="itemname col-sm-4">
                <ul class="nav navbar-nav flex-nowrap d-none d-lg-flex">
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle font-size-24pt" data-toggle="dropdown">${Action}</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="LibraryServlet?Action=Recent">Recent</a>
                            <a class="dropdown-item" href="LibraryServlet?Action=Created">Created</a>  
<!--                            <a class="dropdown-item" href="LibraryServlet?Action=All">All Quiz</a>-->
                        </div>
                    </li>
                </ul>
            </div>
            
            <div class="col-sm-2">
                <!-- Search -->
                <form class="search-form d-none d-md-flex" action="LibraryServlet?Action=${Action}" method="post">
                    <input type="text" name="SearchQuiz" value="${SearchQuizLB}" class="form-control" placeholder="Search in library">
                    <button class="btn" type="button"><i
                            class="material-icons font-size-24pt">search</i></button>
                </form>
                <!-- // END Search -->
            </div>
            <div class="col-sm-4"></div>

            <!--dÃ¹ng foreach thÃ¬ copy h?t ?o?n nÃ y, cÃ¡i nÃ y lÃ  1 card-->
             <c:forEach  items="${quizList}" var="q">
            <div class="col-sm-2"></div>
            <div class="card1 col-sm-6">
                <div class="content row" onclick="location.href = 'QuizDetailServlet?quizid=${q.quiz_id}';" style="cursor:pointer;">
                    <div class="n-question col-sm-4">${q.questionNum} questions</div>
                    <div class="card-creator col-sm-6">${q.creator_name}</div>
                    <div class="card-title col-sm-10">${q.name}</div>
                </div>
            
            </div>
            <div class="col-sm-4"></div>
            </c:forEach>
            <!--??n ?Ã¢y-->
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
    </body>

</html>
