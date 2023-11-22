package com.java.be;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class cntDB {
	
	public static void main(String[] args) throws SQLException {
	Connection c = null;
	Statement stm = null;
	ResultSet rs = null;
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://DESKTOP-48SUU26:1433;encrypt=true;trustServerCertificate=true;databaseName=WEB;integratedSecurity=true;";
			String user = "sa";
			String password = "123456";
			
			c = DriverManager.getConnection(url, user, password);
			stm = c.createStatement();
			rs = stm.executeQuery("Select * from Custome");
			
			while(rs.next()) {
				String FirstName = rs.getString("FirstName");
				String LastName = rs.getString("LastName");
				String DOB = rs.getString("DOB");
				String POB = rs.getString("POB");
			}
			
			System.out.println("Connected Sucessfully!");
			System.out.println();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Connected Failed!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("No connection");
		}
	}
}
