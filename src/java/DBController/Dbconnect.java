/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBController;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author nadz
 */
public class Dbconnect {
    public static PreparedStatement getps(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps = null;
        Class.forName("com.mysql.jdbc.Driver");
        
        String uri = "jdbc:mysql://localhost:3306/fomwis";
        String user = "root";
        String pass = "";
        
        Connection con = DriverManager.getConnection(uri,user, pass);
        ps = con.prepareStatement(sql);
     
        return ps;
    }   
}
