<%-- 
    Document   : reporter_login
    Created on : Feb 22, 2018, 1:34:52 PM
    Author     : java3
--%>

<%@page import="Storyboard.Mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Storyboard.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%
    String empid = request.getParameter("empid");
    String pass = request.getParameter("pass");
    System.out.println("Check User name And Password : " + empid + pass);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
     Statement sto = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM reporters where repid='" + empid + "' AND pass='" + pass + "' AND status='ACTIVE'");
        if (rs.next()) {
            String mail=rs.getString("email");
            session.setAttribute("repname", rs.getString("name"));
            session.setAttribute("repmail", rs.getString("email"));
            session.setAttribute("repid", rs.getString("repid"));
            session.setAttribute("id", rs.getString("id"));
            
            Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 5;
        String letters = "0123456789";
        String otp = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            otp += letters.substring(index, index + 1);
        }
        String filekey = "" + otp;
         int i = sto.executeUpdate("update reporters set otp="+otp+" where email='" +mail+"' " );
            String msggg = "Your 5 digit OTP : " +otp ;
            Mail ma = new Mail();
            ma.secretMail(msggg, "Downloadkey", mail);
            String msg = "File Download Key:" + msggg;
            response.sendRedirect("otp.jsp?Enter OTP");
        } else {
            response.sendRedirect("home.jsp?Authentication_Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
