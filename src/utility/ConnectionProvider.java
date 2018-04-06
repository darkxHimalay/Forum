package utility;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by HIMGIRI on 29-03-2018.
 */
public class ConnectionProvider
{
    public static Connection getConnection(){
        Connection con=null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/loginmodule","root","");
            System.out.println("Connection established");
        }
        catch (Exception e){e.printStackTrace();}
        return con;
    }
}
