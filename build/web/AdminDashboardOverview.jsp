<%-- 
    Document   : AdminDashboardOverview
    Created on : Nov 2, 2021, 3:22:52 PM
    Author     : Admin
--%>

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
  <!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->
<body>
  <%@include file="Header_All.jsp" %>
  <div  class="hold-transition sidebar-mini"
    style="
      display: flex;
      height: auto;
      justify-content: center;
      background-color: #f4f6f9;
    "
    >
    <div class="wrapper" style="width: 80%">
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper" style="margin: 0">
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
                  <li class="breadcrumb-item active">
                      <a href="AdminServlet?Action=Statistics">Statistics</a>
                  </li>
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
                    <h3 class="card-title">Quiz</h3>
                    <div class="card-tools"></div>
                  </div>
                  <div class="card-body table-responsive p-0">
                    <table class="table table-striped table-valign-middle">
                      <thead>
                        <tr>
                          <th>Quiz</th>
                          <th>Rate</th>
                          <th>Enroll</th>
                          <th>More</th>
                        </tr>
                      </thead>
                      <tbody>
                          <c:forEach items="${listQuiz}" var="quiz" >
                        <tr>
                          <td style="max-width: 120px">${quiz.name}</td>
                          <td>${quiz.rate}</td>
                          <td>${quiz.numberEnroll}</td>
                          <td>
                              <a href="QuizEnrollServlet?quizid=${quiz.quiz_id}" class="text-muted">
                              <i class="fas fa-search"></i>
                            </a>
                          </td>
                        </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
                <!-- /.card -->
              </div>
              <!-- /.col-md-6 -->
              <div class="col-lg-6">
                <!-- /.card -->

                <div class="card">
                  <div class="card-header border-0">
                    <h3 class="card-title">QuizPractice Overview</h3>
                  </div>
                  <div class="card-body">
                    <div
                      class="
                        d-flex
                        justify-content-between
                        align-items-center
                        border-bottom
                        mb-3
                      "
                    >
                      <p class="text-success text-xl">
                        <i class="ion ion-ios-book-outline"></i>
                        
                      </p>
                      <p class="d-flex flex-column text-right">
                        <span class="font-weight-bold"> ${numQuiz} </span>
                        <span class="text-muted">QUIZ</span>
                      </p>
                    </div>
                    <!-- /.d-flex -->
                    <div
                      class="
                        d-flex
                        justify-content-between
                        align-items-center
                        border-bottom
                        mb-3
                      "
                    >
                      <p class="text-warning text-xl">
                        <i class="ion ion-ios-pricetag-outline"></i>
                      </p>
                      <p class="d-flex flex-column text-right">
                        <span class="font-weight-bold"> ${numRuby} </span>
                        <span class="text-muted">RUBY</span>
                      </p>
                    </div>
                    <!-- /.d-flex -->
                    <div
                      class="
                        d-flex
                        justify-content-between
                        align-items-center
                        mb-0
                      "
                    >
                      <p class="text-danger text-xl">
                        <i class="ion ion-ios-people-outline"></i>
                      </p>
                      <p class="d-flex flex-column text-right">
                        <span class="font-weight-bold"> ${numUser} </span>
                        <span class="text-muted">User</span>
                      </p>
                    </div>
                    <!-- /.d-flex -->
                  </div>
                </div>
                  <div class="card">
                  <div class="card-header border-0">
                    <h3 class="card-title">User</h3>
                    <div class="card-tools"></div>
                  </div>
                  <div class="card-body table-responsive p-0">
                    <table class="table table-striped table-valign-middle">
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Quiz Created</th>
                          <th>Public Profile</th>
                          <th>Ban user</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td style="max-width: 120px">Lich King</td>
                          <td>4</td>
                          <td><a href="#" class="">
                              <i class="fas fa-search"></i>
                              Detail
                            </a>
                          </td>
                          <td>
                            <a href="#" class="">
                              Ban this user
                            </a>
                          </td>
                        </tr>
                        <tr>
                          <td style="max-width: 120px">Lich King</td>
                          <td>4</td>
                          <td><a href="#" class="">
                              <i class="fas fa-search"></i>
                              Detail
                            </a>
                          </td>
                          <td>
                            <a href="#" class="">
                              Ban this user
                            </a>
                          </td>
                        </tr>
                        <tr>
                          <td style="max-width: 120px">Lich King</td>
                          <td>4</td>
                          <td><a href="#" class="">
                              <i class="fas fa-search"></i>
                              Detail
                            </a>
                          </td>
                          <td>
                            <a href="#" class="">
                              Ban this user
                            </a>
                          </td>
                        </tr>
                        <tr>
                          <td style="max-width: 120px">Lich King</td>
                          <td>4</td>
                          <td><a href="#" class="">
                              <i class="fas fa-search"></i>
                              Detail
                            </a>
                          </td>
                          <td>
                            <a href="#" class="">
                              Ban this user
                            </a>
                          </td>
                        </tr>
                        
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <!-- /.col-md-6 -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.container-fluid -->
        </div>
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
    <!-- AdminLTE for demo purposes -->
    <script src="assets/js/demo.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="assets/js/dashboard3.js"></script>
    
  </body>
</html>
