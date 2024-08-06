/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

/**
 *
 * @author yuvra
 */
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Description: Provides a connection to the database using JDBC.
 */


public class DBConnection {
	
    private static Connection connection = null;
    private static String servDir = null;
    /**
     * Retrieves the database connection. If the connection is not established, it creates a new one.
     *
     * @param prop the properties containing database connection information
     * @return the database connection
     */
    private static Properties getProperty() {
        Properties dbProp = null;
        // Load database properties
        try (InputStream in = new FileInputStream(servDir + "/WEB-INF/database.properties.cfg")){
            dbProp = new Properties();
            dbProp.load(in);
            in.close();
        } catch (IOException e){
            System.out.println(e.getMessage());
        }
        return dbProp;
    }
    
    public static void setServerPath(String servDir) {
        DBConnection.servDir = servDir;
    }
    
    public static Connection getConnection() {
	if (connection == null) {
            try {
            Class.forName("com.mysql.jdbc.Driver"); 
            } catch (ClassNotFoundException  e)  {
                
            }
            Properties prop = getProperty();
            
            if (prop != null) {
                try {
                    // Construct the JDBC connection URL
                    String serverUrl = String.format("jdbc:%s://%s:%s/%s",
                                                     prop.getProperty("db"),
                                                     prop.getProperty("host"),
                                                     prop.getProperty("port"),
                                                     prop.getProperty("name"));
                    // Establish the database connection
                    connection = DriverManager.getConnection(serverUrl,
                                                prop.getProperty("user"),
                                                prop.getProperty("pass"));
                    //connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fwrp", "root", "password");
                } catch (SQLException e) {
                    System.out.println("Cannot Connect: " + e.getMessage());
                }
                System.out.println("Connect Successfull");
            }
	}
	return connection;
    }
}
