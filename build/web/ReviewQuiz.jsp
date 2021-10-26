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

        <!-- Sweet Alert -->
        <link rel="stylesheet"
              href="assets/css/sweetalert.css">
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
                        <h1 class="h2">${examReview.quiz_name}</h1>
                        <p class="text-muted">Submited on ${examReview.date}</p>
                    </div>
                </div>
                <div class="card-group">
                    <div class="card">
                        <div class="card-body text-center">
                            <h4 class="card-title">Result</h4>
                            <h4 class="mb-0">${examReview.mark}</h4>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body text-center">
                            <h4 class="text-success mb-0"><strong>${examReview.correct_answers}</strong></h4>
                            <small class="text-muted-light">CORECT</small>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body text-center">
                            <h4 class="text-danger mb-0"><strong>${examReview.num_of_question - examReview.correct_answers}</strong></h4>
                            <small class="text-muted-light">WRONG</small>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body text-center">
                            <h4 class="text-primary mb-0"><strong>${examReview.num_of_question}</strong></h4>
                            <small class="text-muted-light">TOTAL QUESTION</small>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Questions</h4>
                    </div>
                    <ul class="list-group list-group-fit mb-0">
                        <li class="list-group-item">
                            <c:forEach items="${listQues}" var="ques" varStatus="loop">
                                <div class="media">
                                    <div class="media-left">
                                        <div class="text-muted-light">${loop.index+1}: </div>
                                    </div>
                                    <div class="media-body">${ques.question}</div>
                                    <c:if test="${ques.checkQuestion == 1}">
                                        <div class="media-right"><span class="badge badge-success ">Correct</span></div>
                                    </c:if>
                                    <c:if test="${ques.checkQuestion !=1}">
                                        <div class="media-right"><span class="badge badge-danger ">Wrong</span></div>
                                    </c:if>
                                </div>
                                <!--Question Multiple Choice-->
                                <div class="card-body">
                                    <c:forEach items="${ques.listOption}" var="listOp">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                <c:if test="${listOp.option_status == 1}">
                                                    <input id="customCheck${ques.question_id}-${listOp.option_id}"
                                                           type="checkbox"
                                                           class="custom-control-input"
                                                           checked disabled>
                                                </c:if>
                                                <c:if test="${listOp.option_status != 1}">
                                                    <input id="customCheck${ques.question_id}-${listOp.option_id}"
                                                           type="checkbox"
                                                           class="custom-control-input"
                                                           disabled>
                                                </c:if>
                                                <label for="customCheck${ques.question_id}-${listOp.option_id}"
                                                       class="custom-control-label">${listOp.option_content}</label>
                                                <c:if test="${listOp.right_option == 1}" >  
                                                    <i class="fas fa-check" style="color: green;"></i>
                                                </c:if>     
                                                 <c:if test="${listOp.right_option != 1 && listOp.option_status == 1}" >  
                                                <i class="fas fa-times" style="color: red;"></i>
                                                </c:if>     
                                            </div>
                                        </div>
                                    </c:forEach>
<!--                                    <button 
                                        class="btn btn-info" 
                                        data-toggle="swal" 
                                        data-swal-title="Instruction"
                                        data-swal-text="${ques.instruction}">
                                        Instruction
                                    </button>-->
                                </div>
                            </c:forEach>
                        </li>

                        <!--Wrong Answer-->
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

        <!-- Global Settings -->
        <script src="assets/js/settings.js"></script>

        <!-- Sweet Alert -->
        <script src="assets/vendor/sweetalert.min.js"></script>
        <script src="assets/js/sweetalert.js"></script>
    </body>
</html>
