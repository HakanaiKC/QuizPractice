<%-- 
    Document   : TakeExam
    Created on : Oct 10, 2021, 8:05:07 PM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Exam</title>
        <style>
            html {
                scroll-behavior: smooth;
            }
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
    <body>
        <%@include file="Header_All.jsp" %>
        <form action="ExamResultServlet" method="Post">
            <input name="quiz_id" value="${quiz_id}" hidden>
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

            <div class="mdk-header-layout__content">

                <div data-push
                     data-responsive-width="992px"
                     class="mdk-drawer-layout js-mdk-drawer-layout">
                    <div class="mdk-drawer-layout__content page ">

                        <div class="container-fluid page__container">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Home">Home</a></li>
                                <li class="breadcrumb-item active">Exam</li>
                            </ol>

                            <!--Question card-->
                            <div class="card">
                                <!--Question Title-->
                                <c:forEach items="${listQuesInExam}" var="listE" varStatus="loop">
                                    <div class="card-header">
                                        <div class="media align-items-center">
                                            <div class="media-left">
                                                <h4 class="mb-0"><strong>${loop.index+1}: </strong></h4>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="card-title">
                                                    <input name="listQues" value="${listE.question_id}-${listE.question}" hidden>
                                                    ${listE.question}
                                                </h4>
                                            </div>
                                        </div>
                                    </div>

                                    <!--Question Multiple Choice-->  
                                    <div class="card-body">
                                        <c:forEach items="${listE.listOption}" var="listOp">
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input name="listOption" value="${listE.question_id}-${listOp.option_id}-${listOp.right_option}-${listOp.option_content}" hidden>
                                                    <input id="customCheck${listE.question_id}-${listOp.option_id}"
                                                           type="checkbox" name="listChoose" value="${listE.question_id}-${listOp.option_id}"
                                                           class="custom-control-input">
                                                    <label for="customCheck${listE.question_id}-${listOp.option_id}"
                                                           class="custom-control-label">${listOp.option_content}</label>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>

                                    <!--End Question-->
                                    <hr style="border-width: 1em; border-color: whitesmoke; ">
                                </c:forEach>
                                <!--2nd Question-->                            
                            </div>
                            <!--End Question card-->
                        </div>
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#ExamSubmit" style="float: right; margin-right: 1.5em;">
                            Submit<i class="material-icons btn__icon--right">send</i>
                        </button>
                    </div>

                    <!--Questions list-->
                    <div class="mdk-drawer js-mdk-drawer"
                         data-align="end">
                        <div class="mdk-drawer__content ">
                            <div class="sidebar sidebar-right sidebar-light bg-white o-hidden"
                                 data-perfect-scrollbar>

                                <!--Time-->
                                <div class="sidebar-p-y" style="padding-top: 5em;">
                                    <div class="sidebar-heading">Time left</div>
                                    <div name="timeExam" id="timeC" class="countdown sidebar-p-x"
                                         data-value="${hour}:${minute}:00"></div> <!--hour:minute:second-->                                      
                                    <!--End Time-->   

                                    <!--Question-->
                                    <ul class="list-group list-group-fit">
                                        <c:forEach items="${listQuesInExam}" var="listE" varStatus="loop">
                                        <li class="list-group-item active">
                                            <a href="#">
                                                <span class="media align-items-center">
                                                    <span class="media-left">
                                                        <span class="btn btn-white btn-circle">${loop.index+1}</span>
                                                    </span>
                                                    <span class="media-body">
                                                        ${listE.question}
                                                    </span>
                                                </span>
                                            </a>
                                        </li>
                                        </c:forEach>
                                        <li class="list-group-item">
                                            <a onclick="Scroll()" style="cursor: pointer;">
                                                <span class="media align-items-center">
                                                    <span class="media-left">
                                                        <span class="btn btn-white btn-circle">#10</span>
                                                    </span>
                                                    <span class="media-body">
                                                        Tính tổng hệ số tối giản của phương trình sau:
                                                    </span>
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                    <!--End of Question-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End Questions list-->
                </div>           
            </div>

            <!--Submit Pop-up-->
            <div class="modal fade" id="ExamSubmit" tabindex="-1" role="dialog" aria-labelledby="SubmitModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="background-color: orange;">
                            <h4 class="modal-title" id="SubmitModalLabel">Do you want to submit your work?</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body row">
                            <span class="media-body" style="font-size: 30px;">
                                Remember to check all your work before submitting.
                            </span>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <button onclick="location.href = 'QuizResult.jsp'" type="submit" class="btn btn-success">Yes</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="TimeoutSubmit" tabindex="-1" role="dialog" aria-labelledby="SubmitModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="SubmitModalLabel">TIME OUT!</h4>
                        </div>
                        <div class="modal-body row">
                            <span class="media-body" style="font-size: 30px;">
                                 You're late
                            </span>
                        </div>
                        <div class="modal-footer">
                            <button onclick="location.href = 'QuizResult.jsp'" type="submit" class="btn btn-success">Ok</button>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                var time = document.getElementById('timeC');
                var timeCount = time.getAttribute('data-value');
                var a = timeCount.split(':');
                var totalTime = ((+a[0]) * 60 * 60 + (+a[1]) * 60 + (+a[2])) * 1000;
                setTimeout(function () {
                    $('#TimeoutSubmit').modal();
                }, totalTime);
            </script>
        </form>

        <%@include file="Boostrap_Header.jsp" %>
        <script>
//            function Scroll() {
//                var elmnt = document.getElementById("multique")[0];
//                elmnt.scrollIntoView();
//            }
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

        <!-- Required by countdown -->
        <script src="assets/vendor/moment.min.js"></script>
        <!-- Easy Countdown -->
        <script src="assets/vendor/jquery.countdown.min.js"></script>

        <!-- Init -->
        <script src="assets/js/countdown.js"></script>
    </body>
</html>
