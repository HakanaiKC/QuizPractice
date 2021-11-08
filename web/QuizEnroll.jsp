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
        <div class="container_body">
            <div class="row panel_top">
                <div class="col-sm-1"></div>
                <div class="col-sm-4">

                    <div style="margin-top: 30px;" class="quiz-category-div">
                        <c:forEach items="${categoryNameOfQuiz}" var="c">
                            <div style="margin-right: 12px;
                                 width: auto;
                                 display: inline-block;
                                 color: white;
                                 font-size: 18px;
                                 font-weight: 500;"
                                 class="category">${c.category_name}</div>
                        </c:forEach>
                    </div>

                    <div class="quiz-title-div">
                        ${quiz.name}
                    </div>
                    <div>
                        <span class="rate-total" data-rating=${avgRate}></span>
                        <div class="text-light">${countUserRate} ratings</div>
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
                        <div class="creator-name">${creator.username}</div>
                    </div>
                    <div class="button-enroll-div">
                        <!--                        <input type="submit" value="Enroll" name="enroll-button" class="button-enroll" style="width: 150px;"/>-->
                        <c:if test="${sessionScope.userSeisson !=null && sessionScope.userSeisson.role_id != 2}">
                            <a class="btn btn-white" href="QuizDetailServlet?quizid=${quiz.quiz_id}" class="button-enroll" style="width: 150px;" >Enroll</a>
                        </c:if>
                        <c:if test="${sessionScope.userSeisson.role_id == 2}">
                            <a class="btn btn-white" href="QuizDetailServlet?quizid=${quiz.quiz_id}" class="button-enroll" style="width: 150px;" >View Content</a>
                        </c:if>
                        <c:if test="${sessionScope.userSeisson ==null}">
                            <a class="btn btn-white" href="Login" class="button-enroll" style="width: 150px;" >Enroll</a>
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
                            <span class="display-4 font-weight-bolder">${avgRate}</span><br>
                        </div>
                        <div class="col-xs-6 col-md-8 align-self-center"> 
                            <!--Sua o data-rating-->
                            <span class="rate-total" data-rating="${avgRate}"></span>
                            <div>${countFeedback} reviews</div>
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
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: ${fiveStar}%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            ${fiveStar}%
                        </div>
                    </div>

                    <!--Sua pham tram o style, 4 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                            4 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: ${fourStar}%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            ${fourStar}%
                        </div>
                    </div>

                    <!--Sua pham tram o style, 3 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                            3 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: ${threeStar}%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            ${threeStar}%
                        </div>
                    </div>

                    <!--Sua pham tram o style, 2 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                            2 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: ${twoStar}%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            ${twoStar}%
                        </div>
                    </div>

                    <!--Sua pham tram o style, 1 stars-->
                    <div class="bar-progress row">
                        <div class="col-xs-3 col-md-3">
                            1 stars
                        </div>
                        <div class="col-xs-5 col-md-6" style="margin: 5px 0 0 -20px;">
                            <div class="progress" style="height: 10px;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: ${oneStar}%"></div>                                
                            </div>
                        </div>
                        <div class="col-xs-3 col-md-3">
                            ${oneStar}%
                        </div>
                    </div>

                </div>

                <div class="col-sm-6">
                    <h4>Top feedbacks</h4>


                    <!--1 FEEDBACK BAT DAU TU DAY-->
                    <c:forEach items="${listFeeback}" var="fb" >
                        <div class="feedback-div">
                            <div class="feedback-rate"><span class="rate-feed" data-rating="${fb.rate}"></span></div>
                            <div class="feedback-user">
                                <div class="feedback-username">${fb.user_name}</div>
                                <div class="feedback-date">${fb.date}</div>
                            </div><br/>
                            <div class="feedback-content">
                                ${fb.feedback}
                            </div>
                        </div>
                        <hr>
                    </c:forEach>
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
