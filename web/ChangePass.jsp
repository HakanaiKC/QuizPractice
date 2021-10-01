<%@page import="model.Users"%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en"
      dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible"
              content="IE=edge">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Edit account</title>

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
        <c:if test="${sessionScope.userSeisson == null}" >
            <% {
                    response.sendRedirect("Home");
                }%>
        </c:if> 
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

                <!--Content-->
                <div class="page ">
                    <div class="container page__container">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Home">Home</a></li>
                            <li class="breadcrumb-item active">Edit Account</li>
                        </ol>
                        <h1 class="h2">Edit Account</h1>

                        <div class="card">                           
                            <ul class="nav nav-tabs nav-tabs-card">
                                <li class="nav-item">
                                    <a class="nav-link active"
                                       href="#first"
                                       data-toggle="tab">Account</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"
                                       href="#second"
                                       data-toggle="tab">Profile</a>
                                </li>
                            </ul>

                            <div class="tab-content card-body">
                                <div class="tab-pane active"
                                     id="first">
                                    <!--<form action="#" class="form-horizontal">-->

                                    <!--Avatar-->
                                    <form action="ChangeAvatar?id=${sessionScope.userSeisson.user_id}" method="post" enctype="multipart/form-data">
                                        <div class="form-group row">
                                            <label for="avatar"
                                                   class="col-sm-3 col-form-label form-label">Avatar</label>      
                                            <div class="col-sm-9">
                                                <div class="media align-items-center">
                                                    <div class="media-left">
                                                        <div class="icon-block rounded" style="overflow: hidden;">
                                                            <img src="uploads/${sessionScope.userSeisson.avatar}" style="max-width:85px;" id="image" class="material-icons text-muted-light md-36" value="photo">                        
                                                        </div>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="custom-file"
                                                             style="width: auto;">
                                                            <input type="file" name="avatar"
                                                                   id="avatar"
                                                                   class="custom-file-input">
                                                            <label for="avatar"
                                                                   class="custom-file-label" name="avatar">Choose file</label>

                                                            <div style="color: green">${requestScope.messageAvatar}</div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-5">
                                                        <input type="submit" class="btn btn-success" value="Save"  > 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <script>
                                        document.getElementById("avatar").onchange = function () {
                                            var reader = new FileReader();

                                            reader.onload = function (e) {
                                                // get loaded data and render thumbnail.
                                                document.getElementById("image").src = e.target.result;
                                            };

                                            // read the image file as a data URL.
                                            reader.readAsDataURL(this.files[0]);
                                        };
                                    </script>
                                    <hr> 
<!--                                    Fullname
                                    <form action="ChangeName?id=${sessionScope.userSeisson.user_id}" method="post">
                                        <div class="form-group row">
                                            <label for="name"
                                                   class="col-sm-3 col-form-label form-label">Full Name</label>
                                            <div class="col-sm-8">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <input id="name" name="fullname"
                                                               type="text" value="${sessionScope.userSeisson.username}"
                                                               class="form-control"
                                                               placeholder="Full Name">
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input type="submit" class="btn btn-success" value="Save">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    Email
                                    <div class="form-group row">
                                        <label for="email"
                                               class="col-sm-3 col-form-label form-label">Email</label>
                                        <div class="col-sm-6 col-md-6">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <i class="material-icons md-18 text-muted">mail</i>
                                                    </div>
                                                </div>
                                                <input type="text" 
                                                       id="email" value="${sessionScope.userSeisson.email}"
                                                       class="form-control"
                                                       placeholder="Email Address"
                                                       value="contact@mosaicpro.biz"
                                                       disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>                   -->
                                    <!--Old pass-->
                                    <form action="ChangePassword?email=${sessionScope.userSeisson.email}" method="post">
                                        <div class="form-group row">
                                            <label for="password"
                                                   class="col-sm-3 col-form-label form-label">Old Password</label>
                                            <div class="col-sm-6 col-md-4">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="material-icons md-18 text-muted">lock</i>
                                                        </div>
                                                    </div>
                                                    <input type="password" name="pass"
                                                           id="password"
                                                           class="form-control"
                                                           placeholder="Enter old password">
                                                </div>
                                            </div>
                                        </div>

                                        <!--Change Pass-->
                                        <div class="form-group row">
                                            <label for="password"
                                                   class="col-sm-3 col-form-label form-label">New Password</label>
                                            <div class="col-sm-6 col-md-4">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="material-icons md-18 text-muted">lock</i>
                                                        </div>
                                                    </div>
                                                    <input type="password" name="newpass" 
                                                           id="password"
                                                           class="form-control"
                                                           placeholder="Enter new password">
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Re-Enter Password:-->
                                        <div class="form-group row">
                                            <label for="password"
                                                   class="col-sm-3 col-form-label form-label">Re-Enter Password:</label>
                                            <div class="col-sm-6 col-md-4">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="material-icons md-18 text-muted">lock</i>
                                                        </div>
                                                    </div>
                                                    <input type="password" name="renewpass"
                                                           id="password"
                                                           class="form-control"
                                                           placeholder="Re-Enter new Password">
                                                </div>
                                            </div>
                                        </div>
                                        <!--Save changes-->
                                        <div class="form-group row">
                                            <div class="col-sm-8 offset-sm-3">
                                                <div style="color: red">${requestScope.notsuccess}</div>
                                                <div style="color: green">${requestScope.success}</div>
                                                <br/>
                                                <div class="media align-items-center">
                                                    <div class="media-left">
                                                        <input type="submit"
                                                               class="btn btn-success" value="Save Changes">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <!--Profile-->                    
                                <div class="tab-pane" id="second">
                                    <!--Email-->
                                    <div class="form-group row">
                                        <label for="email"
                                               class="col-sm-3 col-form-label form-label">Email</label>
                                        <div class="col-sm-6 col-md-6">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <i class="material-icons md-18 text-muted">mail</i>
                                                    </div>
                                                </div>
                                                <input type="text" 
                                                       id="email" value="${sessionScope.userSeisson.email}"
                                                       class="form-control"
                                                       placeholder="Email Address"
                                                       value="contact@mosaicpro.biz"
                                                       disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fullname-->
                                    <form action="ChangeProfile?id=${sessionScope.userSeisson.user_id}" method="post">
                                        <div class="form-group row">
                                            <label for="name"
                                                   class="col-sm-3 col-form-label form-label">Full Name</label>
                                            <div class="col-sm-8">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <input id="name" name="fullname"
                                                               type="text" value="${sessionScope.userSeisson.username}"
                                                               class="form-control"
                                                               placeholder="Full Name">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
<!--                                       </form>-->
                                                               <hr>
                                    <!--About me-->
<!--                                    <form action="" method="">-->
                                        <div class="form-group row">
                                            <label for="name"
                                                   class="col-sm-3 col-form-label form-label">About me</label>
                                            <div class="col-sm-8">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <textarea id="aboutme" name="aboutme"
                                                                  type="text" value=""
                                                                  class="form-control"
                                                                  rows="6">${sessionScope.userSeisson.about_me}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
<!--                                    </form>-->
                                    <hr>
                                    <!--Connect-->
<!--                                    <form action="" method="">-->
                                        <div class="form-group row">
                                            <label for="name"
                                                   class="col-sm-3 col-form-label form-label">Connect</label>
                                            <div class="col-sm-8">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <textarea id="connect"name="connect"
                                                                  type="text" value=""
                                                                  class="form-control"
                                                                  rows="6">${sessionScope.userSeisson.connect}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
<!--                                    </form>-->
                                    <!--Save Changes-->
                                    <div class="form-group row">
                                        <div class="col-sm-8 offset-sm-3">
                                            <div style="color: red">${requestScope.notsuccess}</div>
                                            <div style="color: green">${requestScope.success}</div>
                                            <br/>
                                            <div class="media align-items-center">
                                                <div class="media-left">
                                                    <input type="submit"
                                                           class="btn btn-success" value="Save Changes">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        </form>       
                                </div>
                            </div>
                        </div>
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