<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>QuizPractice</title>

        <link rel="stylesheet" href="assets/css/createQuiz.css" type="text/css" />

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

        <div class="container_body row">
            <!--PHAN MO TA QUIZ-->
            <div class="col-sm-3"></div>
            <div class="col-sm-6 quiz"> 
                <form name="quiz-information">
                    <div class="quiz-infor row">
                        <div class="col-sm-9 quiz-title-div">
                            <input type="text" name="quiz-title" placeholder="Quiz Title" 
                                   style="border: none; border-bottom: 1px solid gray; width: 100%;" />
                        </div>
                        <div class="col-sm-2 quiz-price-div">
                            <input type="number" name="quiz-price" placeholder="Price" 
                                   style="border: none; border-bottom: 1px solid gray; width: 100%; " />
                        </div>
                        <div class="col-sm-11 quiz-description-div" >
                            <textarea class="quiz-description" rows='2' placeholder='Quiz description'></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-3"></div>
            <!--KET THUC PHAN MO TA QUIZ-->


            <!--PHAN MO TA QUESTION-->
            <div class="create_new_quesiton row" id='createq' style="width: 100%;">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 question"> 
                    <div class="question-infor row">
                        <form id="question-information">
                            <div class="col-sm-11 question-div" >
                                <textarea class="question-description" rows='2' placeholder='Question'></textarea>
                            </div>
                            <div class="col-sm-12 row option-div" >
                                <div class="choose-right-option-div col-sm-1">
                                    <input class="choose-right-option" type="checkbox" name="choose-right-option" value="ON" />
                                </div>
                                <div class="option-content col-sm-7">
                                    <input type="text" name="answer" placeholder="option-content" 
                                           style="border: none; border-bottom: 1px solid gray; width: 100%;" />
                                </div>
                                <div class="remove-option-div col-sm-3">                               
                                    <button class="remove-option btn btn-white btn-sm" type="submit" name="remove-option"><i class="fas fa-trash-alt"></i></button>
                                </div>
                                <div class="add-more-option-div col-sm-1">
                                    <input class="add-more-option btn-primary" type="submit" value="Add option" />
                                </div>
                                <div class="col-sm-10"></div>                            
                            </div>
                            <div class="col-sm-11 question-instruction-div" >
                                <textarea class="question-instruction" rows='2' placeholder='Instruction'></textarea>
                            </div>
                            <br>
                            <div class="col-sm-2 remove-question-div">
                                <button class="remove-question" onclick="removeQuestion(this)">Remove Question</button>
                            </div>
                        </form>
                    </div>
                </div>            
                <div class="col-sm-3"></div>
            </div>
            <!--KET THUC PHAN MO TA QUESTION-->

            <script>

            </script>
            <!--PHAN BUTTON "ADD-QUESTION" VA "SAVE"-->
            <div class="col-sm-3"></div>
            <div class="col-sm-5 add-more-question-div">
                <button class="add-more-question btn btn-success" onclick="addQuestion()" type="submit">Add Question</button>
            </div>            
            <div class="col-sm-1 save-quiz-div">
                <input class="save-quiz btn btn-white" type="submit" value="Save" />
            </div>
            <div class="col-sm-3"></div>
            <!--KET THUC 2 BUTTON-->
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

        <script src="assets/vendor/infinity.js"></script>
        <script src="assets/vendor/infinity.min.js"></script>
        <!--JS AUTOSIZE TEXT-AREA-->
        <script>
                    var textarea = document.querySelector(".quiz-description");
                    var textarea1 = document.querySelector(".question-description");
                    var textarea2 = document.querySelector(".question-instruction");
                    textarea.addEventListener('keydown', autosize);
                    textarea1.addEventListener('keydown', autosize);
                    textarea2.addEventListener('keydown', autosize);
                    function autosize() {
                        var el = this;
                        setTimeout(function () {
                            el.style.cssText = 'height:auto; padding:0';
                            el.style.cssText = 'height:' + el.scrollHeight + 'px';
                        }, 0);
                    }

                    var i = 0;
                    var original = document.getElementById('createq');

                    function addQuestion() {
                        var clone = original.cloneNode(true); // "deep" clone
                        clone.id = "createq" + ++i;
                        original.parentNode.appendChild(clone);
                    }
                    function removeQuestion() {
                        button.remove();
                    }
        </script>
    </body>
</html>
