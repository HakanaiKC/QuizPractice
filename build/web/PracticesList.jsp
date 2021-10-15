<!DOCTYPE html>
<html lang="en"
      dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible"
              content="IE=edge">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>My Quiz</title>

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

    <body class=" fixed-layout">

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

        <!-- Header Layout -->
        <div class="mdk-header-layout js-mdk-header-layout">

            <!-- Header -->
            <%@include file="Header_All.jsp" %>
            <!-- // END Header -->

            <!-- Header Layout Content -->
            <div class="mdk-header-layout__content d-flex flex-column">
                <div class="page ">
                    <div class="container page__container">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                            <li class="breadcrumb-item active">My Quiz</li>
                        </ol>
                        <div class="media mb-headings align-items-center">
                            <div class="media-body">
                                <h1 class="h2">My Quiz</h1>
                            </div>
                        </div>
                        <div class="card-columns">
                            <div class="card">
                                <div class="card-header">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="fixed-student-student-take-course.html">
                                                <img src="assets/images/vuejs.png"
                                                     alt="Card image cap"
                                                     width="100"
                                                     class="rounded">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="card-title m-0"><a href="Learn.jsp">Learn VueJs the easy way!</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer bg-white">
                                    <a href="Learn.jsp"
                                       class="btn btn-primary btn-sm">Continue <i class="material-icons btn__icon--right">play_circle_outline</i></a>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="fixed-student-student-take-course.html">
                                                <img src="assets/images/vuejs.png"
                                                     alt="Card image cap"
                                                     width="100"
                                                     class="rounded">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="card-title m-0"><a href="Learn.jsp">Learn VueJs the easy way!</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer bg-white ">
                                    <a href="Learn.jsp"
                                       class="btn btn-success btn-sm">Completed <i class="material-icons btn__icon--right">check</i></a>
                                    <a href="Learn.jsp"
                                       class="btn btn-white btn-sm">Restart <i class="material-icons btn__icon--right">replay</i> </a>
                                </div>
                            </div>
                        </div>

                        <!-- Pagination -->
                        <ul class="pagination justify-content-center pagination-sm">
                            <li class="page-item disabled">
                                <a class="page-link"
                                   href="#"
                                   aria-label="Previous">
                                    <span aria-hidden="true"
                                          class="material-icons">chevron_left</span>
                                    <span>Prev</span>
                                </a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link"
                                   href="#"
                                   aria-label="1">
                                    <span>1</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link"
                                   href="#"
                                   aria-label="1">
                                    <span>2</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link"
                                   href="#"
                                   aria-label="Next">
                                    <span>Next</span>
                                    <span aria-hidden="true"
                                          class="material-icons">chevron_right</span>
                                </a>
                            </li>
                        </ul>
                    </div>


                </div>
            </div>
            <!-- // END Header Layout Content -->
            <%@include file="Footer.jsp" %>
        </div>
        <!-- // END Header Layout -->
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
    </body>

</html>