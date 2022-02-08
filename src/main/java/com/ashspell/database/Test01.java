package com.ashspell.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ashspell.common.MysqlService;

@WebServlet("/db/test01")
public class Test01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String selectQuery = "SELECT * FROM `real_estate`";
		ResultSet resultset = mysqlService.select(selectQuery);
		
		
		
		
		
		try {
			while(resultset.next()) {
				String address = resultset.getString("address");
				int area = resultset.getInt("area");
				String type = resultset.getString("type");
				
				out.println("매물 주소 : " + address);
				out.println("면적 : " + area);
				out.println("타입 : " + type);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}