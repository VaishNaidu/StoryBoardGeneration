/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Storyboard;

import java.awt.Image;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import javax.imageio.ImageIO;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author java3
 */
@WebServlet("/users")
@MultipartConfig(maxFileSize = 16177215)
public class add_reporter extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/storyboard";
    private String dbUser = "root";
    private String dbPass = "root";
    private SimpleDateFormat format;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(true);

        String name = request.getParameter("name");
        String mail = request.getParameter("email");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String edu = request.getParameter("edu");
        String exp = request.getParameter("exp");
        String des = request.getParameter("des");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String empid = request.getParameter("empid");

        Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 5;
        String letters = "0123456789";
        String pas = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            pas += letters.substring(index, index + 1);
        }
        String pass = "PASS" + pas;

        String otp = "waiting";

        System.out.println("name" + name + "password" + pass + address + "mail" + mail + "dob" + dob + "cell" + phone);
        InputStream inputStream = null;
        Part filePart = request.getPart("file");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
        Connection conn = null;
        String message = null;
        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "insert into reporters(name,email,dob,gender,edu,exp,des,phone,address,photo,otp,pass,repid) values (?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, mail);
            statement.setString(3, dob);
            statement.setString(4, gender);
            statement.setString(5, edu);
            statement.setString(6, exp);
            statement.setString(7, des);
            statement.setString(8, phone);
            statement.setString(9, address);
            
            // Photo upload.......................................................................
           
            if (inputStream != null) {
                statement.setBlob(10, inputStream);
            }
            statement.setString(11, otp);
            statement.setString(12, pass);
            statement.setString(13, empid);
            int row = statement.executeUpdate();
            if (row > 0) {
                 String msggg="Dear Staff Member Your Account has been activated. User And Password \nUsername "+empid+" \nPassword "+pass;                   
                 Mail ma= new Mail();
            ma.secretMail(msggg,"Downloadkey",mail);          
            String msg= "File Download Key:"+msggg;                         
                System.out.println("success");
                System.out.println("success");

                response.sendRedirect("add_reporter.jsp?Registration Success");
            } else {
                response.sendRedirect("add_reporter.jsp?Registration Failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}