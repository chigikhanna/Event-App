<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Category</title>
</head>
<body>

<form:form method="POST" commandName="category" action="${pageContext.request.contextPath}/category/save">
    <form:input type="text" path="name" id="name" placeholder="Enter name of the categories"/>
    <input type="submit" value="Submit">
</form:form>
</body>
</html>
