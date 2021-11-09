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
        <div class="mdk-header-layout__content d-flex flex-column" style="min-height: 700px;">
            <div class="page ">

                <div class="container page__container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Home">Home</a></li>
                        <li class="breadcrumb-item active">Pay</li>
                    </ol>
                    <h1 class="h2">Payment method</h1>
                    <div class="row">
                        <div class="col-lg">
                            <div class="card row" style="display: flex; flex-direction: row;">
                                <div class="col-md-7">
                                    <form action="PurchaseRuby" method="post"
                                          class="form-horizontal">
                                        <div class="card-body">
                                            <p style="color: #27376B; font-size: 24px;">Step 1: Please input amount of ruby you want purchase</p>
                                            <div class="form-group">
                                                <label class="form-label">MOMO Acount:</label>
                                                <input type="text"
                                                       class="form-control"
                                                       value="VU TIEN DAT - 0377743162" readonly >
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Amount of Ruby:</label>
                                                <input type="number" min="10" max="10000"
                                                       class="form-control" id="input-money"
                                                       name="rubyInput"
                                                       placeholder="Amount of ruby (1 Ruby = 1000 vnđ)" onchange="calculateMoney(this.value)">
                                                <p id="total-money" style="font-size: 20px;"></p>
                                            </div>
                                            <p style="color: #27376B; font-size: 24px;">Step 2: Please fill in deposit information to confirm</p>
                                            <div class="form-group">
                                                <label class="form-label">Phone number:</label>
                                                <input type="text"
                                                       class="form-control"
                                                       name="phoneNumberInput"
                                                       placeholder="phone number used to pay">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Trading code:</label>
                                                <input type="text"
                                                       name="tradingCodeInput"
                                                       class="form-control"
                                                       placeholder="Trading code">
                                            </div>
                                            <p style="color: #27376B; font-size: 16px;">(ruby will be sent to your account no later than 8 hours after payment)</p>
                                        </div>
                                        <div class="card-footer text-center">
                                            <button type="submit"
                                                    class="btn btn-success">Make Payment</button>
                                        </div>
                                        <p style="color: blue;">${requestScope.SentSuccessfully}</p>
                                    </form>
                                </div>
                                <div class="col-md-5">
                                    <p style="color: #27376B; font-size: 24px; margin-top: 20px;">QR CODE:</p>
                                    <img src="uploads/momo.png" height="512" width="400"></div>
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
        <script>
            function calculateMoney(val) {
                var input = document.getElementById("input-money").value;
                document.getElementById("total-money").innerHTML = "= " + val*1000 + " vnđ";
            }
        </script>
    </body>
</html>
