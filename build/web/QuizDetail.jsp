<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
              href="assets/css/QuizDetail.css"
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
        <%@include file="Header_All.jsp" %>

        <div class="container_home">
            <!--Loader-->
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
            <!--End Loader-->
            <div class="row border rateting" style="padding-top: 20px;background-color: white;">
                <div class="col-sm-2 "></div>
                <div class="col-sm-2 itemname">${quiz.name}</div>
                <div class="col-sm-2"></div>
                <div class="col-sm-5"></div>
                <div class="col-sm-2 "></div>

                <!--Rate-->
                <div class="col-sm-6">
                    <span class="rate-total" data-rating="4.8" id="starrate"></span>
                    <!--Change average rating-->

                    <!--User rate-->
                    <c:if test="${sessionScope.userSeisson !=null}">
                        <button type="button" class="btn btn-link" data-toggle="modal" data-target="#exampleModal">
                             Rate and feedback ^^
                        </button>
                    </c:if>
                    <form action="Feedback" method="post">
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Rate the quiz</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <input type="hidden" name="myField" id="myField" value="">
                                        <span class="my-rating-2"></span>
                                        <span name="rate" id="live-rating" class="live-rating"></span>   
                                        <hr>
                                        <h4>Feedback</h4>
                                        <input name="quizid" value="${quiz.quiz_id}" hidden>
                                        <textarea id="feedback" name="feedback"
                                                  type="text"
                                                  class="form-control"
                                                  placeholder="Your message"
                                                  rows="3"></textarea>
                                    </div>
                                    <input name="quizid" value="${quiz.quiz_id}" hidden>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!--End User rate-->  
                </div>
            </div>
        </div>      
        <!--End Rate-->

        <div class="row border col-sm-12 cardholder1">

            <!--Left box-->
            <div class="col-sm-1 menu">
                <div class="btn-group-vertical mb-2 mr-lg-1" style="padding-top: 2em;">
                    <a class="btn btn-light learn" href="Learn.jsp">Learn</a>
                    <a class="btn btn-light exam" href="QuizResult.jsp">Exam</a>
                    <a class="btn btn-light review" href="QuizResult.jsp">Review</a>
                </div>
            </div>
            <!--Left box-->


            <!--Flash card-->
            <div class="col-sm-5 center">
                <div class="cards__single">
                    <div class="cards__front">
                        <p class="question-side" id="question-side">
                            Do you love SWP?
                        </p>
                    </div>
                    <div class="cards__back">
                        <p class="answer-side" id="answer-side">Yes, I do</p>
                    </div>
                </div>

                <div class="buttonn">
                    <button type="button" style="border: none; background-color: white;"><span aria-hidden="true"
                                                                                               class="material-icons">chevron_left</span></button>
                    <span id="positionIndex">0/0</span>
                    <button type="button" style="border: none; background-color: white;"><span aria-hidden="true"
                                                                                               class="material-icons">chevron_right</span></button>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>

    <div class="container_home">
        <div class="row border cardholder1">
            <div class="col-sm-2 "> </div>
            <div class="row col-sm-2">
                <div class="avatar col-sm-0">
                    <a href="ProfileServlet?id=${creator.user_id}" role="button">
                        <c:if test = "${creator.avatar == null}">
                            <img src="assets/images/unnamed.jpg" alt="Avatar" class="rounded-circle"
                                 width="40"></c:if>
                        <c:if test = "${creator.avatar != null}">
                            <img src="uploads/${creator.avatar}" alt="Avatar" class="rounded-circle"
                                 width="40">
                        </c:if>
                    </a>
                </div>
                <div class="card-creator col-sm-8">${creator.username}</div>
            </div>

            <div class="col-sm-2"></div>
            <div class="col-sm-5"></div>
            <div class="col-sm-2"> </div>
        </div>
    </div>
    <!--End Flashcard-->

    <!--Study Section-->
    <div class="container_home1">
        <div class="row cardholder">        
            <c:forEach items="${listQuestion}"  var="question">                
                <div class="card-question col-sm-7">
                    <div class="answer">
                        <br>
                        <c:forEach items="${listOption}"  var="option">
                            <c:if test="${option.question_id == question.question_id && option.right_option==1}">
                                <p class="option">
                                    ${option.option_content}
                                </p>
                            </c:if>
                        </c:forEach>
                        <br>
                    </div>

                    <div class="question">${question.question}  
                        <hr>
                        <c:forEach items="${listOption}"  var="option">
                            <c:if test="${option.question_id == question.question_id}">
                                <p class="option">
                                    ${option.option_content}
                                </p>
                            </c:if>
                        </c:forEach>
                        <br>
                    </div> 
                </div>
                <div class="col-sm-7 showinstruction" id="showinstruction" onclick="myFunction()" style="cursor: pointer; color: blue;">Show instruction</div>
                <div class="col-sm-7 instruction" id="instruction" style="display: none;">
                    ${question.instruction}
                </div>
            </c:forEach>
        </div>

    </div>
    <!--End Study Section-->


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
    <script src="assets/vendor/jquery.star-rating-svg.js"></script>
    <script src="assets/vendor/jquery.star-rating-svg.min.js"></script>
    <script src="assets/vendor/jquery.star-rating-svg_1.js"></script>
</body>

<script>
    const cards = document.querySelectorAll(".cards__single");

    function flipCard() {
        this.classList.toggle("flip");
    }
    cards.forEach((card) => card.addEventListener("click", flipCard));
</script>

<script>
    function myFunction() {
        var y = document.getElementById("showinstruction");
        var x = document.getElementById("instruction");
        if (x.style.display === "none") {
            y.innerHTML = "Hide Instruction";
            x.style.display = "block";
        } else {
            y.innerHTML = "Show Instruction";
            x.style.display = "none";
        }
    }
    $(".my-rating-2").starRating({
        disableAfterRate: false,
        totalStars: 5,
        useFullStars: true,
        activeColor: 'rgb(242, 208, 73)',
        useGradient: false,
        callback: function (currentRating, $el) {
            document.getElementById("myField").value = currentRating;
        }
    });
    $(function () {
        $(".rate-total").starRating({
            totalStars: 5,
            starSize: 20,
            activeColor: 'rgb(242, 208, 73)',
            useGradient: false,
            readOnly: true
        });
    });    
</script>
</html>
