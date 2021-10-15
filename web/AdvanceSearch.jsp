<%-- 
    Document   : AdvanceSearch
    Created on : Oct 15, 2021, 12:40:39 PM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Advance Search</title>        

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
        <%@include file="Header_All.jsp" %>
        <div class="mdk-header-layout js-mdk-header-layout">
            <div class="page ">
                <div class="container page__container">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                            <li class="breadcrumb-item active"
                                aria-current="page">Advance Search</li>
                        </ol>
                    </nav>
                    
                    <!--Category List-->
                    <h1 class="h2">Advance Search</h1>

                    <div class="card bg-white">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-3">
                                    <h4>Categories</h4>
                                </div>
                                <!--Column 1-->
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                            <input id="customCheck01"
                                                   type="checkbox"
                                                   class="custom-control-input">
                                            <label for="customCheck01"
                                                   class="custom-control-label">Mathematics</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <!--Column 2-->
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                            <input id="customCheck03"
                                                   type="checkbox"
                                                   class="custom-control-input">
                                            <label for="customCheck03"
                                                   class="custom-control-label">Mathematics</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <!--Column 3-->
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox">
                                            <input id="customCheck05"
                                                   type="checkbox"
                                                   class="custom-control-input">
                                            <label for="customCheck05"
                                                   class="custom-control-label">Mathematics</label>
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <button type="submit" class="btn btn-info btn-lg"><i class="material-icons mr-1">search</i>Search</button>                                             
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="Footer.jsp" %>
        </div>        
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
