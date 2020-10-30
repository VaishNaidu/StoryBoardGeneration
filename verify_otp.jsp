<%-- 
    Document   : verify_otp
    Created on : Feb 22, 2018, 1:57:05 PM
    Author     : java3
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Storyboard.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%
    String otp = request.getParameter("otp");
    String mail = (String)session.getAttribute("repmail");
    System.out.println("Check otp : " + otp);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM reporters where otp='" + otp + "' AND email='" + mail + "'");
        if (rs.next()) {

            response.sendRedirect("reporter_home.jsp?login Sucessfull");
        } else {
            response.sendRedirect("otp.jsp?Wrong_OTP_entered");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>