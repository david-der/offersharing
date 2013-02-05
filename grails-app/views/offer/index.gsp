<%--
  Created by IntelliJ IDEA.
  User: davidder
  Date: 2/5/13
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Offer Sharing</title>
    <script src="http://connect.facebook.net/en_US/all.js"></script>
    <r:layoutResources />
</head>
<body>
<script type="text/javascript">
    window.fbAsyncInit = function() {
        FB.init({
            appId      : "372209182874359",                     // App ID
            channelUrl : "//lit-meadow-8131.herokuapp.com/channel.html", // Channel File
            status     : true,                                    // check login status
            cookie     : true,                                    // enable cookies to allow the server to access the session
            xfbml      : true                                     // parse XFBML
        });

        // // Listen to the auth.login which will be called when the user logs in
        // // using the Login button
        // FB.Event.subscribe('auth.login', function(response) {
        //   // We want to reload the page now so Ruby can read the cookie that the
        //   // Javascript SDK sat. But we don't want to use
        //   // window.location.reload() because if this is in a canvas there was a
        //   // post made to this page and a reload will trigger a message to the
        //   // user asking if they want to send data again.
        //   window.location = window.location;
        // });
        //
        // FB.Canvas.setAutoGrow();
    };

    // Load the SDK Asynchronously
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));


    function Facebook_login () {
        FB.login(function(response) {
            if (response.authResponse) {
                console.log('Welcome!  Fetching your information.... ');
                FB.api('/me', function(response) {
                    console.log('Good to see you, ' + response.name + '.');
                });
            } else {
                console.log('User cancelled login or did not fully authorize.');
            }
        });
    }
</script>

<g:javascript library="application"/>
<r:layoutResources />

<a href="#" onclick="Facebook_login();">FB Login</a>

</body>
</html>