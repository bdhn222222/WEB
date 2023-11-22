package com.java.be;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestConnectDatabase {
    public static void main(String[] args) {
        String dbDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String dbURL = "jdbc:sqlserver://DESKTOP-48SUU26:1433;";
        String dbName = "WEB";
        String dbUsername = "sa";
        String dbPassword = "123456";

        try {
            Class.forName(dbDriver);
            dbURL += "databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true;";
            Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
            System.out.println("Connection successful!");
            connection.close();
        } catch (ClassNotFoundException e) {
            System.out.println("Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Connection failed!");
            e.printStackTrace();
        }
    }
}