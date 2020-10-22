package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Myconn {
	

	private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3307/cdac";
	private static final String USER_NAME = "root";
	private static final String PASSWORD = "root";
	
	private Myconn con;
	
	public Myconn getconn()throws ClassNotFoundException, SQLException 
	{
		
		if(con == null || con.isClosed()) {
			Class.forName(DRIVER_CLASS);
			con = (Myconn) DriverManager.getConnection(URL, USER_NAME, PASSWORD);
		}
		return con;
		
	}

	private boolean isClosed() {
		return false;
	}
	
}
