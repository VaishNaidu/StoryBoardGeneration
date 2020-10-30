<%-- 
    Document   : user_reg
    Created on : Feb 21, 2018, 6:25:18 PM
    Author     : java3
--%>
<%@page import="java.sql.Statement"%>
<%@page import="Storyboard.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");

    System.out.println("name : " + name + "\n email : " + email + "Pass : " + pass + "\n phone : " + phone + " \n address : " + address);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    try {
        int in = st.executeUpdate("insert into user values(@id,'" + name + "', '" + email + "', '" + pass + "', '" + dob + "', '" + gender + "', '" + address + "' ,'" + phone + "')");
        if (in != 0) {
            response.sendRedirect("home.jsp?#one");
        } else {
            response.sendRedirect("home.jsp?#register");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>