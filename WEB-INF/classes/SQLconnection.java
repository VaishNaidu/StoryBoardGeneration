/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Storyboard;

import java.sql.Connection;
import java.sql.DriverManager;

public class SQLconnection {

    static Connection con;

    /**
     *
     * @return
     */
    public static Connection getconnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/storyboard", "root", "root");
        } catch (Exception e) {
        }
        return con;
    }
}