

<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Home</title>

        <link rel="stylesheet" href="assets/css/library.css" />

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
        <div class="row container_home">
            <div class="col-sm-2"></div>
            <div class="itemname col-sm-4">
                Recent
            </div>
            <div class="col-sm-2">
                <!-- Search -->
                        <form class="search-form d-none d-md-flex">
                            <input type="text" class="form-control" placeholder="Search in library">
                            <button class="btn" type="button"><i
                                    class="material-icons font-size-24pt">search</i></button>
                        </form>
                        <!-- // END Search -->
            </div>
            <div class="col-sm-4"></div>
            
            <!--dùng foreach thì copy h?t ?o?n này, cái này là 1 card-->
            <div class="col-sm-2"></div>
            <div class="card1 col-sm-6">
                <div class="content row">
                    <div class="n-question col-sm-2">n-question</div>
                    <div class="card-creator col-sm-8">card-creator</div>
                    <div class="card-title col-sm-10">card-title</div>
                </div>

            </div>
            <div class="col-sm-4"></div>
            <!--??n ?ây-->
        </div>

        <%--<%@include file="Footer.jsp" %>--%>
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
