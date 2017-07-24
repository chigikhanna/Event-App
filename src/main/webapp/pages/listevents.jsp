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

<jsp:include page="include/header.jsp"/>

<div class="container">
    <h3 class="text-center">HT EVENTS</h3>
    <div class="row text-center event-listing">
        <jsp:include page="include/event-listings.jsp"/>
    </div>
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

    $(document).ready(function () {
        var page = 0;

        $("#signup-trigger").click(function () {
            $('#signin').modal('hide');
            $('#signup').modal('show');
        });

        $("#signin-trigger").click(function () {
            $('#signup').modal('hide');
            $('#signin').modal('show');
        });

        $(window).scroll(function () {
            if ($(window).scrollTop() == $(document).height() - $(window).height()) {
                page++;
                $.ajax({
                    url: baseURL + "/event/search?page=" + page + "&size=5",
                    success: function (data) {
                        $('.event-listing').append(data);
                    },
                    dataType: 'html'
                });
            }
        });
    });


    //    $.ajax({
    //        type : "POST",
    //        url : "event/search",
    //    });

    <%--$(window).scroll(function(){--%>
    <%--if ($(window).scrollTop() == $(document).height()-$(window).height()){--%>
    <%--console.log("reached");--%>
    <%--$.ajax({--%>
    <%--type : "POST",--%>
    <%--url : "${pageContext.request.contextPath}/event/search",--%>
    <%--success: function (data) { $('body').append(data); },--%>
    <%--//                dataType: 'html'--%>
    <%--});--%>
    <%--}--%>
    <%--});--%>
</script>

</body>
</html>
