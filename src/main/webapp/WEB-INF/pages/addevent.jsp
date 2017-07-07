<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Add Event</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="<s:url value="/resources/stylesheet.css"/>">--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div class="header">
    <h1><a class="logo" href="home">h<span class="logo=blue">t</span> events</a></h1>
    <div class="header-links">
        <a href="<s:url value="/event/form"/>" class="header-links-active">Add Event</a>
        <a href="<s:url value="/event/list"/>">List Events</a>
    </div>
</div>
<div class="container">
    <form:form method="POST" commandName="event" action="${pageContext.request.contextPath}/event/add"
    enctype="multipart/form-data"
               class="form-horizontal">
        <form:errors path="*" cssClass="errorblock" element="div"/>
        <div class="form-group">
            <label class="control-label col-sm-2" for="name">Event Name:</label>
            <div class="col-sm-10">
                <form:input type="text" path="name" class="form-control" id="name"
                            placeholder="Enter name of the event"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="address">Address:</label>
            <div class="col-sm-10">
                <form:input type="text" path="address" class="form-control" id="address" placeholder="Enter address"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="city">City:</label>
            <div class="col-sm-10">
                <form:input type="text" path="city" class="form-control" id="city" placeholder="Enter city"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="country">Country:</label>
            <div class="col-sm-10">
                <form:input type="text" path="country" class="form-control" id="country" placeholder="Enter country"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="pincode">Pin Code:</label>
            <div class="col-sm-10">
                <form:input type="text" path="pincode" class="form-control" id="pincode" placeholder="Enter pin code"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="day">Day:</label>
            <div class="col-sm-10">
                <form:input type="text" path="day" class="form-control" id="day" placeholder="Enter day of the event"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="date">Date:</label>
            <div class="col-sm-10">
                <form:input type="date" path="date" class="form-control" id="date"
                            placeholder="Enter date of the event"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="duration">Duration:</label>
            <div class="col-sm-10">
                <form:input type="text" path="duration" class="form-control" id="duration"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Category:</label>
            <div class="col-sm-10">
                    <%--<form:input type="text" path="category" class="form-control" id="category"/>--%>
                    <%--<form:checkbox path="category" value="Music" class="form-control" id="category"/>Music--%>
                    <%--<form:checkbox path="category" value="Dance" class="form-control" id="category"/>Dance--%>
                    <%--<form:checkbox path="category" value="Drama" class="form-control" id="category"/>Drama--%>
                    <%--<form:checkbox path="category" value="Food" class="form-control" id="category"/>Food--%>
                    <%--<form:checkbox path="category" value="Kids" class="form-control" id="category"/>Kids--%>


                <span class="help-block">
            Select 1 or more categories the event may belong to.
        </span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="description">Description:</label>
            <div class="col-sm-10">
                <form:textarea path="description" id="description" rows="3" class="form-control"/>
                <span class="help-block">
            Description of the event in 50 words.
        </span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="fees">Registration Fee:</label>
            <div class="col-sm-10">
                <form:input type="text" path="fees" class="form-control" id="fees" placeholder="0.0"/>
            </div>
        </div>
        <div class="form-group">
        <label class="control-label col-sm-2" for="image">Upload Image:</label>
        <div class="col-sm-10">
        <%--<form action="upload" method="post" enctype="multipart/form-data" class="form-control">--%>
        <input type="file" name="image" id="image" placeholder="Select file to upload:"/><br>
        <%--<input type="submit" value="upload" class="btn btn-default"/>--%>
        <%--</form>--%>
        </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" value="Submit" class="btn btn-default">
            </div>
        </div>
    </form:form>
</div>
</div>
<%--<p><a href="${pageContext.request.contextPath}/home">Home page</a></p>--%>
<footer>
    HT Media, Delhi.
</footer>
</body>
</html>
