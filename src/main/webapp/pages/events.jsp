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
    <div class="wrap">
        <div class="search">
            <input type="text" class="searchTerm" placeholder="Search by event or category"></input>
            <button type="submit" class="searchButton">
                <i class="fa fa-search"></i>
            </button>
        </div>
    </div>

    <div class="row text-center event-listing">
        <jsp:include page="include/event-listings.jsp"/>
    </div>
</div>

<jsp:include page="include/footer.jsp"/>



<script>

    $(document).ready(function () {
        var page = 0;



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
</script>

</body>
</html>
