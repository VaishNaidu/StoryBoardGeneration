<%-- 
    Document   : approve_news
    Created on : Feb 26, 2018, 4:22:16 PM
    Author     : java3
--%>

<%@page import="Storyboard.Mail"%>
<%@page import="Storyboard.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%
String newsid=request.getParameter("newsid");
String repid=request.getParameter("repid");
Connection con = null;
    Statement st = null;
    Statement st1 = null;
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
    
    try {                       
            int i = sto.executeUpdate("update news set statuss='Approved' where newsid='"+newsid+"'" );
           System.out.println("test print==" +newsid);
           System.out.println("\ntest print==" +repid);
            if (i != 0) {
                ResultSet rs = st.executeQuery(" SELECT * from reporters where repid = '"+repid+"' ");
               if(rs.next()){
                    String mail = rs.getString("email");
                    String msggg="Your News" +newsid+ " has been Approved by Admin  ";                   
                 Mail ma= new Mail();
            ma.secretMail(msggg,"Downloadkey",mail);          
            String msg= "File Download Key:"+msggg;                         
                System.out.println("success");
                System.out.println("success");
                response.sendRedirect("news_grant.jsp?msg=RequestGranted");
            } else {
               
                System.out.println("failed");
                response.sendRedirect("news_grant.jsp?msg=Failed");
                 }
                       }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>