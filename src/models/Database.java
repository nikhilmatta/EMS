package models;

import java.sql.Connection;
import java.sql.DriverManager;
public class Database {
    public static Connection getConnection() {
        try  {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/EMS",
                            "root","Nikhil-0925");
            return con;
        }
        catch(Exception ex) {
            System.out.println("models.Database.getConnection() Error -->" + ex.getMessage());
            return null;
        }
    }

    public static void close(Connection con) {
        try  {
            con.close();
        }
        catch(Exception ex) {
        }
    }
}