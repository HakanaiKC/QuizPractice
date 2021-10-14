<%-- 
    Document   : Payment
    Created on : Oct 10, 2021, 10:04:57 PM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Payment</title>

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
        <div class="mdk-header-layout__content d-flex flex-column">
            <div class="page ">

                <div class="container page__container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Home">Home</a></li>
                        <li class="breadcrumb-item active">Pay</li>
                    </ol>
                    <h1 class="h2">Payment method</h1>
                    <div class="row">
                        <div class="col-lg">
                            <ul class="card list-group list-group-fit">
                                <li class="list-group-item">
                                    <div class="media align-items-center">
                                        <div class="media-left">
                                            <span class="btn btn-default btn-circle"><i class="material-icons">credit_card</i></span>
                                        </div>
                                        <div class="media-body">
                                            <p class="mb-0">**** **** **** 2422</p>
                                            <small class="text-muted">Updated on 12/02/2016</small>
                                        </div>
                                        <div class="media-right">
                                            <a href="#"
                                               class="btn btn-primary">Pay</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="media align-items-center">
                                        <div class="media-left">
                                            <span class="btn btn-white btn-circle"><i class="material-icons">credit_card</i></span>
                                        </div>
                                        <div class="media-body">
                                            <p class="mb-0">**** **** **** 6321</p>
                                            <small class="text-muted">Updated on 11/01/2016</small>
                                        </div>
                                        <div class="media-right">
                                            <a href="#"
                                               class="btn btn-primary">Pay</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="media align-items-center">
                                        <div class="media-left">
                                            <span class="btn btn-white btn-circle">
                                                <i class="fab fa-paypal"></i>
                                            </span>
                                        </div>
                                        <div class="media-body">
                                            PayPal
                                        </div>
                                        <div class="media-right">
                                            <a href="#"
                                               class="btn btn-default">Pay</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg">
                            <div class="card">
                                <form action="#"
                                      class="form-horizontal">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label class="form-label">Card Number:</label>
                                            <input type="text"
                                                   class="form-control"
                                                   placeholder="XXXX XXXX XXXX XXXX XXXX">
                                        </div>
                                        <div class="form-group row">
                                            <label for="cvc"
                                                   class="col-form-label form-label col-md-4">CVC:</label>
                                            <div class="col-md-8">
                                                <input id="cvc"
                                                       type="text"
                                                       class="form-control"
                                                       placeholder="123"
                                                       style="width:80px">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="expires"
                                                   class="col-form-label form-label col-md-4">Expires:</label>
                                            <div class="col-md-8">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <select id="expires"
                                                                class="custom-control custom-select form-control">
                                                            <option value="1">January</option>
                                                            <option value="2">February</option>
                                                            <option value="3">March</option>
                                                            <option value="4">April</option>
                                                            <option value="5">May</option>
                                                            <option value="6">June</option>
                                                            <option value="7">July</option>
                                                            <option value="8">August</option>
                                                            <option value="9">September</option>
                                                            <option value="10">October</option>
                                                            <option value="11">Novemeber</option>
                                                            <option value="12">December</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <select class="custom-control custom-select form-control">
                                                            <option value="1" selected>2016</option>
                                                            <option value="2">2017</option>
                                                            <option value="3">2018</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center">
                                        <button type="submit"
                                                class="btn btn-success">Make Payment</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
        <%@include file="Boostrap_Header.jsp"%>       
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
