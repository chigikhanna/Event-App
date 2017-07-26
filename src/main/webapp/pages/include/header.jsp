<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core" %>
<%--<nav class="navbar navbar-default navbar-fixed-top">--%>
    <%--<span style="display: inline">--%>
        <%--<a href="http://www.hindustantimes.com" style="margin-left: 35px">--%>
            <%--<img class="ht-logo" src="http://www.hindustantimes.com/images/app-images/ht/sm-logo-cm.png" height="30"--%>
                 <%--width="30">--%>
         <%--</a>--%>
        <%--<a class="logo" href="<s:url value="/home"/>">events</a>--%>
    <%--</span>--%>

    <%--<ul class="nav navbar-nav navbar-right">--%>
        <%--<li class="nav-item dropdown">--%>
            <%--<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown"--%>
               <%--aria-haspopup="true" aria-expanded="false">--%>
                <%--<span class="glyphicon glyphicon-search"></span>--%>
            <%--</a>--%>
            <%--<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">--%>
                <%--<li><a href="#">--%>
                    <%--<form action="" class="search-form">--%>
                        <%--<div class="form-group has-feedback">--%>
                            <%--<label for="search" class="sr-only">Search</label>--%>
                            <%--<input type="text" class="form-control" name="search" id="search"--%>
                                   <%--placeholder="Search"></input>--%>
                            <%--<span class="glyphicon glyphicon-search form-control-feedback"></span>--%>
                        <%--</div>--%>
                    <%--</form>--%>
                <%--</a></li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li><a href="<s:url value="/event/list"/>" style="color:black !important;">Search All</a></li>--%>
            <%--</ul>--%>
        <%--</li>--%>
        <%--<li><a href="<s:url value="/event/list"/>">BROWSE EVENTS</a></li>--%>

        <%--<li class="nav-item dropdown">--%>
            <%--<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown"--%>
               <%--aria-haspopup="true" aria-expanded="false">--%>
                <%--<span class="glyphicon glyphicon-user"></span>USER--%>
            <%--</a>--%>
            <%--<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">--%>
                <%--<li><a href="" style="color:black !important;"><span class="fa fa-cog"></span>Account Settings</a></li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li><a href="" style="color:black !important;">Log Out</a></li>--%>
            <%--</ul>--%>
        <%--</li>--%>

        <%--<li><a href="<s:url value="/event/add"/>" class="header-links-active">CREATE EVENT</a></li>--%>
        <%--<li><a href="http://www.hindustantimes.com/contact-us">CONTACT US </a></li>--%>
    <%--</ul>--%>
<%--</nav>--%>


<nav class="navbar navbar-default navbar-fixed-top" role = "navigation">
    <a href="http://www.hindustantimes.com">
        <img class="ht-logo" src="http://www.hindustantimes.com/images/app-images/ht/sm-logo-cm.png" height="45" width="45">
    </a>
    <a class="logo" href="<s:url value="/home"/>">events</a>
    <ul class="header-links nav navbar-nav navbar-right collapse navbar-collapse" id="navbarToggler">
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
        <li><a href="<s:url value="/event/list"/>">BROWSE EVENTS</a></li>

        <li><a href="#signin" data-target="#signin" data-toggle="modal"><span class="glyphicon glyphicon-log-in"></span> LOG IN</a></li>
        <li><a href="#signup" data-target="#signup" data-toggle="modal"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
        <li><a href="<s:url value="/event/add"/>">CREATE EVENT</a></li>
        <li><a href="http://www.hindustantimes.com/contact-us">CONTACT US</a></li>
    </ul>
</nav>



</body>
</html>