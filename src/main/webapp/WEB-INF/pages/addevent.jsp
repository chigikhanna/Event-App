<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Event</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<<<<<<< HEAD
    <link rel="stylesheet" href="/Users/tanvigupta/Documents/ht/Event-App/src/main/webapp/WEB-INF/pages/stylesheet.css">
=======
    <link rel="stylesheet" href="stylesheet.css">
>>>>>>> origin/master
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Add event</h1>
<<<<<<< HEAD
<%--<div class="boxed" style="width: 800px !important;">--%>
<div class="container">
<form:form method="POST" commandName="event" action="${pageContext.request.contextPath}/event/add" class="form-horizontal">
    <div class="form-group">
    <label class="control-label col-sm-2" for="name">Event Name:</label>
    <div class="col-sm-10">
            <form:input type="text" path="name" class="form-control" id="name" placeholder="Enter name of the event"/>
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
            <form:input type="date" path="date" class="form-control" id="date" placeholder="Enter date of the event"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="time">Time:</label>
        <div class="col-sm-10">
            <form:input type="time" path="time" class="form-control" id="time"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="duration">Duration:</label>
        <div class="col-sm-10">
            <form:input type="text" path="duration" class="form-control" id="duration"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="category">Category:</label>
        <div class="col-sm-10">
            <form:input type="text" path="category" class="form-control" id="category"/>
                <form:checkbox path="category" value="Music"/>Music
                <form:checkbox path="category" value="Dance"/>Dance
                <form:checkbox path="category" value="Drama"/>Drama
                <form:checkbox path="category" value="Food"/>Food
                <form:checkbox path="category" value="Kids"/>Kids
            <span class="help-block">
            Select 1 or more categories the event may belong to.
        </span>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="description">Description:</label>
        <div class="col-sm-10">
            <form:input type="text" path="description" class="form-control" id="description"/>
            <span class="help-block">
            Description of the event in 50 words.
        </span>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="fees">Registration Fee:</label>
        <div class="col-sm-10">
            <form:input type="text" path="fees" class="form-control" id="fees"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="image">Upload Image:</label>
        <div class="col-sm-10">
            <form action="upload" method="post" enctype="multipart/form-data" class="form-control">
                <input type="file" name="file" id="image" placeholder="Select file to upload:"/>
                <input type="submit" value="upload"/>
            </form>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <input type="submit" value="Submit" class="btn btn-default">
        </div>
    </div>
</form:form>
</div>
<%--</div>--%>
=======
<div class="eventform">
    <div class="container">
        <form:form method="POST" commandName="event" action="${pageContext.request.contextPath}/event/add" class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Event Name:</label>
                <div class="col-sm-10">
                    <form:input type="text" path="name" class="form-control" id="name" placeholder="Enter name of the event"/>
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
                    <form:input type="date" path="date" class="form-control" id="date" placeholder="Enter date of the event"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="time">Time:</label>
                <div class="col-sm-10">
                    <form:input type="time" path="time" class="form-control" id="time"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="duration">Duration:</label>
                <div class="col-sm-10">
                    <form:input type="text" path="duration" class="form-control" id="duration"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="category">Category:</label>
                <div class="col-sm-10">
                    <form:input type="text" path="category" class="form-control" id="category"/>
                        <%--<form:checkbox path="category" value="Music"/>Music--%>
                        <%--<form:checkbox path="category" value="Dance"/>Dance--%>
                        <%--<form:checkbox path="category" value="Drama"/>Drama--%>
                        <%--<form:checkbox path="category" value="Food"/>Food--%>
                        <%--<form:checkbox path="category" value="Kids"/>Kids--%>
                    <span class="help-block">
            Select 1 or more categories the event may belong to.
        </span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="description">Description:</label>
                <div class="col-sm-10">
                    <form:input type="text" path="description" class="form-control" id="description"/>
                    <span class="help-block">
            Description of the event in 50 words.
        </span>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="fees">Registration Fee:</label>
                <div class="col-sm-10">
                    <form:input type="text" path="fees" class="form-control" id="fees"/>
                </div>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<label class="control-label col-sm-2" for="image">Upload Image:</label>--%>
                <%--<div class="col-sm-10">--%>
                    <%--<form action="upload" method="post" enctype="multipart/form-data" class="form-control">--%>
                        <%--<input type="file" name="file" id="image" placeholder="Select file to upload:"/>--%>
                        <%--<input type="submit" value="upload"/>--%>
                    <%--</form>--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" value="Submit" class="btn btn-default">
                </div>
            </div>
        </form:form>
    </div>
</div>
>>>>>>> origin/master
<p><a href="${pageContext.request.contextPath}/home">Home page</a></p>

</body>
</html>
