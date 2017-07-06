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
</head>
<body>
<h1>Home Page</h1>
<p>
    <br>
    <a href="<s:url value="/event/form"/>">Add Event</a><br>
    <a href="<s:url value="/event/list"/>">List of Events</a>
</p>
</body>
</html>
