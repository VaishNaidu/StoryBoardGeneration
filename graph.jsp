<%-- 
    Document   : admin_home
    Created on : Feb 20, 2018, 1:46:47 PM
    Author     : java3
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Storyboard.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
              DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
                Date date = new Date();
                String time = dateFormat.format(date);
                String val1 = "", val2 = "", val3 = "", val4 = "", val5 = "";
                String val11 = "", val22 = "", val33 = "", val44 = "", val55 = "";
                int i = 0;
                System.out.println("Date and Time : " + time);
                
                try {
                    Connection con = SQLconnection.getconnection();
                   
                Statement st = con.createStatement();
                    ResultSet rs0 = st.executeQuery("SELECT search, COUNT(search) AS value_occurrence FROM  search GROUP BY search ORDER BY value_occurrence DESC LIMIT 5");
                    while(rs0.next()) {
                        i++;
                        if (i == 1) {
                            val1 = rs0.getString("search");
                            val11 = rs0.getString("value_occurrence");
                        } else if (i == 2) {
                            val2 = rs0.getString("search");
                            val22 = rs0.getString("value_occurrence");
                        } else if (i == 3) {
                            val3 = rs0.getString("search");
                            val33 = rs0.getString("value_occurrence");
                        } else if (i == 4) {
                            val4 = rs0.getString("search");
                            val44 = rs0.getString("value_occurrence");
                        } else if (i == 5) {
                            val5 = rs0.getString("search");
                            val55 = rs0.getString("value_occurrence");
                        }
                    }

                   //Integer sii = rs0.getInt("value_occurrence");
                    System.out.println("count------------------> " + val1);
                    System.out.println("count------------------> " + val2);
                    System.out.println("count------------------> " + val3);
                    System.out.println("count------------------> " + val4);
                    System.out.println("count------------------> " + val5);
                    System.out.println("count------------------> " + val11);
                    System.out.println("count------------------> " + val22);
                    System.out.println("count------------------> " + val33);
                    System.out.println("count------------------> " + val44);
                    System.out.println("count------------------> " + val55);

                }

        catch(Exception ex) {
                                    ex.printStackTrace();
                                }
                
        %>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <section id="main" class="wrapper">
                <div class="inner">
                    <h1 class="major">Graph Analysis</h1>
                    <div id="chartContainer" style="height: 400px; width: 100%;"></div>
                    <p></p>
                </div>
            </section>

        </div>
        <script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "dark2", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "Top Search Analysis"
	},
	axisY: {
		title: "Searched Times"
	},
	data: [{        
		type: "column",  
		showInLegend: true, 
		legendMarkerColor: "Blue",
		legendText: "Searched Keyword",
		dataPoints: [      
			{ y: <%=val11%>, label: "<%=val1%>" },
			{ y: <%=val22%>, label: "<%=val2%>" },
			{ y: <%=val33%>, label: "<%=val3%>" },
			{ y: <%=val44%>, label: "<%=val4%>" },
			{ y: <%=val55%>, label: "<%=val5%>" }
		]
	}]
});
chart.render();

}
</script>

        <!-- Footer -->
        <footer id="footer" class="wrapper alt">
            <div class="inner">
                <ul class="menu">

                </ul>
            </div>
        </footer>

        <!-- Scripts -->
         <script src="home/assets/js/canvas.js"></script>
        <script src="home/assets/js/jquery.min.js"></script>
        <script src="home/assets/js/jquery.scrollex.min.js"></script>
        <script src="home/assets/js/jquery.scrolly.min.js"></script>
        <script src="home/assets/js/skel.min.js"></script>
        <script src="home/assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="home/assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="home/assets/js/main.js"></script>

    </body>
</html>
