<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Quiz Practice</title>        

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
        <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/css/star-rating-svg.css">
        <script src="assets/vendor/jquery.star-rating-svg.js"></script>
        <link type="text/css"
              href="assets/css/LearnQuiz.css"
              rel="stylesheet">
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

        <!--        App CSS -->
        <link type="text/css" 
              href="assets/css/app.css"
              rel="stylesheet">
    </head>
    <body>
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

        <div class="container_body row">
            <div class="col-12 top-panel">
                <div class="homeLogo">learn</div>
                <c:forEach items="${question}" var="question">
                    <div class="quizTitle">${question.name}</div>
                </c:forEach>  
                <div class="exitLearn"><a href="QuizDetailServlet?quizid=${quizid}">X</a></div>
            </div>
            <div class="col-3"></div>

            <input name="quizid" value="${quizid}" hidden>
            <div class="col-6 row flashcard">               
                <div class="cards__single">
                    <div class="cards__front">
                        <c:forEach items="${question}" var="question">
                            <p class="question-side" id="question-side">
                                ${question.question} 
                            </p>
                        </c:forEach>
                        <c:forEach items="${listOption}"  var="option">                                
                            <div class="option-side" id="option-side">${option.option_content}</div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-11" style="margin-top: 20px; font-size: 20px;" > Choose right option</div>

                <c:forEach items="${listOption}"  var="option" varStatus="loop">
                    <div class="col-5 option">
                        <input id="buton-${option.option_id}" type="button" value="${option.option_content}" name="option" onclick="RightChoice('${loop.index}')"/>                                                
                        <input id="option-${loop.index}" type="button"
                               value="${option.right_option}" hidden>
                    </div>           
                </c:forEach>

                <div class="col-md-10">
                    <form method="post" action="LearnServlet?quiz_id=${quizid}">
                        <input type="submit" value="Submit"/>
                    </form>
                </div>
            </div>  
            <div class="col-3"></div>
        </div>

        <script>
            function RightChoice(index) {
                var right = $("#option-" + index).val();

                if (right == 1) {
                    document.getElementById('buton-' + index).style.borderColor = "green";
                } else {
                    document.getElementById('buton-' + index).style.borderColor = "red";
                }
            }
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
