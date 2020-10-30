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
        <style>
            .mySlides {display:none}
            .demo {cursor:pointer}
        </style>

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
                    <h3><marquee><blink><img src="home/images/assets/Breaking_long.png" width="1300px" alt=""></blink></marquee></h3>
                                <%
                                    Connection con = SQLconnection.getconnection();
                                    Statement st = con.createStatement();
                                    try {
                                        ResultSet rs = st.executeQuery("SELECT * FROM ( SELECT id,head_line,tags,time_held, date_held,place,news_details, DATE(date_held) FROM news) AS tmp ORDER BY date_held DESC");
                                        while (rs.next()) {
                                %>
                    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    <h1><%=rs.getString("head_line")%></h1>
                    <h5>TAGS&nbsp;&nbsp;<%=rs.getString("tags")%></h5><p><%=rs.getString("date_held")%>&nbsp;&nbsp;<%=rs.getString("time_held")%>&nbsp;&nbsp;<%=rs.getString("place")%></p>
                    <div class="box alt">
                        <div class="row uniform">
                            <div class="4u"><span class="image fit"><img src="pic1.jsp?uid= <%=rs.getString("id")%>" alt="" ></span></div>
                            <div class="4u"><span class="image fit"><img src="pic2.jsp?uid= <%=rs.getString("id")%>" alt="" ></span></div>
                            <div class="4u$"><span class="image fit"><img src="pic3.jsp?uid= <%=rs.getString("id")%>" alt="" ></span></div>
                        </div>
                    </div>
                    <p><span class="image left"></span><p class="read-more-wrap"><%=rs.getString("news_details")%><span class="read-more-target"></span></p>
                    ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    <%                                        }
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }

                    %>
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
        <script>
            var slideIndex = 1;
            showDivs(slideIndex);

            function plusDivs(n) {
                showDivs(slideIndex += n);
            }

            function currentDiv(n) {
                showDivs(slideIndex = n);
            }

            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                if (n > x.length) {slideIndex = 1}
                if (n < 1) {slideIndex = x.length}
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                }
                x[slideIndex-1].style.display = "block";
                dots[slideIndex-1].className += " w3-opacity-off";
            }
        </script>
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