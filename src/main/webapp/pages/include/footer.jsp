<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

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
    </div>
    <br>
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

<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title" id="modalLabel">Sign Up</h3>
                <p>Already have an account?
                    <button type="button" class="btn btn-default" id="signin-trigger"> Sign In</button>
                </p>
                <div class="modal-body">
                    <form method="POST" commandName="user" action="${pageContext.request.contextPath}/user/add">
                        <div class="form-group">
                            <label for="name" class="form-control-label">Name <span class="fa fa-user-o"></span></label>
                            <input type="text" class="form-control" name="name" id="name">
                        </div>
                        <div class="form-group">
                            <label for="email" class="form-control-label">Email <span
                                    class="fa fa-envelope-o"></span></label>
                            <input type="text" class="form-control" name="email" id="email"></input>
                        </div>
                        <div class="form-group">
                            <label for="pw" class="form-control-label">Password <span
                                    class="glyphicon glyphicon-lock"></span></label>
                            <input type="password" class="form-control" name="pw" id="pw"></input>
                        </div>
                    </form>
                    <div class="form-group">
                        <label for="phone" class="form-control-label">Phone <span class="fa fa-phone"></span></label>
                        <input type="text" class="form-control" name="phone" id="phone"></input>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-primary" value="Sign Up"></input>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <p>By signing up, I agree to terms of service & privacy policy.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title" id="modalLabel">Sign In</h3>
                <p>Not a member?
                    <button type="button" class="btn btn-default" id="signup-trigger">Sign Up</button>
                    <!-- <p>New User? <a href="#signup" data-target="#signup" data-toggle="modal" id="signup-trigger">Sign Up</a></p> -->
            </div>
            <div class="modal-body">
                <form method="POST" commandName="user" action="">
                    <div class="form-group">
                        <label for="email" class="form-control-label">Email <span
                                class="fa fa-envelope-o"></span></label>
                        <input type="text" class="form-control" name="email" id="email"></input>
                    </div>
                    <div class="form-group">
                        <label for="pw" class="form-control-label">Password <span
                                class="glyphicon glyphicon-lock"></span></label>
                        <input type="password" class="form-control" name="pw" id="pw"></input>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <input type="submit" class="btn btn-primary" value="Sign In"></input>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<script>
    // Accordion
    // function myFunction(id) {
    //     var x = document.getElementById(id);
    //     if (x.className.indexOf("w3-show") == -1) {
    //         x.className += " w3-show";
    //         x.previousElementSibling.className += " w3-theme-d1";
    //     } else {
    //         x.className = x.className.replace("w3-show", "");
    //         x.previousElementSibling.className =
    //         x.previousElementSibling.className.replace(" w3-theme-d1", "");
    //     }
    // }

    // Used to toggle the menu on smaller screens when clicking on the menu button
    function openNav() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }

    $("#signup-trigger").click(function () {
        $('#signin').modal('hide');
        $('#signup').modal('show');
    });

    $("#signin-trigger").click(function () {
        $('#signup').modal('hide');
        $('#signin').modal('show');
    });

    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

    $(document).ready(function () {
        $(".up-arrow").on('click', function (event) {
            if (this.hash !== "") {
                // Prevent default anchor click behavior
                event.preventDefault();
                var hash = this.hash;
                $('html, body').animate({
                    scrollTop: $(hash).offset().top
                }, 600, function () {
                    // Add hash (#) to URL when done scrolling (default click behavior)
                    window.location.hash = hash;
                });
            }
        });
    });

    function myMap() {
        var mapCanvas = document.getElementById("map");
        var mapOptions = {
            center: new google.maps.LatLng(51.5, -0.2), zoom: 10
        };
        var map = new google.maps.Map(mapCanvas, mapOptions);
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAB8O9iXUkHDvWsPnJ8AM-GJ5KcIobOMxU&callback=myMap"></script>


<script>
    baseURL = "<%=request.getContextPath()%>";
</script>