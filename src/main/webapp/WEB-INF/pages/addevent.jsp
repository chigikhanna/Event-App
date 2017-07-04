<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Event</title>
</head>
<body>

<form:form method="POST" commandName="event" action="${pageContext.request.contextPath}/event/add">
    <table>
        <tbody>
        <tr>
            <td>Event Name</td>
            <td><form:input type="text" path="name"/></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><form:input type="" path="address"/></td>
        </tr>
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
                <%--<form:checkbox path="category" value="Music"/>Music--%>
                <%--<form:checkbox path="category" value="Dance"/>Dance--%>
                <%--<form:checkbox path="category" value="Drama"/>Drama--%>
                <%--<form:checkbox path="category" value="Food"/>Food--%>
                <%--<form:checkbox path="category" value="Kids"/>Kids--%>
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
                    <input type="file" name="file"/>
                    <input type="submit" value="upload" />
                </form>

            </td>
            <%--<div id="result">--%>
                <%--<h3>${requestScope["message"]}</h3>--%>
            <%--</div>--%>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</form:form>


</body>
</html>