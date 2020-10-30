<%-- 
    Document   : otp
    Created on : Feb 22, 2018, 1:46:06 PM
    Author     : java3
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Story Board</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="home/assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="home/assets/css/main.css" />
        <!--[if lte IE 9]><link rel="stylesheet" href="home/assets/css/ie9.css" /><![endif]-->
        <!--[if lte IE 8]><link rel="stylesheet" href="home/assets/css/ie8.css" /><![endif]-->
    </head>
    <body>

        <!-- Sidebar -->
        <section id="sidebar">
            <div class="inner">
                <nav>
                    <ul>
                        <li><a href="#one">OTP Verification</a></li>
                    </ul>
                </nav>
            </div>
        </section>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- One -->
            <section id="one" class="wrapper style2 spotlights">
                <div class="inner">
                    <br>
                    <br>
                    <h2>Enter Your OTP</h2>
                    <div class="split style1">
                        <section>
                            <form method="post" action="verify_otp.jsp">

                                <div class="field">
                                    <input type="password" name="otp" placeholder="Enter your OTP" id="email" />
                                </div>
                                <ul class="actions">
                                    <li><button type="submit" class="button submit">Verify</button></li>
                                </ul>
                            </form>
                        </section>
                        <section>
                            <ul class="contact">
                                <img src="home/images/otp.png"  width="250px"alt="">
                            </ul>
                        </section>
                    </div>
                </div>
            </section>

        </div>

        <!-- Scripts -->
        <script src="home/assets/js/jquery.min.js"></script>
        <script src="home/assets/js/jquery.scrollex.min.js"></script>
        <script src="home/assets/js/jquery.scrolly.min.js"></script>
        <script src="home/assets/js/skel.min.js"></script>
        <script src="home/assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="home/assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="home/assets/js/main.js"></script>

    </body>
</html>