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
                <div class="quizTitle">Quiz Title</div>
                <div class="exitLearn"><a href="QuizDetail.jsp">X</a></div>
            </div>
            <div class="col-3"></div>
            <div class="col-6 row flashcard">
                <div class="cards__single">
                    <div class="cards__front">
                        <p class="question-side" id="question-side">
                            Do you love Programming?

                        </p>
                        <div class="option-side" id="option-side">A. YES</div>
                        <div class="option-side" id="option-side">B. Of course</div>
                        <div class="option-side" id="option-side">C. Why not?</div>
                        <div class="option-side" id="option-side">D. Fuck yeah</div>


                    </div>
                    <div class="cards__back">
                        <p class="instruction-side" id="instruction-side">
                            because Programming is love <3
                        </p>
                    </div>
                </div>
                <div class="col-11" style="margin-top: 20px; font-size: 20px;" > Choose right option</div>
                <div class="col-5 option" >
                    <input type="button" value="A" name="option" />
                </div>
                <div class="col-5 option" >
                    <input type="button" value="B" name="option" />
                </div>
                <div class="col-5 option" >
                    <input type="button" value="C" name="option" />
                </div>
                <div class="col-5 option" >
                    <input type="button" value="D" name="option" />
                </div>
            </div>
            <div class="col-3"></div>
        </div>
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
        <script>
            const cards = document.querySelectorAll(".cards__single");

            function flipCard() {
                this.classList.toggle("flip");
            }
            cards.forEach((card) => card.addEventListener("click", flipCard));
        </script>
    </body>

</html>
