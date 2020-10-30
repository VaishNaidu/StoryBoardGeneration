<%-- 
    Document   : user_home
    Created on : Feb 21, 2018, 6:45:52 PM
    Author     : java3
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Storyboard.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>User Home</title>
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
            <a href="User_home.jsp" class="title">USER</a>
            <nav>
                <ul>
                    <li><a href="user_home.jsp" class="active">Home</a></li>
                    <li><a href="news.jsp">Search News</a></li>
                    <li><a href="image_search.jsp">Image Search</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </nav>
        </header>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <section id="main" class="wrapper">
                <div class="inner">
                    <h1 class="major">Image Search</h1>
                    <form action="img_search.jsp" method="get" enctype="multipart/form-data">
                            <center>
                                <div class="4u 12u$(xsmall)">
                                    <br>
                                     <h2 class="major">Search Keyword</h2>
                                    <input type="text" name="search"  width="200px" >
                                    <br>
                                    <ul class="actions">
                                        <li><input type="submit" value="Search" class="special" /></li>
                                    </ul>
                                </div>
                            </center>
                    </form>
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