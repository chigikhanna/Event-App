<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
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

<jsp:include page="include/header.jsp"/>

<div class="container">
    <h3 class="text-center">HT EVENTS</h3>
    <div class="row text-center">
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Sports" width="400" height="300">
                <p><strong>EVENT 1</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Art" width="400" height="300">
                <p><strong>EVENT 2</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Music" width="400" height="300">
                <p><strong>EVENT 3</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Dance" width="400" height="300">
                <p><strong>EVENT 4</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Theatre" width="400" height="300">
                <p><strong>EVENT 5</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Food & Drinks" width="400" height="300">
                <p><strong>EVENT 6</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Food & Drinks" width="400" height="300">
                <p><strong>EVENT 7</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Food & Drinks" width="400" height="300">
                <p><strong>EVENT 8</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="thumbnail">
                <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Food & Drinks" width="400" height="300">
                <p><strong>EVENT 9</strong></p>
                <p>Friday. 15 July, 2015</p>
                <button class="btn" data-toggle="modal" data-target="#myModal">More</button>
            </div>
        </div>
    </div>
    <!-- <div class="right-align">
    <button class="btn all-events" data-target="list.html">See All</button>
  </div> -->
</div>


<jsp:include page="include/footer.jsp"/>

<form method="POST" commandName="user" action="${pageContext.request.contextPath}/user/add">
    <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h3 class="modal-title" id="modalLabel">Sign Up</h3>
                    <p>Already have an account?
                        <button type="button" class="btn btn-default" id="signin-trigger"> Sign In</button>
                    </p>
                    <!-- <p>Already have an account? <a href="#signin" data-target="#signin" data-toggle="modal" id="signin-trigger">Log In</a></p> -->
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <label for="name" class="form-control-label">Name <span class="fa fa-user-o"></span></label>
                        <input type="text" class="form-control" name="name" id="name">
                    </div>
                    <div class="form-group">
                        <label for="email" class="form-control-label">Email <span
                                class="fa fa-envelope-o"></span></label>
                        <input type="text" class="form-control" name="email" id="email"></input>
                    </div>
                    <div class="form-group">
                        <label for="pw" class="form-control-label">Password <span
                                class="glyphicon glyphicon-lock"></span></label>
                        <input type="password" class="form-control" name="pw" id="pw"></input>
                    </div>

                    <div class="form-group">
                        <label for="phone" class="form-control-label">Phone <span class="fa fa-phone"></span></label>
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
                <h3 class="modal-title" id="modalLabel">Sign In</h3>
                <p>Not a member?
                    <button type="button" class="btn btn-default" id="signup-trigger">Sign Up</button>
            </div>
            <div class="modal-body">
                <form method="POST" commandName="user" action="">
                    <div class="form-group">
                        <label for="email" class="form-control-label">Email <span
                                class="fa fa-envelope-o"></span></label>
                        <input type="text" class="form-control" name="email" id="email"></input>
                    </div>
                    <div class="form-group">
                        <label for="pw" class="form-control-label">Password <span
                                class="glyphicon glyphicon-lock"></span></label>
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
