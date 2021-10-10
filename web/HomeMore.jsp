
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Recommend</title>

        <link rel="stylesheet" href="assets/css/layout.css" />

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
        <div class="body">
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

            <!-- </div> -->

            <div class="container_body">

                <div class="container_home">
                    <div class="row cardholder">

                        <div class="col-4">
                            <div>
                                <div class="itemname col-sm-4">
                                    <ul class="nav navbar-nav flex-nowrap d-none d-lg-flex">
                                        <li class="nav-item dropdown">
                                            <div class="nav-link dropdown-toggle itemname" data-toggle="dropdown">${Action}</div>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="HomeMoreServlet?Action=Recommend">Recommend</a>
                                                <!--                                                <a class="dropdown-item" href="#">Created</a>  -->
                                                <a class="dropdown-item" href="HomeMoreServlet?Action=All Quiz">All Quiz</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 item">
                            <div></div>
                        </div>
                        <div class="col-4" >

                        </div>
                        <c:forEach items="${quizList}" var="q">
                            <div class="col-sm-4 card" >
                                <div class="cardset" onclick="location.href = 'LearnServlet';" style="cursor:pointer;">
                                    <div class="card-title">${q.name}</div>
                                    <div class="n-question">${q.questionNum} questions</div>
                                    <div class="price">${q.price} $</div>
                                    <div class="card-creator">${q.creator_name}</div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                                            <c:if test="${quizList.size() >=9}">               <!-- Pagination -->
                        <ul class="pagination justify-content-center pagination-sm">
                            <li class="page-item disabled">
                                <a class="page-link"
                                   href="#"
                                   aria-label="Previous">
                                    <span aria-hidden="true"
                                          class="material-icons">chevron_left</span>
                                    <span>Prev</span>
                                </a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link"
                                   href="#"
                                   aria-label="1">
                                    <span>1</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link"
                                   href="#"
                                   aria-label="1">
                                    <span>2</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link"
                                   href="#"
                                   aria-label="Next">
                                    <span>Next</span>
                                    <span aria-hidden="true"
                                          class="material-icons">chevron_right</span>
                                </a>
                            </li>
                        </ul>
                        </c:if>      
                                            <br/>
            </div>
        </div>

        <%@include file="Footer.jsp" %>
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
