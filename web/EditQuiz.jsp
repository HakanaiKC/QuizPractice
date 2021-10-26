<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <jsp:useBean id="cDAO" class="dao.CategoryDAO" scope="request"></jsp:useBean>
        <%--<jsp:useBean id="qDAO" class="dao.QuizDAO" scope="request"></jsp:useBean>--%>
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
        <script>
            function changecolorOnLoad() {

                console.log(document.getElementsByClassName("cate").length);
                for (var qwe = 1; qwe <= document.getElementsByClassName("cate").length; qwe++) {

                    if (document.getElementsByClassName("choose-category")[qwe - 1].checked) {
                        var links = document.getElementById("cate" + qwe);
                        links.style.color = "white";
                        links.style.backgroundColor = "#2196f3";
                    } else {
                        var links = document.getElementById("cate" + qwe);
                        links.style.color = "#2196f3";
                        links.style.backgroundColor = "white";
                    }

                }

            }

        </script>
    </head>
    <body onload="changecolorOnLoad();">
        <%@include file="Header_All.jsp" %>
        <h1 style="text-align: center; color: #0996d6">Edit Quiz</h1>
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
        <form  method="post"  style="min-height: 800px;">
            <div class="container_body row">
                <!--PHAN MO TA QUIZ-->
                <div class="col-sm-3"></div>
                <div class="col-sm-6 quiz"> 
                    <div name="quiz-information">
                        <div class="quiz-infor row">
                            <div class="col-sm-9 quiz-title-div">
                                <input type="text" name="quiz_title" placeholder="Quiz Title" value="${title.name}"
                                       style="border: none; border-bottom: 1px solid gray; width: 100%;" readonly>
                            </div>
                            <div class="col-sm-11 quiz-description-div" >
                                <textarea name="quiz_description" class="quiz-description" rows='2' placeholder='Quiz description'>${title.description}</textarea>
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
                    <c:forEach items="${listCat}" var="c">

                        <label  name="" class="btn cate btncategory btn-outline-primary btn-sm rounded-pill text-nowrap" id="cate${c.category_id}"  type="button" onclick="changecolor()">
                            ${c.category_name}
                            <c:if test="${c.checkCategory == 1}">
                                <input style="display: none;" checked class="choose-category check-right-option" type="checkbox" name="chooseCategory" value="${c.category_id}"  >
                            </c:if>
                            <c:if test="${c.checkCategory != 1}">
                                <input style="display: none;" class="choose-category check-right-option" type="checkbox" name="chooseCategory" value="${c.category_id}"  >
                            </c:if>
                        </label>
                    </c:forEach>
                </div>
                <div class="col-sm-3"></div>

            </div>   
            <!--KET THUC PHAN MO TA CATEGORY-->

            <!--PHAN MO TA QUESTION-->
            <c:forEach items="${allQuestion}" var="q">
                <div class="create_new_quesiton row" name="quiz" id="createq"  style="width: 100%;">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6 question" id="CreatedQuiz${q.question_id}"> 
                        <div class="remove-question-div">
                            <button id="removeRow" type="button" class="" style="float: right; margin-top:20px; margin-right: 20px;">
                                <i class="fas fa-trash-alt"></i>
                            </button>
                        </div> 
                        <div class="question-infor row" >
                            <div id="question-information">
                                <div class="col-sm-11 question-div" id="question">
                                    <textarea class="question-description" rows="2" id="ques-des${q.question_id}" placeholder="Question">${q.question}</textarea>
                                </div>
                                <div class="col-sm-12 row option-div">
                                    <div id="createOption${q.question_id}" style="width: 100%;">
                                        <c:forEach items="${allOption}" var="option">
                                            <c:if test="${q.question_id == option.question_id}">
                                                <div id="innerQue" class=" innerQue${q.question_id} row">
                                                    <div class="choose-right-option-div col-sm-1">
                                                        <c:if test="${q.question_id == option.question_id && option.right_option ==1}">
                                                            <input checked class="choose-right-option${q.question_id}" type="checkbox" name="choose-right-option" value="ON" >
                                                        </c:if>
                                                        <c:if test="${q.question_id == option.question_id && option.right_option !=1}">
                                                            <input class="choose-right-option${q.question_id}" type="checkbox" name="choose-right-option" value="ON" >
                                                        </c:if>
                                                    </div>
                                                    <c:if test="${q.question_id == option.question_id}">
                                                        <div class="option-content col-sm-9" id="option-content">
                                                            <input type="text" id="answer" class="option-description${q.question_id}" placeholder="option-content"
                                                                   value="${option.option_content}"  style="border: none; border-bottom: 1px solid gray; width: 100%;" >
                                                        </div> 
                                                    </c:if>
                                                    <c:if test="${q.question_id == option.question_id}">
                                                        <div class="remove-option-div col-sm-1">  
                                                            <button class="remove-option btn btn-white btn-sm" type="button" id="removeInnerQue"><i class="fas fa-trash-alt"></i></button>
                                                        </div>  
                                                    </c:if>
                                                </div>
                                            </c:if>
                                        </c:forEach>              
                                    </div>
                                    <div class="add-more-option-div col-sm-3">
                                        <button class="add-more-option btn-primary" onclick="addInnerQue('createOption${q.question_id}')" type="button">Add option</button>
                                    </div>
                                    <div class="col-sm-10"></div>                            
                                </div>
                                <div class="col-sm-11 question-instruction-div" id="Instruction">
                                    <textarea  class="question-instruction" id="ques-instruc${q.question_id}" rows="2" placeholder="Instruction">${q.instruction}</textarea>
                                </div>
                                <br>
                            </div>
                        </div>
                    </div>            
                    <div class="col-sm-3"></div>                
                </div>
            </c:forEach>
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
                <input name="Quiz_ID" value="${QuizID}" type="hidden">
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
        <script src="assets/js/EditQuiz.js"></script>
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

