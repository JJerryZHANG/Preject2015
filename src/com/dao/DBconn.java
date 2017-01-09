package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBconn {
	static private String DBdriver = "com.mysql.jdbc.Driver";
	static private String DBurl = "jdbc:mysql://127.0.0.1:3306/project2015";
	static private String DBuser = "root";
	static private String DBpwd = "root";
	
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//load the DB driver
	static {
		try {
			Class.forName(DBdriver);
		} catch (ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	//database connection
	public void getConnection() {
		try {
			if(conn == null || conn.isClosed()){
				conn = DriverManager.getConnection(DBurl, DBuser, DBpwd);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Connection failure!");
		}
	}
	
	//database Query
	public ResultSet SqlQuery(String sql){
		getConnection();
		try {
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return rs;
	}
	
	//database Execute
	public void SqlExecute(String sql){
		getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.execute(sql);
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
	
	//close the connection to the database
	public void closeAll() {
		try {
			if (rs != null)
				rs.close();
			if (pst != null)
				pst.close();
			if (conn != null)
				conn.close();		
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
	
}
