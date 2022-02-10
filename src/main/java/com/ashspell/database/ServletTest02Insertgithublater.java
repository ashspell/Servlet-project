package com.ashspell.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ashspell.common.MysqlService;

@WebServlet("/db/test02_insert")
public class ServletTest02Insertgithublater extends HttpServlet {
	
	@Override
	public void doPost (HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `favorite`\r\n"
				+ "(`name`, `url`,`createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('" + name + "', '" + url + "', now(), now())";
		
		mysqlService.update(query);
		
		response.sendRedirect(query);
	}

}
