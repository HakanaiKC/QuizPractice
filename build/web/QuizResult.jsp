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

    </style>
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
<body >
    
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
        <div class="page" style="min-height: 800px;">

            <div class="container page__container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Home">Home</a></li>
                    <li class="breadcrumb-item active">Quiz Results</li>
                </ol>

                    <!--Title-->
                    <c:if test="${quiz_id != null}">
                    <div class="media mb-headings align-items-center">
                        <div class="media-body">
                            <h1 class="h2">Your attempts</h1>
                        </div>
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#ExamModal">
                            Attempt your exam
                        </button>
                    </div>
                    </c:if>
                    <!--Result-->
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Result</h4>
                        </div>
                        <c:forEach items="${listEv}" var="ev" >
                        <div class="card-body media align-items-center row">
                            <div class="media-body col-md-3">
                                <h4 class="mb-0">${ev.quiz_name}</h4>
                            </div>
                            <div class="media-body col-md-3">
                                <h4 class="mb-0">${ev.mark}</h4>
                            </div>        
                            <div class="media-body col-md-4">
                                <p class="text-muted">Submitted on ${ev.date}</p>
                            </div>  
                            <div class="media-right col-md-2" style="padding-left: 40px;">
                                <a href="ExamResultServlet?exam_id=${ev.exam_id}"
                                   class="btn btn-primary">Review <i class="fas fa-eye btn__icon--right"></i></a>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                    <!--End Result-->
                </div>

                <!--Result-->
               
        </div>
    </div>
        <!--Attempt Pop-up-->
        <form action="AttemptExamServlet" method="post">
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
                            <input name="quiz_id" value="${quiz_id}" hidden>
                            <div class="md-form col-md-6">
                                <h4>Set Question Limit</h4>
                                <input class="form-control" min="1" max="${numQuesOfQuiz}" type="number" name="numOfQuestion" placeholder="Number of Questions" value="#" required>
                            </div> 
                            <br>                        
                            <div class="md-form col-md-6">
                                <h4>Set Time Limit</h4>
                                <input min="0" max="9" name="hour" type="number" id="hour" value="00" style="width: 40px;"> Hour : <input min="0" max="59" name="minute" type="number" id="hour" value="00" style="width: 40px;"> Minutes
                            </div>
                            <br/>
                            <div  class="md-form col-md-6" style="color: red">${mess}</div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                            <button type="submit" class="btn btn-primary">Yes</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
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

    </body>
</html>
