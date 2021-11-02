<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Bought Instruction</title>

        <link rel="stylesheet" href="assets/css/BoughtInstruction.css" />

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
        <div class="row container_home">
            <div class="col-sm-2"></div>
            <!--Drop down-->
            <div class="itemname col-sm-4">
                <ul class="nav navbar-nav flex-nowrap d-none d-lg-flex">
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle font-size-24pt" data-toggle="dropdown">tên môn</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="LibraryServlet?Action=Recent">Vật lí đại cương</a>
                            <a class="dropdown-item" href="LibraryServlet?Action=Created">Toán học đại cương</a>  
<!--                            <a class="dropdown-item" href="LibraryServlet?Action=All">All Quiz</a>-->
                        </div>
                    </li>
                </ul>
            </div>
            
            <div class="col-sm-2">
                <!-- Search -->
<!--                <form class="search-form d-none d-md-flex" >
                    <input type="text" name="SearchQues" class="form-control" placeholder="Search">
                    <button class="btn" type="button"><i
                            class="material-icons font-size-24pt">search</i></button>
                </form>-->
                <!-- // END Search -->
            </div>
            <div class="col-sm-4"></div>


            <div class="col-sm-2"></div>
            <div class="card1 col-sm-6">
                <div class="content row" >
                    <div class="card-title col-sm-12">SWP123</div>
                    <div class="answer-div col-sm-3">2</div>
                    <div class="question-div col-sm-8">
                        1+1=?<br>
                        1. 1<br>
                        2. 2<br>
                        3. 3<br>
                        4. 4<br>
                    </div>

                    <div class="instruction-div col-sm-12">1 + 1 =2</div>
                </div>            
            </div>
            <div class="col-sm-4"></div>

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
