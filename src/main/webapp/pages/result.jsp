<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Form submitted</title>
</head>
<body>
<div id="result">
    <h3>${requestScope["message"]}</h3>
    <a href="<s:url value="/event/a"/>">Sign up</a><br>
</div>

</body>
</html>
