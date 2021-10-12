<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en"
      dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Quiz Enroll</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
        <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/css/star-rating-svg.css">
        <script src="assets/vendor/jquery.star-rating-svg.js"></script>
        <link href="assets/css/quizEnroll.css" type="text/css" rel="stylesheet">
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
        <div class="container_body">
            <div class="row panel_top">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">
                    <div class="quiz-title-div">
                         ${quiz.name}
                    </div>
                    <div>
                        <span class="rate-total" data-rating="4.8"></span>
                        <div class="text-light">1,993 ratings</div>
                    </div>                    
                    <div class="creator-div">
                        <div class="avatar"><a href="ProfileServlet?id=${creator.user_id}" role="button">
                                <c:if test = "${creator.avatar == null}">
                                <img src="assets/images/unnamed.jpg" alt="Avatar" class="rounded-circle"
                                    width="48">
                                </c:if>
                                <c:if test = "${creator.avatar != null}">
                                <img src="uploads/${creator.avatar}" alt="Avatar" class="rounded-circle"
                                    width="48">
                                </c:if>
                            </a>
                        </div>
                        <div class="creator-name">${quiz.creator_name}</div>
                    </div>
                     <div class="button-enroll-div">
                        <c:if test="${quiz.price == 0}">
                        <input type="submit" value="Enroll for free" name="enroll-button" class="button-enroll" style="width: 150px;"/>
                        </c:if>
                        <c:if test="${quiz.price != 0}">
                        <input type="submit" value="Enroll for ${quiz.price}$" name="enroll-button" class="button-enroll" style="width: 150px;"/>
                        </c:if>
                    </div>
                    <div class="nums-of-enroll"><p>${numOfEroll} already enrolled</p></div>

                    <!--<div class="col-sm-1"></div>-->
                </div>
                <div class="col-sm-6 description-div">
                    <h2>Descriptions</h2>
                    <p>
                        ${quiz.description}
                    </p>
                </div>
            </div>

            <div class="review-panel row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <div class="col-xs-2 col-md-2">
                        <h3 style="font-size: 30px;">Reviews</h3>
                    </div>
                    
                    <!--Total star Rate-->
                    <div class="total-star row">
                        <div class="col-xs-6 col-md-4">
                            <span class="display-4 font-weight-bolder">4.8</span><br>
                        </div>
                        <div class="col-xs-6 col-md-8 align-self-center"> 
                            <!--Sua o data-rating-->
                            <span class="rate-total" data-rating="4.8"></span>
                            <div>255 reviews</div>
                        </div>                       
                    </div>
                    <br>
                    
                    <!--Star Rate-->
                    <!--Sua pham tram o style, 5 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                            5 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 79.79%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            79.79%
                        </div>
                    </div>
                    
                    <!--Sua pham tram o style, 4 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                            4 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 18.38%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            18.38%
                        </div>
                    </div>
                    
                    <!--Sua pham tram o style, 3 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                            3 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 1.47%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            1.47%
                        </div>
                    </div>
                    
                    <!--Sua pham tram o style, 2 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                            2 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0.11%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            0.11%
                        </div>
                    </div>
                    
                    <!--Sua pham tram o style, 1 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                           1 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0.22%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            0.22%
                        </div>
                    </div>
                    
                </div>

                <div class="col-sm-6">
                    <h4>Top feedbacks</h4>


                    <!--1 FEEDBACK BAT DAU TU DAY-->
                    <div class="feedback-div">
                        <div class="feedback-rate"><span class="rate-feed" data-rating="4.8"></span></div>
                        <div class="feedback-user">
                            <div class="feedback-username">LichKing</div>
                            <div class="feedback-date">11/08/2021</div>
                        </div><br/>
                        <div class="feedback-content">
                            a light introduction to design thinking. not too taxing. 
                            easy to understand concepts with some practical applications tested. 
                            good stepping stone to more rigorous and testing design thinking courses
                        </div>
                    </div>
                    <br/><br/>
                    <!--KET THUC 1 FEEDBACK-->

                    <div class="show-more-div">
                        <input  type="submit" value="Show more" name="show-more-button" class="button-show-more"/>
                    </div>
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

        <!-- Star-rate.js -->
        <script src="assets/vendor/jquery.star-rating-svg_1.js"></script>

        <script>
            $(function () {
                $(".rate-total").starRating({
                    totalStars: 5,
                    starSize: 20,
                    activeColor: 'rgb(242, 208, 73)',
                    useGradient: false,
                    readOnly: true
                });
                $(".rate-feed").starRating({
                    totalStars: 5,
                    starSize: 15,
                    activeColor: 'rgb(242, 208, 73)',
                    useGradient: false,
                    readOnly: true
                });
            });
        </script>
    </body>

</html>
