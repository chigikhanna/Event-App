<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tanvigupta
  Date: 04/07/17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of users</title>
</head>
<body>
<h1>List of Users</h1>
<table border="1px" cellpadding="2px" colspan="2">
    <thead>
    <tr>
        <th>Name</th>
        <th>Day</th>
        <th>Date</th>
        <th>Time</th>
        <th>Duration</th>
        <th>Address</th>
        <th>City</th>
        <th>Country</th>
        <th>Pin Code</th>
        <th>Description</th>
        <th>Category</th>
        <th>Fees</th>

    </tr>
    </thead>
    <tbody>

    <c:forEach var="event" items="${events}">
        <tr>
            <td>${event.name}</td>
            <td>${event.day}</td>
            <td>${event.date}</td>
            <td>${event.time}</td>
            <td>${event.duration}</td>
            <td>${event.address}</td>
            <td>${event.city}</td>
            <td>${event.country}</td>
            <td>${event.pincode}</td>
            <td>${event.description}</td>
            <%--<td>${event.category}</td>--%>
            <td>${event.fees}</td>
            <td>
                <a href="${pageContext.request.contextPath}/user/edit/${event.id}">Edit</a><br/>
                <a href="${pageContext.request.contextPath}/user/delete/${event.id}">Delete</a><br/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<p><a href="${pageContext.request.contextPath}/home">Home page</a></p>
</body>
</html>
