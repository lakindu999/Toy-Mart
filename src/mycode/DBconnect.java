package mycode;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 94784
 */
public class DBconnect {
    
    public static Connection connect()
{
      Connection conn = null;
      
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Toymartdb","root","");
        } 
        
        catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBconnect.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
   
      return conn;
    }
}   