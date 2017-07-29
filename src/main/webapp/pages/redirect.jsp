<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Form submitted</title>
</head>
<body>
<form:form method="POST" action="${pageContext.request.contextPath}/event/find">
<input type="text" name="search" id="search"/>
<input type="submit" value="Submit">
</form:form>
</body>
</html>
