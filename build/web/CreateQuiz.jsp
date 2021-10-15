<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <jsp:useBean id="cDAO" class="dao.CategoryDAO" scope="request"></jsp:useBean>
        <meta charset="UTF-8" />
        <title>Create Quiz</title>

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
        <form action="CreateQuiz" method="post"  style="min-height: 800px;">
            <div class="container_body row">
                <!--PHAN MO TA QUIZ-->
                <div class="col-sm-3"></div>
                <div class="col-sm-6 quiz"> 
                    <div name="quiz-information">
                        <div class="quiz-infor row">
                            <div class="col-sm-9 quiz-title-div">
                                <input type="text" name="quiz_title" placeholder="Quiz Title" 
                                       style="border: none; border-bottom: 1px solid gray; width: 100%;" required>
                            </div>
<!--                            <div class="col-sm-2 quiz-price-div">
                                <input type="number" name="quiz-price" placeholder="Price" 
                                       style="border: none; border-bottom: 1px solid gray; width: 100%; "  >
                            </div>-->
                            <div class="col-sm-11 quiz-description-div" >
                                <textarea name="quiz_description" class="quiz-description" rows='2' placeholder='Quiz description'></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3"></div>
                <!--KET THUC PHAN MO TA QUIZ-->
            </div> 
              
              <!--PHAN MO TA Category-->
            <div class="container_body row">

                <div class="col-sm-3"></div>
                <div class="col-sm-6 quiz category-div" style="padding-left: 20px; ">
                    <h3>Category</h3>
                    <c:forEach var="c" items="${cDAO.category}">
                    <label name="" class="btn cate btncategory btn-outline-primary btn-sm rounded-pill text-nowrap" id="cate${c.category_id}"  type="button" onclick="changecolor()">
                       ${c.category_name}
                        <input class="choose-category check-right-option" type="checkbox" name="chooseCategory" value="${c.category_id}" style="display: none;" >
                    </label>
                   </c:forEach>
                </div>
                <div class="col-sm-3"></div>

            </div>   
            <!--KET THUC PHAN MO TA CATEGORY-->

            <!--PHAN MO TA QUESTION-->
            <div class="create_new_quesiton row" name="quiz" id="createq"  style="width: 100%;">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 question" id="1"> 
                    <div class="remove-question-div">
                        <button id="removeRow" type="button" class="" style="float: right; margin-top:20px; margin-right: 20px;">
                            <i class="fas fa-trash-alt"></i>
                        </button>
                    </div> 
                    <div class="question-infor row" >
                        <div id="question-information">
                            <div class="col-sm-11 question-div" id="question">
                                <textarea class="question-description" rows="2" id="ques-des1" placeholder="Question"></textarea>
                            </div>
                            <div class="col-sm-12 row option-div">
                                <div id="createOption1" style="width: 100%;">
                                    <div id="innerQue" class="innerQue1 row">
                                        <div class="choose-right-option-div col-sm-1">
                                            <input class="choose-right-option1" type="checkbox" name="choose-right-option" value="ON" >
                                        </div>
                                        <div class="option-content col-sm-9" id="option-content">
                                            <input type="text" id="answer" class="option-description1" placeholder="option-content"
                                                   style="border: none; border-bottom: 1px solid gray; width: 100%;" >                                
                                        </div>                         
                                        <div class="remove-option-div col-sm-1">                               
                                            <button class="remove-option btn btn-white btn-sm" type="button" id="removeInnerQue"><i class="fas fa-trash-alt"></i></button>
                                        </div>                         
                                    </div>
                                </div>
                                <div class="add-more-option-div col-sm-3">
                                    <button class="add-more-option btn-primary" onclick="addInnerQue('createOption1')" type="button">Add option</button>
                                    
                                </div>
                                <div class="col-sm-10"></div>                            
                            </div>
                            <div class="col-sm-11 question-instruction-div" id="Instruction">
                                <textarea class="question-instruction" id="ques-instruc1" rows="2" placeholder="Instruction"></textarea>
                            </div>
                            <br>

                        </div>
                    </div>
                </div>            
                <div class="col-sm-3"></div>                
            </div>
            <!--KET THUC PHAN MO TA QUESTION-->

            <!--Add new question-->
            <div id="newRow" class="newQue row">
                <!--End of new question-->    
            </div>

            <div class="bton row">
                <!--PHAN BUTTON "ADD-QUESTION" VA "SAVE"-->
                <div class="col-sm-3"></div>
                <div class="col-sm-5 add-more-question-div">
                    <button class="add-more-question btn btn-success" onclick="addQue()" type="button">Add Question</button>
                </div>            
                <div class="col-sm-1 save-quiz-div">
                    <input class="save-quiz btn btn-white" type="submit" onclick="getAll()" value="Save" >
                </div>
                <div class="col-sm-3"></div>
                <!--KET THUC 2 BUTTON-->
            </div>
            <div>
                <input id="HiddenInput" name="ListQuestion" value="" type="hidden">
                <input id="HiddenInputOption" name="ListOption" value="" type="hidden">
            </div>
           
        </form>
        
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

        <!--Our js-->
        <script src="assets/js/CreateQuiz.js"></script>
        <script>
                        var textarea = document.querySelector(".quiz-description");
                        textarea.addEventListener('keydown', autosize);
                        function autosize() {
                            var el = this;
                            setTimeout(function () {
                                el.style.cssText = 'height:auto; padding:0';
                                el.style.cssText = 'height:' + el.scrollHeight + 'px';
                            }, 0);
                        }
        </script>
    </body>
</html>
