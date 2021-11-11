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
        <!-- Sweet Alert -->
        <link rel="stylesheet"
              href="assets/css/sweetalert.css">
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
                    <span class="rate-total" data-rating="${avgRate}" id="starrate"></span>
                    <!--Change average rating-->

                    <!--User rate-->
                    <c:if test="${sessionScope.userSeisson !=null  && sessionScope.userSeisson.role_id != 2}">
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
        <form action="Feedback?Action=feedback" method="post">
            <div class="modal fade" id="feedback" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Rate the quiz</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <h4>Feedback</h4>
                            <input name="quizid" value="${quiz.quiz_id}" hidden>
                            <textarea id="feedback" name="feedback"
                                      type="text"
                                      class="form-control"
                                      placeholder="Your message"
                                      rows="3"></textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>         
        <!--End Rate-->

         <div class="row border col-sm-12 cardholder1">
            <div class="col-sm-2"></div>
            <!--Left box-->
            <div class="col-sm-1 menu">
                <div class="btn-group-vertical mb-2 mr-lg-1" style="padding-top: 2em;">
                    <c:if test="${sessionScope.userSeisson !=null && sessionScope.userSeisson.role_id != 2}">
                    <form method="post" action="LearnServlet?quiz_id=${quiz.quiz_id}">
                        <button style="width: 100px;" type="submit" class="btn btn-white">
                            Learn
                        </button>
                    </form>    
                    <a class="btn btn-light exam" href="ListExamServlet?quiz_id=${quiz.quiz_id}">Exam</a>
                    <a class="btn btn-light review" href="ListExamServlet?quiz_id=${quiz.quiz_id}">Review</a>
                    </c:if>
                    <c:if test="${sessionScope.userSeisson.role_id == 2}">
                    <a class="btn btn-light exam" href="#">Learn</a>
                    <a class="btn btn-light exam" href="#">Exam</a>
                    <a class="btn btn-light review" href="#">Review</a>    
                    </c:if>
                </div>
            </div>
            <!--Left box-->


            <!--Flash card-->
            <div class="col-sm-4 center">
                <div class="cards__single">
                    <div class="flashcard">
                        <div id="cardButton">
                            <div id="cardText"></div>
                        </div>
                    </div>
                </div>
                <div class="buttonn">
                    <button type="button" id="prevCard" value="previous" onclick="cardsHandle.cardMove(-1);" class="prevbutton"
                            style="border: none; background-color: white;"><span aria-hidden="true"
                                                                         class="material-icons">chevron_left</span></button>
                    <span id="positionIndex">0/0</span>
                    <button type="button" id="nextCard" value="next" onclick="cardsHandle.cardMove(1);"
                            style="border: none; background-color: white;"><span aria-hidden="true"
                                                                         class="material-icons">chevron_right</span></button>
                </div>
            </div>
        </div>
    </div>

    <div class="container_home">
        <div class="row border cardholder1">
            <div class="col-sm-2 "></div>
            <div class="row col-sm-6" style="margin-left: 20px;">
                <div class="avatar col-sm-0">

                    <a href="ProfileServlet?id=${creator.user_id}" role="button">
                        <c:if test = "${creator.avatar == null}">
                            <img src="assets/images/unnamed.jpg" alt="Avatar" class="rounded-circle"
                                 width="50" height="50"></c:if>
                        <c:if test = "${creator.avatar != null}">
                            <img src="uploads/${creator.avatar}" alt="Avatar" class="rounded-circle"
                                 width="50" height="50">
                        </c:if>
                    </a>
                </div>
                <div class="card-creator col-sm-8">${creator.username}</div>
            </div>

            <div class="col-sm-2"> </div>
        </div>
    </div>
    <!--End Flashcard-->

    <!--Study Section-->
    <div class="container_home1 row">
        <div class="col-sm-2"></div>
        <div class="row cardholder col-sm-7">

            <c:forEach items="${listQuestion}"  var="question" >                   
                <div class="card-question col-sm-12" >

                    <div class="answer" id="ans${question.question_id}">
                        <br>
                        <c:forEach items="${listOption}"  var="option">
                            <c:if test="${option.question_id == question.question_id && option.right_option==1}">
                                ${option.option_content}
                            </c:if>
                        </c:forEach>
                    </div>

                    <div class="question" id="ques${question.question_id}">${question.question} <br> 
                        <c:forEach items="${listOption}"  var="option">
                            <c:if test="${option.question_id == question.question_id}">
                                ${option.option_id +1}.
                                ${option.option_content}
                                <br>
                            </c:if>
                        </c:forEach>
                        <br>
                    </div> 
                </div>
                <br>

                <c:if test="${question.instruction ne '' && sessionScope.userSeisson.role_id !=2 && sessionScope.userSeisson.user_id != creator.user_id}">
                    <button data-id="${question.question_id}" type="button" class="btn btn-primary buton" data-toggle="modal" data-target="#instructionModal">
                        Instruction
                    </button>
                </c:if>
                <c:if test="${sessionScope.userSeisson.user_id == creator.user_id}">
                    <button 
                        class="btn btn-info col-sm-3" 
                        data-toggle="swal" 
                        data-swal-title="A little help for you"
                        data-swal-text="${question.instruction}">
                        Instruction
                    </button>
                </c:if>
                <div class="modal fade" id="instructionModal" tabindex="-1" role="dialog" aria-labelledby="instructionModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">    
                            <div class="modal-header">
                                <h5 class="modal-title" id="instructionModalLabel">Buy Instruction</h5>
                            </div>

                            <c:if test="${sessionScope.userSeisson.ruby >= 1.0}">                      
                                <div class="modal-body">
                                    <label>Purchase Ruby to unlock this instruction</label>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <form action="BuyInstructionServlet" method="post">
                                        <input type="text" value="${creator.user_id}" name="creatorId" hidden/>
                                        <input type="text" value="${quiz.quiz_id}" name="quizId" hidden/>
                                        <input type="text" value="${question.question_id}" name="opId" id="opId" hidden/>
                                        <button type="submit" class="btn btn-primary">Purchase</button>
                                    </form>                                
                                </div>     
                            </c:if>

                            <c:if test="${sessionScope.userSeisson.ruby < 1.0}">                                                    
                                <div class="modal-body">
                                    <label>You don't have enough Ruby to unlock this instruction</label>
                                </div>
                                <div class="modal-footer">                                    
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <a href="PurchaseRuby" class="btn btn-primary">Buy Ruby</a>
                                </div>
                            </c:if>
                        </div>
                    </div>
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
    <!-- Global Settings -->
    <script src="assets/js/settings.js"></script>

    <!-- Sweet Alert -->
    <script src="assets/vendor/sweetalert.min.js"></script>
    <script src="assets/js/sweetalert.js"></script>
</body>
<script>
                        const cards = document.querySelectorAll(".cards__single");

                        function flipCard() {
                            this.classList.toggle("flip");
                        }
                        cards.forEach((card) => card.addEventListener("click", flipCard));


                        function Card(front, back) {
                            /*A card is just a container that holds a front and back value! 
                             - You can get either back or front by displaying it*/
                            this.frontVal = front;
                            this.backVal = back;

                            this.display = function (side) {
                                if (side === 0) {
                                    return this.frontVal;
                                } else {
                                    return this.backVal;
                                }
                            };
                        }


                        var count = 1;
                        var cardsHandle = {
                            cards: [],
                            cardInd: 0,
                            cardButton: document.getElementById("cardButton"),
                            cardText: document.getElementById("cardText"),
                            cardTPosition: document.getElementById("positionIndex"),
                            cardSide: 0,

                            cardAdd: function (back, front) {
                                this.cards.push(new Card(back, front));
                            },
                            cardUpdate: function () {
                                var curCard = this.cards[this.cardInd];
                                this.cardText.innerHTML = curCard.display(this.cardSide);
                                this.cardTPosition.innerHTML =
                                        this.cardInd + 1 + "/" + this.cards.length;
                            },
                            cardFlip: function () {

                                if (count % 2 === 1) {
                                    this.cardText.style = "transform: rotatex(180deg)";
                                    count++;
                                } else {
                                    this.cardText.style.removeProperty('transform');
                                    count++;
                                }

                                this.cardSide = (this.cardSide + 1) % 2;
                            },
                            cardMove: function (moveBy) {
                                this.cardInd += moveBy;
                                if (this.cardInd < 0) {
                                    this.cardInd += this.cards.length;
                                }
                                this.cardInd = this.cardInd % this.cards.length;

                                this.cardSide = 0; // Set back to front
                                this.cardUpdate();
                            },
                            cardTap: function () {

                                this.cardFlip();
                                this.cardUpdate(); // Display card
                            }
                        };
                        for (var ii = 0; ii < document.getElementsByClassName("card-question").length; ii++) {
                            cardsHandle.cardAdd(document.getElementById("ques" + ii).innerHTML, document.getElementById("ans" + ii).innerHTML);
                        }



                        cardsHandle.cardUpdate();

                        cardsHandle.cardButton.addEventListener("click", function () {

                            //  cardsHandle.cardFlip();
                            cardsHandle.cardTap();
                        });
</script>

<script>
    function myFunction(idques) {
        var y = document.getElementById("showinstruction" + idques);
        var x = document.getElementById("instruction" + idques);
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

    $(document).on("click", ".buton", function () {
        var myId = $(this).data('id');
        $(".modal-footer #opId").val(myId);
    });
</script>
</html>
