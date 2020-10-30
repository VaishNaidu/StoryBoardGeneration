<%-- 
    Document   : admin_home
    Created on : Feb 20, 2018, 1:46:47 PM
    Author     : java3
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Storyboard.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Reporters Home</title>
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

        <div id="wrapper">

            <!-- Main -->
            <section id="main" class="wrapper">
                <section>
                    <h2>News Details</h2>
                    <div class="table-wrapper">
                        <table class="alt" style="width: 98%">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Head Line</th>
                                    <th>Tags</th>
                                    <th>Date</th>
                                    <th>Time</th>
                                    <th>Place</th>
                                    <th>Pic1</th>
                                    <th>Pic2</th>
                                    <th>Pic3</th>
                                    <th>News Details</th>
                                    <th>News Types</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <%
                                        Connection con = SQLconnection.getconnection();
                                        Statement st = con.createStatement();
                                        try {
                                            ResultSet rs = st.executeQuery("Select * from news where statuss='Waiting'");
                                            while (rs.next()) {
                                    %>
                                    <td><%=rs.getString("id")%></td>
<!--                                    <td><img src="pic.jsp?uid= <% // =rs.getString("id")%>" alt="" width="80px" ></td>-->
                                    <td><%=rs.getString("head_line")%></td>
                                    <td><%=rs.getString("tags")%></td>
                                    <td><%=rs.getString("date_held")%></td>
                                    <td><%=rs.getString("time_held")%></td>
                                    <td><%=rs.getString("place")%></td>
                                    <td><img src="pic1.jsp?uid= <%=rs.getString("id")%>" alt="" width="80px" ></td>
                                    <td><img src="pic2.jsp?uid= <%=rs.getString("id")%>" alt="" width="80px" ></td>
                                    <td><img src="pic3.jsp?uid= <%=rs.getString("id")%>" alt="" width="80px" ></td>
                                    <td style="color: green"><%=rs.getString("news_details")%></td>
                                    <td><%=rs.getString("type")%></td>
                                    <td style="color: red"><%=rs.getString("statuss")%></td>
                                    <td><a href="approve_news.jsp?newsid=<%=rs.getString("newsid")%>&repid=<%=rs.getString("repid")%>">Approve</a></td>
                                </tr>
                                <%                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                            </tbody>
                        </table>
                    </div>
                </section>
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