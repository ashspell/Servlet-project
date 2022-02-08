package com.ashspell.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	private final String url = "jdbc:mysql://localhost:3306.testdb";
	private final String id = "root";
	private final String password = "root";
	
	private Connection connection;
	private Statement statement;
	
	public static MysqlService getInstance() {
		
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
		
	}
	
	private MysqlService() {
		
	}
	
	// 접속기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Connection connection =  DriverManager.getConnection(url, id, password);
			Statement statement = connection.createStatement();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	// 접속 끊기
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	// select 쿼리 수행기능
	public ResultSet select(String query) {
		try {
			this.statement.executeQuery(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		return null;
	}
	
	
	// insert, update, delete 쿼리 수행기능
	public int update(String query) {
		try {
			this.statement.executeUpdate(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		return -1;
	}
}
