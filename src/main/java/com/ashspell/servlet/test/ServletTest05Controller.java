package com.ashspell.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test05")
public class ServletTest05Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
				
		String number = request.getParameter("numberString");
		
		int numberString = Integer.parseInt(number);

		
		out.println("<html><head><title>구구단</title></head>");
		out.println("<body>");
		out.println("<ul>");
		int sum = 0;
		for(int i = 1; i < 10; i++) {
			sum = numberString*i;
		out.println("<li>" + number + "x" + i + "=" + sum + "</li>");

		}
		out.println("</body></html>");
		
	}
}
