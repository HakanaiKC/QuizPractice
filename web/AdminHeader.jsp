<%-- 
    Document   : Header_All
    Created on : Sep 20, 2021, 6:16:17 PM
    Author     : bekim
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <div id="header">
            <div>

                <!-- Navbar -->
                <nav id="default-navbar" class="navbar navbar-expand navbar-dark bg-primary m-0">
                    <div class="container">
                        <!-- Toggle sidebar -->

                        <!-- Brand -->
                        <a href="Home" class="navbar-brand">
                            <span style="font-size: 32px; font-weight: 600; color: white; ">QuizPractice</span>
                        </a>
                        <!-- Search -->
                        <form class="search-form d-none d-md-flex" action="HomeSearchServlet" method="post">
                            <input type="text" name="SearchQuiz" value="${SearchQuiz}" class="form-control" placeholder="Search">

                        </form>
                        <div name="SearchQuiz" value="${SearchQuiz}" ></div>
                        <!-- // END Search -->                       
                       
                        <c:if test="${sessionScope.userSeisson ==null}">
                            <ul class="nav navbar-nav flex-nowrap d-none d-lg-flex">
                                <li class="nav-item">
                                    <a class="nav-link"
                                       href="Login">Sign in</a>
                                </li>
                            </ul>

                            <ul class="nav navbar-nav flex-nowrap d-none d-lg-flex">
                                <li class="nav-item">
                                    <a class="nav-link"
                                       href="VerifyUser">Sign up</a>
                                </li>
                            </ul>
                        </c:if>
                        <!-- Menu -->
                        <c:if test="${sessionScope.userSeisson !=null}">
                            <ul class="nav navbar-nav flex-nowrap">
                                <!-- User dropdown -->
                                <li class="nav-item dropdown ml-1 ml-md-3">
                                    <ul class="nav navbar-nav navbar-nav-stats d-none d-md-flex flex-nowrap" style="margin-right: 1em;">

                                    </ul>
                                    <div class="avatar avatar-xxl position-absolute bottom-0 left-0 right-0"></div>
                                    <c:if test = "${sessionScope.userSeisson.avatar == null}">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"><img
                                                src="assets/images/unnamed.jpg" alt="Avatar" class="rounded-circle"
                                                width="40"></a>
                                        </c:if>
                                        <c:if test = "${sessionScope.userSeisson.avatar != null}">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"><img
                                                src="uploads/${sessionScope.userSeisson.avatar}" alt="Avatar" class="rounded-circle"
                                                width="40" height="40"></a>
                                        </c:if>

                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="AdminServlet?Action=Overview">
                                            Overview
                                        </a>
                                        <a class="dropdown-item" href="AdminServlet?Action=Statistics">
                                            Statistics
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            Payment Information
                                        </a>
                                        <a class="dropdown-item" href="LogOut">
                                            Logout
                                        </a>
                                    </div>
                                </li>
                                <!-- // END User dropdown -->

                            </ul>
                        </c:if>
                        <!-- // END Menu -->
                    </div>
                </nav>
                <!-- // END Navbar -->
            </div>
        </div> 
    </body>
</html>
