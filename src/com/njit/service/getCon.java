package com.njit.service;

import java.sql.*;

public class getCon {
	public Connection conn;
	public PreparedStatement stmt;
	public Statement stmt2;
	public ResultSet rs;

	public getCon() {
		// TODO Auto-generated constructor stub

	}

	public Connection connection()

	{
		String driver = "com.mysql.cj.jdbc.Driver";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?serverTimezone=GMT%2B8", "root", "zyl83263130");

		} catch (Exception e) {
			e.printStackTrace();

		}
		return conn;
	}
}
