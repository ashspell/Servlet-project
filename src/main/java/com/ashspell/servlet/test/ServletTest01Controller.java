package com.ashspell.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTest01Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date today = new Date();
		
		
		SimpleDateFormat formatter = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일");
		String todayString = formatter.format(today);
		
		out.println(todayString);
		
		
	}

}
