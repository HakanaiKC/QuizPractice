
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Dashboard</title>

    <!-- Google Font: Source Sans Pro -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"
    />
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="assets/fonts/fontawesome-free1/css/all.min.css" />
    <!-- IonIcons -->
    <link
      rel="stylesheet"
      href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
    />
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/css/adminlte.min.css" />
  </head>
  <style>
        .bg-primary{
            background-color: #2196f3!important;
        }
        
        .btn-info{
            background-color: #29b6f6;
            border-color: #29b6f6;
        }
    </style>
  <!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->
<body>
    <%@include file="AdminHeader.jsp" %>
      <div class="hold-transition sidebar-mini" style="display: flex;
  height: auto;
  justify-content: center;
  background-color: #f4f6f9;
  ">
    <div class="wrapper " style="width: 80%;">
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="margin: 0;">
        <!-- Content Header (Page header) -->
        <div class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6">
                <h1 class="m-0">Admin Dashboard</h1>
              </div>
              <!-- /.col -->
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="Home">Home</a></li>
                  <li class="breadcrumb-item active"><a href="AdminServlet?Action=Overview">Overview</a></li>
                </ol>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        
        <!-- Main content -->
        <div class="content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-6">
                <div class="card">
                  <div class="card-header border-0">
                    <div class="d-flex justify-content-between">
                      <h3 class="card-title">QuizPratice Visitors</h3>
                      
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="d-flex">
                      <p class="d-flex flex-column">
                          <span class="text-bold text-lg" id="totalVisitorThisWeek"></span>
                        <span>Total visitors this week</span>
                      </p>
                      <p class="ml-auto d-flex flex-column text-right">
                        
                      </p>
                    </div>
                    <!-- /.d-flex -->
                    <div class="position-relative mb-4">
                      <canvas id="visitors-chart" height="200"></canvas>
                    </div>

                    <div class="d-flex flex-row justify-content-end">
                      <span class="mr-2">
                        <i class="fas fa-square text-primary"></i> This Week
                      </span>

                      <span>
                        <i class="fas fa-square text-gray"></i> Last Week
                      </span>
                    </div>
                  </div>
                </div>
                <!-- /.card -->


                <!-- /.card -->
              </div>
              <!-- /.col-md-6 -->
              <div class="col-lg-6">
                <div class="card">
                  <div class="card-header border-0">
                    <div class="d-flex justify-content-between">
                      <h3 class="card-title">Monthly revenue</h3>

                    </div>
                  </div>
                  <div class="card-body">
                    <div class="d-flex">
                      <p class="d-flex flex-column">
                          <span class="text-bold text-lg" id="moneyThisMonth"></span>
                        <span>Profit this month</span>
                      </p>
                      <p class="ml-auto d-flex flex-column text-right">
                      
                      </p>
                    </div>
                    <!-- /.d-flex -->

                    <div class="position-relative mb-4">
                      <canvas id="sales-chart" height="200"></canvas>
                    </div>

                    <div class="d-flex flex-row justify-content-end">
                      <span class="mr-2">
                        <i class="fas fa-square text-primary"></i> This year
                      </span>

                      <span>
                        <i class="fas fa-square text-gray"></i> Last year
                      </span>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header border-0">
                    <div class="d-flex justify-content-between">
                      <h3 class="card-title">Quiz Created</h3>

                    </div>
                  </div>
                  <div class="card-body">
                    <div class="d-flex">
                      <p class="d-flex flex-column">
                          <span class="text-bold text-lg" id="quizThisMonth"></span>
                        <span>Quiz created this month</span>
                      </p>
                      <p class="ml-auto d-flex flex-column text-right">
                      </p>
                    </div>
                    <!-- /.d-flex -->

                    <div class="position-relative mb-4">
                      <canvas id="quiz-created-chart" height="200"></canvas>
                    </div>

                    <div class="d-flex flex-row justify-content-end">
                      <span class="mr-2">
                        <i class="fas fa-square text-primary"></i> This year
                      </span>

                      <span>
                        <i class="fas fa-square text-gray"></i> Last year
                      </span>
                    </div>
                  </div>
                </div>
                <!-- /.card -->
              </div>
              <!-- /.col-md-6 -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.container-fluid -->
        </div>
        <input id="visitorThisWeek" value="${thisweekVisit}" hidden>
        <input id="visitorLastWeek" value="${lastweekVisit}" hidden>
        <input id="thisyearQuizCreated" value="${thisyearQuizCreated}" hidden>
        <input id="lastyearQuizCreated" value="${lastyearQuizCreated}" hidden>
        <input id="moneyInThisYear" value="${moneyInThisYear}" hidden>
        <input id="moneyInLastYear" value="${moneyInLastYear}" hidden>
        <!-- /.content -->
      </div>
      <!-- /.content-wrapper -->
      
      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
      </aside>
      <!-- /.control-sidebar -->

    </div>
      </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE -->
    <script src="assets/js/adminlte.js"></script>

    <!-- OPTIONAL SCRIPTS -->
    <script src="assets/js/Chart.min.js"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="assets/js/dashboard3.js"></script>

  </body>
</html>

