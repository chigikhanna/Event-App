<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: tanvigupta
  Date: 04/07/17
  Time: 4:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" href="../resources/stylesheet.css">
</head>
<body>
<div class="header">
    <h1><a class="logo" href="home">Event-App</a></h1>
    <div class="header-links">
        <a href="<s:url value="/event/form"/>">Add Event</a>
        <a href="<s:url value="/event/list"/>">List Events</a>
    </div>
</div>
</body>
</html>
