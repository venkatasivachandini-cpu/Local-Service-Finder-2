
package com.localservice.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL =
        "jdbc:mysql://localhost:3306/local_service_finder";

    private static final String USER = "root";

    private static final String PASSWORD = "root";

    public static Connection getConnection()
            throws SQLException {
    	
    	try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        return DriverManager.getConnection(
            URL, USER, PASSWORD
        );
    }
   
    public static void main(String[] args) {

        try (Connection con = getConnection()) {

            System.out.println(
                "MySQL Database Connected Successfully!"
            );

        } catch (SQLException e) {

            System.out.println(
                "Database Connection Failed!"
            );

            e.printStackTrace();
        }
    }
}
