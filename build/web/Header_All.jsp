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
        <c:if test="${sessionScope.userSeisson.role_id !=2}">
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
                            <form class="search-form d-none d-md-flex" action="HomeSearchServlet" method="post">
                                <input type="text" name="SearchQuiz" value="${SearchQuiz}" class="form-control" placeholder="Search">
                                <button class="btn" type="button"><i
                                        class="material-icons font-size-24pt">search</i></button>
                            </form>
                            <div name="SearchQuiz" value="${SearchQuiz}" ></div>
                            <!-- // END Search -->                       
                            <div style="padding-left: 10px; ">
                                <a class="d-none d-lg-flex btn btn-info" href="AdvanceSearch.jsp" role="button"><i class="material-icons mr-1">search</i>Advance</a>
                            </div>
                            <c:if test="${sessionScope.userSeisson !=null && sessionScope.userSeisson.role_id ==0}">
                                <div style="padding-left: 10px;">
                                    <c:if test="${sessionScope.userSeisson.ruby >= 5}">
                                        <a class="d-none d-lg-flex btn btn-info" href="CreateQuiz" role="button">Create</a>
                                    </c:if>

                                    <c:if test="${sessionScope.userSeisson.ruby < 5}">
                                        <button data-id="${question.question_id}" type="button" class="d-none d-lg-flex btn btn-info" data-toggle="modal" data-target="#instructionModal">
                                            Create Quiz
                                        </button>
                                    </c:if>


                                </div>                         
                                <div class="flex"></div>
                            </c:if>

                            <c:if test="${sessionScope.userSeisson !=null && sessionScope.userSeisson.role_id ==2}">
                                <div style="padding-left: 10px;">
                                    <a class="d-none d-lg-flex btn btn-info" href="AdminServlet?Action=Overview" role="button">Overview</a>
                                </div>                         
                                <div class="flex"></div>
                            </c:if>
                            <ul class="nav navbar-nav flex-nowrap d-none d-lg-flex">
                                <c:if test="${sessionScope.userSeisson.role_id ==0}">
                                    <li class="nav-item dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Student</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="Home">Home</a>
                                            <a class="dropdown-item" href="LibraryServlet?Action=Recent">Library</a>
                                            <c:if test="${sessionScope.userSeisson.ruby >= 5}">
                                                <a class="dropdown-item" href="CreateQuiz">Create Quiz</a>
                                            </c:if>
                                            <c:if test="${sessionScope.userSeisson.ruby < 5}">
                                                <a class="dropdown-item" href="PurchaseRuby">Not enough ruby</a>
                                            </c:if>
                                            <a class="dropdown-item" href="ListExamServlet">Exam Results</a> 
                                            <a class="dropdown-item" href="BoughtInstruction?Action=All">Bought Instructions</a>
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
                                        <ul class="nav navbar-nav navbar-nav-stats d-none d-md-flex flex-nowrap" style="margin-right: 1em;">
                                            <li class="nav-item">
                                                <div class="nav-stats" name="ruby" >${sessionScope.userSeisson.getRuby2()} <small>RUBY</small></div>
                                            </li>
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
                                            <a class="dropdown-item" href="ChangePass.jsp">
                                                <i class="material-icons">edit</i> Edit Account
                                            </a>
                                            <a class="dropdown-item" href="ProfileServlet?id=${sessionScope.userSeisson.user_id}">
                                                <i class="material-icons">person</i> Public Profile
                                            </a>          

                                            <a class="dropdown-item" href="PurchaseRuby"><i class="material-icons">receipt</i>Purchase ruby</a>
                                            <a class="dropdown-item" href="PaymentHistory">
                                                <i class="material-icons">history</i> Purchase History
                                            </a>
                                            <a class="dropdown-item" href="LogOut">
                                                <i class="material-icons">lock</i> Logout
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </c:if>

                        </div>
                    </nav>
                </div>
            </div>
        </c:if>
        <c:if test="${sessionScope.userSeisson.role_id ==2}">
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
                                            <a class="dropdown-item" href="ConfirmPurchase">
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
        </c:if>

        <div class="modal fade" id="instructionModal" tabindex="-1" role="dialog" aria-labelledby="instructionModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">    
                    <div class="modal-header">
                        <h5 class="modal-title" id="instructionModalLabel">Create Quiz</h5>
                    </div>

                    <c:if test="${sessionScope.userSeisson.ruby < 5}">                                                    
                        <div class="modal-body">
                            <label>You don't have enough Ruby to Create Quiz</label>
                        </div>
                        <div class="modal-footer">                                    
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <a href="PurchaseRuby" class="btn btn-primary">Buy Ruby</a>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </body>
    <script>
        $(document).on("click", ".buton", function () {
            var myId = $(this).data('id');
            $(".modal-footer #opId").val(myId);
        });
    </script>
</html>
