package com.java.be;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// This class can be used to initialize the database connection
public class DatabaseConnection {
    protected static Connection initializeDatabase()
            throws SQLException, ClassNotFoundException {
        
            // Initialize all the information regarding
            // Database Connection
            String dbDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
            String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=WEB;encrypt=true;trustServerCertificate=true";
           
            // Database name to access
            String dbName = "WEB";
            String dbUsername = "sa";
            String dbPassword = "123456";
            
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
            
            return con;
        
        
    }
}