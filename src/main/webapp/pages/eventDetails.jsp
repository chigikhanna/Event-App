<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ht events</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<s:url value="/resources/css/design.css"/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="w3-theme-l5">

<jsp:include page="include/header.jsp"/>

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">
    <!-- The Grid -->
    <div class="w3-row">
        <!-- Left Column -->
        <div class="w3-col m3">
            <!-- Profile -->
            <div class="w3-card-2 w3-round w3-white">
                <div class="w3-container">
                    <!-- <h4 class="w3-center">My Profile</h4> -->
                    <p class="w3-center"><img src="img/home-1.jpg" style="margin-top:20px;height:300px;width:300px"
                                              alt="Avatar"></p>
                    <hr>
                    <p class="left-header"><i class="fa fa-fw fa-calendar w3-margin-right"></i>DATE AND TIME</p>
                    <p class="w3-margin-right"> ${event.date}</p>
                    <a href=""><i class="w3-margin-right"></i>Add to calender</a><br><br>
                    <p class="left-header"><i class="fa fa-fw fa-map-marker w3-margin-right"></i>LOCATION</p>
                    <p class="w3-margin-right">
                        ${event.address}<br> ${event.city}<br> ${event.country}-${event.pincode}</p>
                        <a href=""><i class="w3-margin-right"></i>View on map</a><br><br>

                </div>
            </div>
            <br>

            <!-- Accordion -->
            <div class="w3-card-2 w3-round" style="margin-top:20px;">
                <!-- <div class="w3-white"> -->
                <button onclick="" class="w3-button w3-block w3-theme-l1 w3-left-align">
                    <i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> My Groups
                </button>
            </div>
            <div class="w3-card-2 w3-round" style="margin-top:20px;">
                <button onclick="" class="w3-button w3-block w3-theme-l1 w3-left-align">
                    <i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> My Events
                </button>
            </div>
            <!-- End Left Column -->
        </div>

        <!-- Middle Column -->
        <div class="w3-col m7">
            <div class="w3-row-padding">
                <div class="w3-col m12">
                    <div class="w3-card-2 w3-round w3-white">
                        <div class="w3-container w3-padding"><span class="bs-align right-align"><a
                                class="fa fa-bookmark-o" data-toggle="tooltip" data-placement="bottom"
                                title="Bookmark"></a>
              <a class="fa fa-share-alt" data-toggle="tooltip" data-placement="bottom" title="Share"></a></span>
                            <h2>${event.name}</h2>
                            <hr class="w3-clear">
                            <h4>Description</h4>
                            <!-- <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom"> -->
                            <p>${event.description}</p>
                            <h4>Tickets</h4>
                            <h4>Category: <c:forEach items="${event.categories}"
                                                     var="category">${category.name}</c:forEach></h4>
                            <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i
                                    class="fa fa-thumbs-up"></i>  REGISTER
                            </button>
                            <!-- <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> -->
                        </div>
                    </div>
                </div>
            </div>

            <!-- End Middle Column -->
        </div>

        <!-- Right Column location-->
        <div class="w3-col m2">
            <div class="w3-card-2 w3-round w3-white w3-center">
                <div class="w3-container">

                    <div class="map" id="map"></div>
                    <p>MAP</p>
                    <!-- <img src="" alt="google map" style="width:100%;"> -->
                    <!-- <p><strong>Holiday</strong></p> -->
                    <!-- <p>Friday 15:00</p> -->
                    <!-- <p><button class="w3-button w3-block w3-theme-l4">Info</button></p> -->
                </div>
            </div>
            <br>

            <div class="w3-card-2 w3-round w3-white w3-center">
                <div class="w3-container">
                    <p>Share with friends</p>
                    <div class="sh">
                        <a href="" class="fa fa-facebook share"></a>
                        <a href="" class="fa fa-twitter share"></a>
                        <a href="" class="fa fa-google-plus share"></a>
                        <a href="" class="fa fa-instagram share"></a>
                        <a href="" class="fa fa-linkedin share"></a>
                        <a href="" class="fa fa-youtube share"></a>
                    </div>
                </div>
            </div>
            <br>
        </div>
    </div>
</div>
<br>

<jsp:include page="include/footer.jsp"/>

</body>
</html>
