<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core" %>
<nav class="navbar navbar-default navbar-fixed-top" role = "navigation">
    <a href="http://www.hindustantimes.com">
        <img class="ht-logo" src="http://www.hindustantimes.com/images/app-images/ht/sm-logo-cm.png" height="45" width="45">
    </a>
    <a class="logo" href="<s:url value="/home"/>">events</a>
    <ul class="header-links nav navbar-nav navbar-right collapse navbar-collapse" id="navbarToggler">

        <li><a href="<s:url value="/event/list"/>"><span class="glyphicon glyphicon-search"></span>BROWSE EVENTS</a></li>
        <li><a href="<s:url value="/event/add"/>">CREATE EVENT</a></li>
        <li><a href="http://www.hindustantimes.com/contact-us">CONTACT US</a></li>
    </ul>
</nav>
</body>
</html>