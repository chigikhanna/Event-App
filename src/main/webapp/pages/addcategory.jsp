<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: chigi
  Date: 26-Jul-17
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Category</title>
</head>
<body>

<form:form method="POST" commandName="category" action="${pageContext.request.contextPath}/categories/save">
    <form:input type="text" path="name" id="name" placeholder="Enter name of the categories"/>
    <input type="submit" value="Submit">
</form:form>
</body>
</html>
