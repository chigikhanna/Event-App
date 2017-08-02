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
    <link rel="stylesheet" href="<s:url value="../resources/css/design.css"/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body id="top" data-spy="scroll" data-target=".navbar" data-offset="50">


<jsp:include page="include/header.jsp"/>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicatsors -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" style="max-height: 500px">
        <div class="item active">
            <img src="<s:url value="/resources/img/home-1.jpg"/>" alt=width="1200" height="400">
            <div class="carousel-caption">
                <h3>Event 3</h3>
                <p>June 26,2017. New Delhi</p>
            </div>
        </div>

        <div class="item">
            <img src="<s:url value="/resources/img/about.jpg"/>" width="1200" height="400">
            <div class="carousel-caption">
                <h3>Event 1</h3>
                <p>June 25,2017. New Delhi</p>
            </div>
        </div>

        <div class="item">
            <img src="<s:url value="/resources/img/home-2.jpg"/>" width="1200" height="400">
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
        <c:forEach var="cat" items="${category}">
            <div class="col-sm-4">
                <a href="" data-toggle="collapse">
                    <img src="<s:url value="/resources/img/home-2.jpg"/>" class="img-circle event" alt="Sports Events"
                         width="255" height="255">
                </a>
                <p class="text-center"><strong>${cat.name}</strong></p><br>
            </div>
        </c:forEach>
    </div>
    <%--<button class="all-cat" data-target="list.html">See All</button>--%>
</div>

<div class="bg-1">
    <div class="container">
        <h3 class="text-center">MOST POPULAR</h3>
        <div class="row text-center">
            <c:forEach items="${events}" var="event">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="<s:url value="/resources/img/${event.name}.jpeg"/>" alt="Sports" width="400" height="300">
                        <p><strong>${event.name}</strong></p>
                        <p>${event.date}</p>
                        <a class="btn" href="<s:url value="/event/${event.id}"/>">More</a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="right-align">
            <a class="all-cat" href="<s:url value="/event/list"/>">See All</a>
        </div>
    </div>
</div>

<jsp:include page="include/footer.jsp"/>

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
