<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Learn</title>        

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
        <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/css/star-rating-svg.css">
        <script src="assets/vendor/jquery.star-rating-svg.js"></script>
        <link type="text/css"
              href="assets/css/learn.css"
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
            <div class="row border rateting">
                <div class="col-sm-2 "></div>
                <div class="col-sm-2 itemname">SWP123</div>
                <div class="col-sm-2"></div>
                <div class="col-sm-5"></div>
                <div class="col-sm-2 "></div>

                <!--Rate-->
                <div class="col-sm-6">
                    <div class="my-rating-4" data-rating="2.5"> 
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
                                        <span class="my-rating-9"></span>
                                        <span class="live-rating"></span>
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
                    <!--End Rate-->

                    
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2"></div>
                <div class="row border col-sm-12 cardholder1">

                    <!--Left box-->
                    <div class="col-sm-1 menu">
                        <div class="cardset border">
                            <div class="learn"><a href="access_success.html">Learn</a></div>
                            <div class="exam"><a href="access_success.html">Exam</a></div>
                            <div class="review"><a href="access_success.html">Review</a></div>
                        </div>
                    </div>
                    <!--Left box-->

                    <!--Flash card-->
                    <div class="col-sm-6 center">
                        <div class="flashcard">
                            <div id="cardButton"><div id="cardText"></div></div>
                        </div>
                        <div class="buttonn">
                            <input
                                type="button"
                                id="prevCard"
                                value="previous"
                                onclick="cardsHandle.cardMove(-1);"
                                />
                            <span id="positionIndex">0/0</span>
                            <input
                                type="button"
                                id="nextCard"
                                value="next"
                                onclick="cardsHandle.cardMove(1);"
                                />
                        </div>
                    </div>
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
                <div class="row  cardholder">        
                    <div class="card-question col-sm-7">
                        <div class="answer">C</div>
                        <div class="question">IoT gateways perform several critical functions such as: (Which one is wrong).
                            <br><br>
                            A. Device connectivity
                            <br>
                            B. Protocol translation
                            <br>
                            C. Improving networks
                            <br>
                            D.Data filtering and processing, security
                            <br>
                        </div> 
                    </div>
                    <div class="card-question col-sm-7">
                        <div class="answer">C</div>
                        <div class="question">Which one of the following statements/situations/conversations align with an agile mindset?
                            <br><br>
                            A. Manager: "The customer is suggesting another change in feature X which is complete according to the specification. They agree that it was built as we agreed upon but it lacks some functionality and will result in user frustration. Should we implement the change or not?"
                            Developer: "Yes, if it does not fulfill user needs, we should make the change."
                            <br>
                            B. A manager e-mails her team: "Meeting face to face just for a 15 minute discussion is inefficient, let us all just dial-in from our desk."
                            <br>
                            C. A software vendor says to a client: "We must define exactly what the user needs and put that in the agreement."
                            <br>
                            D. A manager providing a status update to a customer says: "We are done with requirements and design so we are 50% done."
                        </div> 

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

            <script src="assets/vendor/jquery.star-rating-svg_1.js"></script>
    </body>

    <script>
                                    String.prototype.isEmpty = function () {
                                        // Returns if a string has only whitespace
                                        return this.length === 0 || !this.trim();
                                    };

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

                                    cardsHandle.cardAdd(
                                            "IoT gateways perform several Hello or Good MorningHello or \n\
                            Good MorningHello or Good MorningHello or Good MorningHello or \n\
Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
or Good MorningHello or Good MorningHello or Good MorningHello \n\
overflow: scroll;overflow: scroll;overflow: scroll;or \n\
Good Morningcritical functions such as: (Which one is wrong).<br>A. \n\
Device connectivity<br>B. Protocol translation<br>C. Improving \n\
networks<br>D.Data filtering and processing, security",
                                            "C"
                                            );
                                    cardsHandle.cardAdd("Hello or Good Morning", "Bonjour");
                                    cardsHandle.cardAdd("I love SWP", "SWP is love");
                                    cardsHandle.cardUpdate();

                                    cardsHandle.cardButton.addEventListener("click", function () {
                                        cardsHandle.cardTap();
                                    });

                                    $(function () {
                                        $(".my-rating-4").starRating({
                                            totalStars: 5,
                                            starShape: 'rounded',
                                            starSize: 30,
                                            activeColor: 'crimson',
                                            useGradient: false,
                                            readOnly: true
                                        });
                                        $(".my-rating-9").starRating({
                                            useFullStars: true,
                                            disableAfterRate: false,
                                            onHover: function (currentIndex, currentRating, $el) {
                                                $('.live-rating').text(currentIndex);
                                            },
                                            onLeave: function (currentIndex, currentRating, $el) {
                                                $('.live-rating').text(currentRating);
                                            }
                                        });
                                    });
    </script>
</html>
