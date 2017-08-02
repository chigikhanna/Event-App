<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <h3 class="text-center">${category.name} Events</h3>
    <div class="row text-center event-listing">

        <c:forEach var="event" items="${category.events}">
            <div class="col-sm-4">
                <div class="thumbnail">
                    <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Sports" width="400" height="300">
                    <p><strong>${event.name}</strong></p>
                    <p>${event.date}</p>
                    <a class="btn" href="<s:url value="/event/details/${event.id}"/>">More</a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<jsp:include page="include/footer.jsp"/>

</body>
</html>
