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
import java.text.DateFormat;
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

@WebServlet("/add_news")
@MultipartConfig(maxFileSize = 16177215)
public class add_news extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/storyboard";
    private String dbUser = "root";
    private String dbPass = "root";
    private SimpleDateFormat format;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        HttpSession user = request.getSession(true);
        String repname = user.getAttribute("repname").toString();
        String repid = user.getAttribute("repid").toString();
        String head_line = request.getParameter("head_line");
        String tag1 = request.getParameter("tag1");
        String tag2 = request.getParameter("tag2");
        String tag3 = request.getParameter("tag3");
        String tags = tag1 + "," + tag2 + "," + tag3;
        String date_held = request.getParameter("date_held");
        String time_held = request.getParameter("time_held");
        String place = request.getParameter("place");
        String news_details = request.getParameter("news_details");
        String type = request.getParameter("type");
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        String time = dateFormat.format(date);
        
        Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 5;
        String letters = "123456789";
        String nid = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            nid += letters.substring(index, index + 1);
        }
        String newsid = "NEWS"+date_held + nid;

        System.out.println("head_line" + head_line + "tag1" + tag1 + "date_held" + date_held + "time_held" + time_held + "news_details" + news_details + "type" + type + "place" + place);
        InputStream inputStream = null;
        InputStream inputStream1 = null;
        InputStream inputStream2 = null;
        Part filePart = request.getPart("pic1");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
        Part filePart1 = request.getPart("pic2");
        if (filePart != null) {
            System.out.println(filePart1.getName());
            System.out.println(filePart1.getSize());
            System.out.println(filePart1.getContentType());
            inputStream1 = filePart1.getInputStream();
        }
        Part filePart2 = request.getPart("pic3");
        if (filePart != null) {
            System.out.println(filePart2.getName());
            System.out.println(filePart2.getSize());
            System.out.println(filePart2.getContentType());
            inputStream2 = filePart2.getInputStream();
        }
        Connection conn = null;
        String message = null;
        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "insert into news(head_line,tags,date_held,time_held,place,news_details,type,pic1,pic2,pic3,time_posted,repid,repname,newsid) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, head_line);
            statement.setString(2, tags);
            statement.setString(3, date_held);
            statement.setString(4, time_held);
            statement.setString(5, place);
            // statement.setString(6, language);
            statement.setString(6, news_details);
            statement.setString(7, type);


            if (inputStream != null) {
                statement.setBlob(8, inputStream);
            }
            if (inputStream != null) {
                statement.setBlob(9, inputStream1);
            }
            if (inputStream != null) {
                statement.setBlob(10, inputStream2);
            }
            statement.setString(11, time);
            statement.setString(12, repid);
            statement.setString(13, repname);
            statement.setString(14, newsid);

            int row = statement.executeUpdate();
            if (row > 0) {

                response.sendRedirect("add_news.jsp?Success");
            } else {
                response.sendRedirect("add_news.jsp?Failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
