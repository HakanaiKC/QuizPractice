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
        <div id="header" class="mdk-header bg-dark js-mdk-header m-0" data-fixed data-effects="waterfall">
            <div class="mdk-header__content">

                <!-- Navbar -->
                <nav id="default-navbar" class="navbar navbar-expand navbar-dark bg-primary m-0">
                    <div class="container">
                        <!-- Toggle sidebar -->
                        <button class="navbar-toggler d-block"
                                data-toggle="sidebar"
                                type="button">
                            <span class="material-icons">menu</span>
                        </button>

                        <!-- Brand -->
                           <a href="Home" class="navbar-brand">
                            <span class="d-none d-xs-md-block">QuizPractice</span>
                        </a>

                        <!-- Search -->
                        <form class="search-form d-none d-md-flex">
                            <input type="text" class="form-control" placeholder="Search">
                            <button class="btn" type="button"><i
                                    class="material-icons font-size-24pt">search</i></button>
                        </form>
                        <!-- // END Search -->
                        <div class="flex"></div>

                        <ul class="nav navbar-nav flex-nowrap d-none d-lg-flex">
                            <c:if test="${sessionScope.userSeisson.role_id ==0}">
                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Student</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="Home">Home</a>
                                        <a class="dropdown-item" href="Library.jsp">My Quiz</a>
                                        <a class="dropdown-item" href="#">Take a Exam</a>
                                        <a class="dropdown-item" href="#">Exam Results</a>               
                                        <a class="dropdown-item" href="#">Payment Method</a>
                                    </div>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.userSeisson.role_id ==1}">
                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Instructor</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="Home">Home</a>
                                        <a class="dropdown-item" href="#">Quiz Manager</a>
                                        <a class="dropdown-item" href="#">Earnings</a>
                                        <a class="dropdown-item" href="#">Statement</a>
                                    </div>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.userSeisson.role_id ==2}">
                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Admin</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="">Lorem ipsum</a>
                                        <a class="dropdown-item"
                                           href="#">Lorem ipsum</a>
                                        <a class="dropdown-item"
                                           href="#">Lorem ipsum</a>
                                        <a class="dropdown-item" href="#">Lorem ipsum</a>
                                    </div>
                                </li>  
                            </c:if>
                        </ul>
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
                                        <a class="dropdown-item" href="ChangePass.jsp">
                                            <i class="material-icons">edit</i> Edit Account
                                        </a>
                                        <a class="dropdown-item" href="ProfileServlet?id=${sessionScope.userSeisson.user_id}">
                                            <i class="material-icons">person</i> Public Profile
                                        </a>          
                                        <a class="dropdown-item" href="#">
                                            <i class="material-icons">receipt</i> Payment Information
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <i class="material-icons">history</i> Payment History
                                        </a>
                                        <a class="dropdown-item" href="LogOut">
                                            <i class="material-icons">lock</i> Logout
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
