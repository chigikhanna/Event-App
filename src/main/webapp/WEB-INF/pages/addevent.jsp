<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>HT Events</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat" type="text/css">
    <link rel="stylesheet" href="design.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
    <script src="script.js"></script>
</head>
<body id="top" data-spy="scroll" data-target=".navbar" data-offset="50" class="blue-bg">

<nav class="navbar navbar-default navbar-fixed-top">
    <a href="http://www.hindustantimes.com">
        <img class="ht-logo" src="http://www.hindustantimes.com/images/app-images/ht/sm-logo-cm.png" height="45" width="45">
    </a>
    <a class="logo" href="<s:url value="/home"/>">events</a>

    <ul class="nav navbar-nav navbar-right">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="glyphicon glyphicon-search"></span>
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a href="#"><form action="" class="search-form">
                    <div class="form-group has-feedback">
                        <label for="search" class="sr-only">Search</label>
                        <input type="text" class="form-control" name="search" id="search" placeholder="Search"></input>
                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
                    </div>
                </form></a></li>
                <li class="divider"></li>
                <li><a href="<s:url value="/event/list"/>" style="color:black !important;">Search All</a></li>
            </ul>
        </li>
        <li><a href="<s:url value="/event/list"/>" >BROWSE EVENTS</a></li>

        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="glyphicon glyphicon-user"></span>USER
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <li><a href="" style="color:black !important;"><span class="fa fa-cog"></span>Account Settings</a></li>
                <li class="divider"></li>
                <li><a href=""  style="color:black !important;">Log Out</a></li>
            </ul>
        </li>

        <li><a href="<s:url value="/event/form"/>" class="header-links-active">CREATE EVENT</a></li>
        <li><a href="http://www.hindustantimes.com/contact-us">CONTACT US </a></li>
    </ul>
    </span>
</nav>
<br><br>
<div class="form-heading">Create An Event</div>

<div class="create">

    <!-- <div class="container"> -->
    <form method="POST" commandName="event" action="${pageContext.request.contextPath}/event/add" enctype="multipart/form-data" class="form-horizontal">
        <errors path="*" cssClass="errorblock" element="div" />

        <div class="form-group">
            <label class="control-label col-sm-2" for="name">Event Name:</label>
            <div class="col-sm-10">
                <input type="text" path="name" class="form-control" id="name" placeholder="Enter name of the event"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="address">Address:</label>
            <div class="col-sm-10">
                <input type="text" path="address" class="form-control" id="address" placeholder="Enter address"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="city">City:</label>
            <div class="col-sm-10">
                <input type="text" path="city" class="form-control" id="city" placeholder="Enter city"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="country">Country:</label>
            <div class="col-sm-10">
                <input type="text" path="country" class="form-control" id="country" placeholder="Enter country"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="pincode">Pin Code:</label>
            <div class="col-sm-10">
                <input type="text" path="pincode" class="form-control" id="pincode" placeholder="Enter pin code"/>
            </div>
        </div>
        <!--
            <div class="form-group">
                <label class="control-label col-sm-2" for="day">Day  <span class="fa fa-rupee"></span></label>
                <div class="col-sm-10">
                    <input type="text" path="day" class="form-control" id="day" placeholder="Enter day of the event"/>
                </div>
            </div> -->

        <div class="form-group">
            <label class="control-label col-sm-2" for="date">Date  <span class="fa fa-calendar"></span></label>
            <div class="col-sm-10">
                <input type="date" path="date" class="form-control" id="date" placeholder="Enter date of the event"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="time">Time <span class="fa fa-clock-o "></span></label>
            <div class="col-sm-10">
                <input type="time" path="time" class="form-control" id="time"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="duration">Duration:</label>
            <div class="col-sm-10">
                <input type="text" path="duration" class="form-control" id="duration"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Category:</label>
            <div class="col-sm-10">
                <select id="category" name="category[]" multiple>
                    <option value="music">Music</option>
                    <option value="dance">Dance</option>
                    <option value="theatre">Theatre</option>
                    <option value="business">Business</option>
                    <option value="art">Art</option>
                    <option value="educational">Educational</option>
                    <option value="networking">Networking</option>
                    <option value="sports">Sports</option>
                </select>

                <span class="help-block">
            Select 1 or more categories the event may belong to.
        </span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="description">Description:</label>
            <div class="col-sm-10">
                <textarea path="description" id="description" rows="3" class="form-control"></textarea>
                <span class="help-block">
            Description of the event.
        </span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="fees">Registration Fee <span class="fa fa-rupee"></span></label>
            <div class="col-sm-10">
                <input type="text" path="fees" class="form-control" id="fees" placeholder="0.0"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="image">Upload Image <span class="fa fa-file-photo-o"></span></label>
            <div class="col-sm-10">
                <form action="upload" method="post" enctype="multipart/form-data" class="form-control">
                    <input type="file" name="file" id="image" placeholder="Select file to upload:"/><br>
                    <!-- <input type="submit" value="upload" class="btn btn-default" /> -->
                </form>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" value="Submit" class="btn btn-default submit">
            </div>
        </div>

    </form>
</div>
<!-- </div> -->
</div>
<br>

<footer class="text-center">
    <a class="up-arrow" href="#top" data-toggle="tooltip" title="TO TOP">
        <span class="glyphicon glyphicon-chevron-up"></span>
    </a><br><br>

    <div class="follow">
        Follow Us:
        <a href="https://www.facebook.com/hindustantimes" class="fa fa-facebook expand"></a>
        <a href="https://twitter.com/htTweets" class="fa fa-twitter expand"></a>
        <a href="https://plus.google.com/+hindustantimes/posts" class="fa fa-google-plus expand"></a>
        <a href="https://www.instagram.com/hindustantimes/" class="fa fa-instagram expand"></a>
        <a href="https://www.linkedin.com/company/hindustantimes" class="fa fa-linkedin expand"></a>
        <a href="https://www.youtube.com/user/ht" class="fa fa-youtube expand"></a>
    </div><br>
    <p>
        Copyright &copy 2017. HT Media Limited. All rights reserved.
        <span class="footer-links">
  <a href="http://www.htmedia.in/Sectionb14c.html?Page=Page-HTMedia-AboutUs">About Us</a>
  <a href="http://www.hindustantimes.com/contact-us"> Contact Us</a>
  <a href="http://www.hindustantimes.com/privacy-policy"> Privacy Policy</a>
  <a href="http://www.hindustantimes.com/disclaimer"> Disclaimer</a>
  <a href="http://www.shine.com/"> Jobs</a>
</span></p>
</footer>

</body>
</html>
