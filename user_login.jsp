<%-- 
    Document   : user_login
    Created on : Feb 21, 2018, 6:41:17 PM
    Author     : java3
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Storyboard.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    System.out.println("Check User name And Password : " + name + pass);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM user where email='" + name + "' AND pass='" + pass + "'");
        if (rs.next()) {
            session.setAttribute("uid", rs.getString("id"));
            session.setAttribute("uname", rs.getString("name"));
            session.setAttribute("umail", rs.getString("email"));
            response.sendRedirect("user_home.jsp?success");
        } else {
            response.sendRedirect("home.jsp?authentication_Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>