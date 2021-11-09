<%-- 
    Document   : PaymentHistory
    Created on : Nov 9, 2021, 11:40:02 AM
    Author     : bekim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Payment History</title>

        <link rel="stylesheet" href="assets/css/layout.css" />

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

        <div class="page ">

            <div class="container page__container p-0">
                <div class="row m-0">
                    <div class="col-lg container-fluid page__container">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Home">Home</a></li>
                            <li class="breadcrumb-item active">Edit Account</li>
                        </ol>

                        <h1 class="h2">Payment History</h1>

                        <div class="card table-responsive"
                             data-toggle="lists"
                             data-lists-values='[
                             "js-lists-values-document",
                             "js-lists-values-amount",
                             "js-lists-values-date"
                             ]'
                             data-lists-sort-by="js-lists-values-document"
                             data-lists-sort-desc="true">
                            <table class="table mb-0">
                                <thead class="thead-light">
                                    <tr>
                                        <th colspan="4">
                                            <a href="javascript:void(0)"
                                               class="sort"
                                               data-sort="js-lists-values-date">Date</a>                                           
                                            <a href="javascript:void(0)"
                                               class="sort"
                                               data-sort="js-lists-values-amount">Money</a>
                                            <a href="javascript:void(0)"
                                               class="sort"
                                               data-sort="js-lists-values-amount">Ruby</a>
                                            <a href="javascript:void(0)"
                                               class="sort"
                                               data-sort="js-lists-values-document">Action</a>
                                        </th>
                                    </tr>
                                </thead>
                                
                                <!--List payment-->
                                <tbody class="list">
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <small class="text-uppercase text-muted mr-2">Date</small>
                                                <small class="text-uppercase js-lists-values-date">12 Feb 2021</small>
                                            </div>
                                        </td>
                                        <td class="text-center">
                                            <div class="d-flex align-items-center">
                                                <small class="text-uppercase text-muted mr-2">Money</small>
                                                <small class="text-uppercase"><span class="js-lists-values-amount">100,000</span> VND</small>
                                            </div>
                                        </td>
                                        <td class="text-right">
                                            <div class="d-flex align-items-center text-right">
                                                <small class="text-uppercase text-muted mr-2">Ruby</small>
                                                <small class="text-uppercase"><span class="js-lists-values-amount">124</span> RUBY</small>
                                            </div>
                                        </td>
                                        <td class="text-right">
                                            <div class="d-flex align-items-center text-right">
                                                <button type="submit" class="btn btn-success smaller">Recharge</button>
                                            </div>
                                        </td>
                                        <td class="text-right">
                                            <div class="d-flex align-items-center text-right">
                                                <button type="submit" class="btn btn-secondary smaller">Withdraw</button>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <small class="text-uppercase text-muted mr-2">Date</small>
                                                <small class="text-uppercase js-lists-values-date">12 Feb 2020</small>
                                            </div>
                                        </td>
                                        <td class="text-center">
                                            <div class="d-flex align-items-center">
                                                <small class="text-uppercase text-muted mr-2">Money</small>
                                                <small class="text-uppercase"><span class="js-lists-values-amount">10,000</span> VND</small>
                                            </div>
                                        </td>
                                        <td class="text-right">
                                            <div class="d-flex align-items-center text-right">
                                                <small class="text-uppercase text-muted mr-2">Ruby</small>
                                                <small class="text-uppercase"><span class="js-lists-values-amount">126</span> RUBY</small>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                                <!--End List payment-->
                            </table>
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
        </div>        
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

        <!-- App Settings (safe to remove) -->
        <script src="assets/js/app-settings.js"></script>

        <!-- List.js -->
        <script src="assets/vendor/list.min.js"></script>
        <script src="assets/js/list.js"></script>
    </body>
</html>
