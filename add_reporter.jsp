<%-- 
    Document   : add_reporter
    Created on : Feb 20, 2018, 2:25:52 PM
    Author     : java3
--%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
        Hyperspace by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
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

        <!-- Header -->
        <header id="header">
            <a href="admin_home.jsp" class="title">ADMIN</a>
            <nav>
                <ul>
                    <li><a href="admin_home.jsp" class="active">Home</a></li>
                    <li><a href="add_reporter.jsp">Add Reporters</a></li>
                    <li><a href="rep_details.jsp">Reporters Details</a></li>
                    <li><a href="news_grant.jsp">News Approvals</a></li>
                    <li><a href="latest.jsp">Latest News</a></li>
                    <li><a href="users_details.jsp">Users Details</a></li>
                    <li><a href="graph.jsp">Graph Analysis</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </nav>
        </header>
        <%
        
Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 5;
        String letters = "0123456789";
        String emp = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            emp += letters.substring(index, index + 1);
        }
        String empid = "EMP" + emp;


%>
        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <section id="main" class="wrapper">
                <div class="inner">
                    <h1 class="major">Add Reporters</h1>

                    <!-- Form -->
                    <section>

                      <form action="add_reporter" method="post" enctype="multipart/form-data">
                            <center>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="email">Name</label>
                                    <input type="text" name="name" id="email" width="200px" />
                                </div>
                                <input type="hidden" name="empid" value="<%=empid%>">
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">Email</label>
                                    <input type="email" name="email" id="email" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">DOB</label>
                                    <input type="date" name="dob" id="name" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="email">Gender</label>
                                    <select name="gender">
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">Educational Qualification</label>
                                    <input type="text" name="edu" id="name" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">Work Experience</label>
                                    <textarea name="exp" rows="2" width="200px" ></textarea>
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="email">Designation</label>
                                    <select name="des">
                                        <option value="Senior Reporter">Senior Reporter</option>
                                        <option value="Junior Reporter">Junior Reporter</option>
                                        <option value="Trainee">Trainee</option>
                                    </select>
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">Phone</label>
                                    <input type="text" name="phone" id="name" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="name">Address</label>
                                    <textarea name="address" rows="3" width="200px" ></textarea>
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <label for="email">Reporter Photo</label>
                                    <input type="file" name="file" id="email" width="200px" />
                                </div>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                    <ul class="actions">
                                        <li><input type="submit" value="Add" class="special" /></li>
                                        <li><input type="reset" value="Reset" /></li>
                                    </ul>
                                </div>
                            </center>
                        </form>
                    </section>


                </div>
            </section>

        </div>

        <!-- Footer -->
        <footer id="footer" class="wrapper alt">
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