<%-- 
    Document   : rep_details
    Created on : Feb 20, 2018, 3:49:28 PM
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
        <title>Admin Home</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="home/assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="home/assets/css/main.css" />
        <!--[if lte IE 9]><link rel="stylesheet" href="home/assets/css/ie9.css" /><![endif]-->
        <!--[if lte IE 8]><link rel="stylesheet" href="home/assets/css/ie8.css" /><![endif]-->
    </head>
    <body>
        <style>
            tr:hover {
                background-color: #3e4094;
            }
        </style>
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

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <section id="main" class="wrapper">
                <section>
                    <h2>Reporters Details</h2>
                    <div class="table-wrapper">
                        <table class="alt">
                            <thead>
                                <tr>
                                    <th>Reporter Id</th>
                                    <th>Photo</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>DOB</th>
                                    <th>Gender</th>
                                    <th>Qualification</th>
                                    <th>Work Experience</th>
                                    <th>Designation</th>
                                    <th>Address</th>
                                    <th>Phone</th>
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
                                            ResultSet rs = st.executeQuery("Select * from reporters");
                                            while (rs.next()) {
                                    %>
                                    <td><%=rs.getString("repid")%></td>
                                    <td><img src="pic.jsp?uid=<%=rs.getString("id")%>" alt="" width="80px" ></td>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("email")%></td>
                                    <td><%=rs.getString("dob")%></td>
                                    <td><%=rs.getString("gender")%></td>
                                    <td><%=rs.getString("edu")%></td>
                                    <td><%=rs.getString("exp")%></td>
                                    <td><%=rs.getString("des")%></td>
                                    <td><%=rs.getString("address")%></td>
                                    <td><%=rs.getString("phone")%></td>
                                    <td><%=rs.getString("status")%></td>
                                    <td><a href="">Block</a></td>
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