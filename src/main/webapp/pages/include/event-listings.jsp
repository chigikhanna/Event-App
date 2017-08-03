
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="event" items="${events}">
    <div class="col-sm-4">
        <div class="thumbnail">
            <img src="<s:url value="/resources/img/home-2.jpg"/>" alt="Sports" width="400" height="300">
            <p><strong>${event.name}</strong></p>
            <p>${event.date}</p>
            <a class="btn" href="<s:url value="/event/details/${event.id}"/>">More</a>
        </div>
    </div>
</c:forEach>