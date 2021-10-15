<%-- 
    Document   : Earning
    Created on : Oct 10, 2021, 8:41:49 PM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Earning</title>
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
                        <li class="breadcrumb-item active">Earnings</li>
                    </ol>
                    <h1 class="h2">Earnings</h1>

                    <!--Chart-->
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex form-inline">
                                <!--Select date-->
                                <div class="form-group mr-12pt">
                                    <select class="custom-select">
                                        <option selected>2015</option>
                                        <option value="1">2014</option>
                                        <option value="2">2013</option>
                                        <option value="3">2012</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div class="chart-legend m-0 justify-content-start"
                                         id="earningsChartLegend"></div>
                                </div>
                            </div>

                            <!--Ve bang, muon doi don vi tien te doi o day-->
                            <div class="chart" style="padding-top: 2em;">
                                <canvas 
                                    id="LineChart" 
                                    class="chart-canvas"
                                    data-chart-legend="#earningsChartLegend"
                                    data-chart-prefix="$"
                                    data-chart-suffix="k"></canvas>
                            </div>
                        </div>
                    </div>

                    <!--Revenue-->
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">Total <span class="text-primary">$19,239</span></h5>
                        </div>

                        <div data-toggle="lists"
                             data-lists-values='[
                             "js-lists-values-course", 
                             "js-lists-values-revenue",
                             "js-lists-values-fees"
                             ]'
                             data-lists-sort-by="js-lists-values-revenue"
                             data-lists-sort-desc="true"
                             class="table-responsive"> 

                            <table class="table table-nowrap m-0">
                                <thead class="thead-light">
                                    <tr class="text-uppercase small">
                                        <th>
                                            <a href="javascript:void(0)"
                                               class="sort"
                                               data-sort="js-lists-values-course">Course</a>
                                        </th>
                                        <th>
                                            <a href="javascript:void(0)"
                                               class="sort"
                                               data-sort="js-lists-values-revenue">Revenue</a>
                                        </th>
                                    </tr>
                                </thead>

                                <tbody class="list">

                                    <tr>
                                        <td>
                                            <div class="media align-items-center">
                                                <div class="media-body">
                                                    <a class="text-body js-lists-values-course"
                                                       href="#"><strong>Angular Routing In-Depth</strong></a>
                                                    <div class="text-muted small">34 Sales</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-black-70">
                                            &dollar;<span class="js-lists-values-revenue">8,737</span> USD
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div class="media align-items-center">
                                                <div class="media-body">
                                                    <a class="text-body js-lists-values-course"
                                                       href="#"><strong>Angular Unit Testing</strong></a>
                                                    <div class="text-muted small">38 Sales</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center text-black-70">
                                            &dollar;<span class="js-lists-values-revenue">2,521</span> USD
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
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

        <!-- Global Settings -->
        <script src="assets/js/settings.js"></script>

        <!-- Chart.js -->
        <script src="assets/vendor/Chart.min.js"></script>
        <script src="assets/js/chartjs.js"></script>

        <!-- List.js -->
        <script src="assets/vendor/list.min.js"></script>
        <script src="assets/js/list.js"></script>

        <!--De du lieu o day-->
        <script>
            var data = {
                labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                        label: "Performance",
                        data: [0, 10, 5, 15, 20, 0, 12, 35, 21, 3, 5, 38]
                    }]
            };
            var options = {};
            Charts.create('#LineChart', 'line', options, data);
        </script>
    </body>
</html>
