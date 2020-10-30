<%-- 
    Document   : home
    Created on : Feb 20, 2018, 11:00:56 AM
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
                        <li><a href="#intro">Welcome</a></li>
                        <li><a href="#one">Users</a></li>
                        <li><a href="#two">News Reporters</a></li>
                        <li><a href="#three">Administrator</a></li>
                    </ul>
                </nav>
            </div>
        </section>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Intro -->
            <section id="intro" class="wrapper style1 fullscreen fade-up">
                <div class="inner">
                    <h1>Abstract</h1>
                    <p align="justify" style="font-size: 1em;">Recent studies have shown that a noticeable percentage of web search traffic is about social events. While traditional websites can only show human-edited events, in this paper we present a novel system to automatically detect events from search log data and generate storyboards where the events are arranged chronologically. We chose image search log as the resource for event mining, as search logs can directly reflect people’s interests. To discover events from log data, we present a Smooth Nonnegative Matrix Factorization framework (SNMF) which combines the information of query semantics, temporal correlations, search logs and time continuity. Moreover, we consider the time factor an important element since different events will develop in different time tendencies. In addition, to provide a media-rich and visually appealing storyboard, each event is associated with a set of representative photos arranged along a timeline. These relevant photos are automatically selected from image search results by analyzing image content features. We use celebrities as our test domain, which takes a large percentage of image search traffics. Experiments consisting of web search traffic on 200 celebrities, for a period of six months, show very encouraging results compared with handcrafted editorial storyboards.</p>
                    <ul class="actions">
                    </ul>
                </div>
            </section>

            <!-- One -->
            <section id="one" class="wrapper style2 spotlights">
                <div class="inner">
                    <h2>Users</h2>
                    <div class="split style1">
                        <section>
                            <form method="post" action="user_login.jsp">
                                <div class="field">
                                    <label for="name">Name</label>
                                    <input type="text" name="name" id="name" />
                                </div>
                                <div class="field">
                                    <label for="email">Password</label>
                                    <input type="password" name="pass" id="email" />
                                </div>
                                <ul class="actions">
                                    <li><button type="submit" class="button submit">Login</button></li>
                                    <li><a href="#register" class="button">Register</a></li>
                                </ul>
                            </form>
                        </section>
                        <section>
                            <ul class="contact">
                                <img src="home/images/users.png" alt="">
                            </ul>
                        </section>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
            </section>
            <!-- Reg -->
            <section id="register" class="wrapper" style="background: #159957;  /* fallback for old browsers */
                     background: -webkit-linear-gradient(to right, #155799, #159957);  /* Chrome 10-25, Safari 5.1-6 */
                     background: linear-gradient(to right, #155799, #159957); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                     ">
                <div class="inner">
                    <h2>Fill User Details</h2>
                    <div class="split style1">
                        <section>
                            <form method="post" action="user_reg.jsp">

                                <div class="field">
                                    <label for="name">Name</label>
                                    <input type="text" name="name" id="name"  />
                                </div>
                                <div class="field">
                                    <label for="email">Email</label>
                                    <input type="email" name="email" id="email" />
                                </div>
                                <div class="field">
                                    <label for="name">Password</label>
                                    <input type="password" name="pass" id="name" />
                                </div>

                                <div class="field">
                                    <label for="name">DOB</label>
                                    <input type="date" name="dob" id="name" />
                                </div>
                                <div class="field">
                                    <label for="email">Gender</label>
                                    <select name="gender">
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                                <div class="field">
                                    <label for="message">Address</label>
                                    <textarea name="address" id="message" rows="3"></textarea>
                                </div>
                                <div class="field">
                                    <label for="name">Phone</label>
                                    <input type="text" name="phone" id="name"  />
                                </div>
                                <ul class="actions">
                                    <li><button type="submit" class="button submit">Submit</button></li>
                                </ul>
                            </form>
                        </section>
                        <section>
                            <ul class="contact">
                                <img src="home/images/register.png" width="99%" alt="">
                            </ul>
                        </section>
                    </div>
                </div>
            </section>

            <!-- Two -->
            <section id="two" class="wrapper style3 fade-up">
                <div class="inner">
                    <h2>News Reporters</h2>
                    <div class="split style1">
                        <section>
                            <form method="post" action="reporter_login.jsp">

                                <div class="field">
                                    <label for="email">Reporter Id</label>
                                    <input type="text" name="empid" id="email" />
                                </div>
                                <div class="field">
                                    <label for="name">Password</label>
                                    <input type="password" name="pass" id="name" />
                                </div>
                                <ul class="actions">
                                    <li><button type="submit" class="button submit">Log in</button></li>
                                </ul>
                            </form>
                        </section>
                        <section>
                            <ul class="contact">
                                <img src="home/images/Reporter.jpg" alt="">
                            </ul>
                        </section>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
            </section>

            <!-- Three -->
            <section id="three" class="wrapper style1 fade-up">
                <div class="inner">
                    <h2>Administrator</h2>
                    <div class="split style1">
                        <section>
                            <form method="post" action="admin_log">

                                <div class="field">
                                    <label for="email">Name</label>
                                    <input type="text" name="name" id="email" />
                                </div>
                                <div class="field">
                                    <label for="name">Password</label>
                                    <input type="password" name="pass" id="name" />
                                </div>
                                <ul class="actions">
                                    <li><button type="submit" class="button submit">Log in</button></li>
                                </ul>
                            </form>
                        </section>
                        <section>
                            <ul class="contact">
                                <img src="home/images/admin.png" alt="">
                            </ul>
                        </section>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
            </section>

        </div>

        <!-- Footer -->
        <footer id="footer" class="wrapper style1-alt">
            <div class="inner">
                <ul class="menu">

                </ul>
            </div>
        </footer>

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