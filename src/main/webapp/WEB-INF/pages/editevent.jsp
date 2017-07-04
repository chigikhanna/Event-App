<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: tanvigupta
  Date: 04/07/17
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Event Details</title>
</head>
<body>
<h1>Edit event details</h1>
<p>${message}</p>
<form:form method="POST" commandName="event" action="${pageContext.request.contextPath}/user/edit/${event.id}">
    <table>
        <tbody>
        <tr>
            <td>Event Name</td>
            <td><form:input type="text" path="name"/></td>
        </tr>
            <%--<tr>--%>
            <%--<td>Location</td>--%>
            <%--<td><form:input type="" path=""/></td>--%>
            <%--</tr>--%>
        <tr>
            <td>Day</td>
            <td><form:input type="text" path="day"/></td>
        </tr>
        <tr>
            <td>Date</td>
            <td><form:input type="date" path="date"/></td>
        </tr>
        <tr>
            <td>Time</td>
            <td><form:input type="time" path="time"/></td>
        </tr>
        <tr>
            <td>Duration</td>
            <td><form:input type="text" path="duration"/></td>
        </tr>
        <tr>
            <td>Category</td>
            <td>
                <form:checkbox path="category" value="Music"/>Music
                <form:checkbox path="category" value="Dance"/>Dance
                <form:checkbox path="category" value="Drama"/>Drama
                <form:checkbox path="category" value="Food"/>Food
                <form:checkbox path="category" value="Kids"/>Kids
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td><form:input type="text" path="description"/></td>
        </tr>
        <tr>
            <td>Registration Fee</td>
            <td><form:input type="text" path="fees"/></td>
        </tr>
        <tr>
            <td>Upload Image</td>
            <td>Select file to uplaod:</td>
            <td>
                <form action="upload" method="post" enctype="multipart/form-data">
                    <input type="file" name="file" />
                    <input type="submit" value="upload" />
                </form>
            </td>
            <div id="result">
                <h3>${requestScope["message"]}</h3>
            </div>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</form:form>

<%--<p><a href="${pageContext.request.contextPath}/index">Home page</a></p>--%>

</body>
</html>
