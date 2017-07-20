<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>HT Events</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<s:url value="/resources/css/design.css"/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body id="top" data-spy="scroll" data-target=".navbar" data-offset="50">


<nav class="navbar navbar-default navbar-fixed-top">
    <a href="http://www.hindustantimes.com">
        <img class="ht-logo" src="http://www.hindustantimes.com/images/app-images/ht/sm-logo-cm.png" height="45"
             width="45">
    </a>
    <a class="logo" href="<s:url value="/home"/>">events</a>
    <!-- <a href=""><span class="glyphicon glyphicon-search"></span></a> -->
    <!-- <span class="col-md-3 col-md-offset-3">
        <form action="" class="search-form">
            <div class="form-group has-feedback">
            <label for="search" class="sr-only">Search</label>
            <input type="text" class="form-control" name="search" id="search" placeholder="search"></input>
              <span class="glyphicon glyphicon-search form-control-feedback"></span>
          </div>
        </form>
    </span> -->


    <ul class="nav navbar-nav navbar-right">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                <span class="glyphicon glyphicon-search"></span>
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a href="#">
                    <form action="" class="search-form">
                        <div class="form-group has-feedback">
                            <label for="search" class="sr-only">Search</label>
                            <input type="text" class="form-control" name="search" id="search"
                                   placeholder="Search">
                            <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        </div>
                    </form>
                </a></li>
                <!-- <li class="divider"></li> -->
                <li><a href="<s:url value="/event/list"/>">Search All</a></li>
            </ul>

        </li>
        <li><a href="<s:url value="/event/list"/>">BROWSE EVENTS</a></li>

        <li><a href="#signin" data-target="#signin" data-toggle="modal"><span class="glyphicon glyphicon-log-in"></span>
            LOG IN</a></li>
        <li><a href="#signup" data-target="#signup" data-toggle="modal"><span class="glyphicon glyphicon-user"></span>
            SIGN UP</a></li>
        <li><a href="<s:url value="/event/form"/>">CREATE EVENT</a></li>
        <li><a href="http://www.hindustantimes.com/contact-us">CONTACT US </a></li>
    </ul>
    </span>
</nav>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicatsors -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="<s:url value="/resources/img/home-1.jpg"/>" alt=width="1200" height="700">
            <div class="carousel-caption">
                <h3>Event 3</h3>
                <p>June 26,2017. New Delhi</p>
            </div>
        </div>

        <div class="item">
            <img src="<s:url value="/resources/img/about.jpg"/>" width="1200" height="700">
            <div class="carousel-caption">
                <h3>Event 1</h3>
                <p>June 25,2017. New Delhi</p>
            </div>
        </div>

        <div class="item">
            <img src="<s:url value="/resources/img/home-2.jpg"/>" width="1200" height="700">
            <div class="carousel-caption">
                <h3>Event 2</h3>
                <p>June 24,2017. New Delhi</p>
            </div>
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="container text-center">
    <h3>TOP CATEGORIES</h3>

    <div class="row">
        <div class="col-sm-4">
            <p class="text-center"><strong>MUSIC</strong></p><br>
            <a href="" data-toggle="collapse">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" class="img-circle event" alt="Sports Events"
                     width="255" height="255">
            </a>
        </div>
        <div class="col-sm-4">
            <p class="text-center"><strong>ART</strong></p><br>
            <a href="" data-toggle="collapse">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" class="img-circle event" alt="Food & Drinks Evnts"
                     width="255" height="255">
            </a>
        </div>
        <div class="col-sm-4">
            <p class="text-center"><strong>THEATRE</strong></p><br>
            <a href="#demo3" data-toggle="collapse">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" class="img-circle event" alt="Art Events"
                     width="255" height="255">
            </a>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <p class="text-center"><strong>DANCE</strong></p><br>
            <a href="" data-toggle="collapse">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" class="img-circle event" alt="Sports Events"
                     width="255" height="255">
            </a>
        </div>
        <div class="col-sm-4">
            <p class="text-center"><strong>FOOD & DRINK</strong></p><br>
            <a href="" data-toggle="collapse">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" class="img-circle event" alt="Food & Drinks Evnts"
                     width="255" height="255">
            </a>
        </div>
        <div class="col-sm-4">
            <p class="text-center"><strong>BUSINESS</strong></p><br>
            <a href="#demo3" data-toggle="collapse">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" class="img-circle event" alt="Art Events"
                     width="255" height="255">
            </a>
        </div>
    </div>
    <button class="all-cat" data-target="list.html">See All</button>
</div>

<div class="bg-1">
    <div class="container">
        <h3 class="text-center">MOST POPULAR</h3>
        <div class="row text-center">
            <c:forEach items="${events}" var="event">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Sports" width="400" height="300">
                        <p><strong>${event.name}</strong></p>
                        <p>${event.date}</p>
                        <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
                    </div>
                </div>
            </c:forEach>
            <%--<div class="col-sm-4">--%>
            <%--<div class="thumbnail">--%>
            <%--<img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Sports" width="400" height="300">--%>
            <%--<p><strong>EVENT 1</strong></p>--%>
            <%--<p>Friday. 15 July, 2015</p>--%>
            <%--<button class="btn" data-toggle="modal" data-target="#myModal">More</button>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
            <%--<div class="thumbnail">--%>
            <%--<img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Art" width="400" height="300">--%>
            <%--<p><strong>EVENT 1</strong></p>--%>
            <%--<p>Friday. 15 July, 2015</p>--%>
            <%--<button class="btn" data-toggle="modal" data-target="#myModal">More</button>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
            <%--<div class="thumbnail">--%>
            <%--<img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Music" width="400" height="300">--%>
            <%--<p><strong>EVENT 1</strong></p>--%>
            <%--<p>Friday. 15 July, 2015</p>--%>
            <%--<button class="btn" data-toggle="modal" data-target="#myModal">More</button>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
            <%--<div class="thumbnail">--%>
            <%--<img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Dance" width="400" height="300">--%>
            <%--<p><strong>EVENT 1</strong></p>--%>
            <%--<p>Friday. 15 July, 2015</p>--%>
            <%--<button class="btn" data-toggle="modal" data-target="#myModal">More</button>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
            <%--<div class="thumbnail">--%>
            <%--<img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Theatre" width="400" height="300">--%>
            <%--<p><strong>EVENT 1</strong></p>--%>
            <%--<p>Friday. 15 July, 2015</p>--%>
            <%--<button class="btn" data-toggle="modal" data-target="#myModal">More</button>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="col-sm-4">--%>
            <%--<div class="thumbnail">--%>
            <%--<img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Food & Drinks" width="400" height="300">--%>
            <%--<p><strong>EVENT 1</strong></p>--%>
            <%--<p>Friday. 15 July, 2015</p>--%>
            <%--<button class="btn" data-toggle="modal" data-target="#myModal">More</button>--%>
            <%--</div>--%>
            <%--</div>--%>
        </div>
        <div class="right-align">
            <button class="btn all-events" data-target="list.html">See All</button>
        </div>
    </div>
</div>

<footer class="text-center">
    <a class="up-arrow" href="#top" data-toggle="tooltip" title="TO TOP">
        <span class="glyphicon glyphicon-chevron-up"></span>
    </a><br><br>

    <div class="follow">
        Follow Us:
        <a href="https://www.facebook.com/hindustantimes" class="fa fa-facebook"></a>
        <a href="https://twitter.com/htTweets" class="fa fa-twitter"></a>
        <a href="https://plus.google.com/+hindustantimes/posts" class="fa fa-google-plus"></a>
        <a href="https://www.instagram.com/hindustantimes/" class="fa fa-instagram"></a>
        <a href="https://www.linkedin.com/company/hindustantimes" class="fa fa-linkedin"></a>
        <a href="https://www.youtube.com/user/ht" class="fa fa-youtube"></a>
    </div>
    <br>
    <p>Copyright &copy 2017. HT Media Limited. All rights reserved.</p>
    <div class="footer-links">
        <a href="http://www.htmedia.in/Sectionb14c.html?Page=Page-HTMedia-AboutUs">About Us</a>
        <a href="http://www.hindustantimes.com/contact-us"> Contact Us</a>
        <a href="http://www.hindustantimes.com/privacy-policy"> Privacy Policy</a>
        <a href="http://www.hindustantimes.com/disclaimer"> Disclaimer</a>
        <a href="http://www.shine.com/"> Jobs</a>
    </div>
</footer>
<form method="POST" action="/user/add">
    <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h3 class="modal-title" id="modalLabel"><strong>
                        <center>Sign Up</center>
                    </strong></h3>
                    <p>Already have an account?
                        <button type="button" class="btn btn-default" id="signin-trigger"> Sign In</button>
                    </p>
                    <!-- <p>Already have an account? <a href="#signin" data-target="#signin" data-toggle="modal" id="signin-trigger">Log In</a></p> -->
                </div>
                <div class="modal-body">
                    <form method="POST" commandName="user" action="${pageContext.request.contextPath}/user/add">
                        <div class="form-group">
                            <label for="name" class="form-control-label">Name:</label>
                            <input type="text" class="form-control" name="name" id="name">
                        </div>
                        <div class="form-group">
                            <label for="email" class="form-control-label">Email:</label>
                            <input type="text" class="form-control" name="email" id="email"></input>
                        </div>
                        <div class="form-group">
                            <label for="pw" class="form-control-label">Password:</label>
                            <input type="password" class="form-control" name="pw" id="pw"></input>
                        </div>
                    </form>
                    <div class="form-group">
                        <label for="phone" class="form-control-label">Phone#:</label>
                        <input type="text" class="form-control" name="phone" id="phone"></input>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-primary" value="Sign Up"></input>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <p>By signing up, I agree to terms of service & privacy policy.</p>
                </div>
            </div>
        </div>
    </div>
</form>


<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title" id="modalLabel"><strong>
                    <center>Sign In</center>
                </strong></h3>
                <p>Not a member?
                    <button type="button" class="btn btn-default" id="signup-trigger">Sign Up</button>
                    <!-- <p>New User? <a href="#signup" data-target="#signup" data-toggle="modal" id="signup-trigger">Sign Up</a></p> -->
            </div>
            <div class="modal-body">
                <form method="POST" commandName="user" action="">
                    <div class="form-group">
                        <label for="email" class="form-control-label">Email:</label>
                        <input type="text" class="form-control" name="email" id="email"></input>
                    </div>
                    <div class="form-group">
                        <label for="pw" class="form-control-label">Password:</label>
                        <input type="password" class="form-control" name="pw" id="pw"></input>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <input type="submit" class="btn btn-primary" value="Sign In"></input>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<script>
    $("#signup-trigger").click(function () {
        $('#signin').modal('hide');
        $('#signup').modal('show');
    });

    $("#signin-trigger").click(function () {
        $('#signup').modal('hide');
        $('#signin').modal('show');
    });

</script>

</body>
</html>
