<!DOCTYPE html>
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
        
        <!-- Quill Theme -->
        <link type="text/css"
              href="assets/css/quill.css"
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
            <div class="row border rateting">
                <div class="col-sm-2 "></div>
                <div class="col-sm-2 itemname">SWP123</div>
                <div class="col-sm-2"></div>
                <div class="col-sm-5"></div>
                <div class="col-sm-2 "></div>

                <!--Rate-->
                <div class="col-sm-6">
                    <span class="rate-total" data-rating="4.8"></span>
                    <!--Change average rating-->

                    <!--User rate-->    
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                        Rate the quiz!
                    </button>
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
                                    <span class="my-rating-2"></span>
                                    <span class="live-rating"></span>
                                    <h4>Your feedback</h4>
                                    <div style="height: 150px;"
                                         data-toggle="quill"
                                         data-quill-placeholder="Your message">                                      
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Rate</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End User rate-->  
                </div>
            </div>
        </div>
        <!--End Rate-->

        <div class="row border col-sm-12 cardholder1">

            <!--Left box-->
            <div class="col-sm-1 menu">
                <div class="cardset">
                    <div class="learn"><a href="Learn.jsp">Learn</a></div>
                    <div class="exam"><a href="QuizResult.jsp">Exam</a></div>
                    <div class="review"><a href="QuizResult.jsp">Review</a></div>
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
            <div class="row col-sm-2"><div class="avatar col-sm-0"><a href="#" role="button"><img
                            src="assets/images/people/50/guy-6.jpg" alt="Avatar" class="rounded-circle"
                            width="40"></a></div>
                <div class="card-creator col-sm-8">card-creator</div>
            </div>

            <div class="col-sm-2"></div>
            <div class="col-sm-5"></div>
            <div class="col-sm-2 "> </div>
        </div>
    </div>
    <!--End Flashcard-->

    <!--Study Section-->
    <div class="container_home1">
        <div class="row cardholder">        
            <div class="card-question col-sm-7">
                <div class="answer">C</div>
                <div class="question">IoT gateways perform several critical functions such as: (Which one is wrong).
                    <br>
                    <p class="option">
                        A. Device connectivity
                    </p>

                    <p class="option">
                        B. Protocol translation
                    </p>
                    <p class="option">
                        C. Improving networks
                    </p>
                    <p class="option">
                        D.Data filtering and processing, security
                    </p>
                    <br>
                </div> 
            </div>
            <div class="col-sm-7 showinstruction" id="showinstruction" onclick="myFunction()" style="cursor: pointer; color: blue;">Show instruction</div>
            <div class="col-sm-7 instruction" id="instruction" style="display: none;">
                you just apply the formula and calculate it GLHF.
            </div>
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
    
    <!-- Quill -->
    <script src="assets/vendor/quill.min.js"></script>
    <script src="assets/js/quill.js"></script>
    
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
        onHover: function (currentIndex, currentRating, $el) {
            $('.live-rating').text(currentIndex);
        },
        onLeave: function (currentIndex, currentRating, $el) {
            $('.live-rating').text(currentRating);
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
