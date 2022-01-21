package com.ashspell.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test06")
public class ServletTest06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String number1String = request.getParameter("string");
		String number2String = request.getParameter("strings");
		
		int string = Integer.parseInt(number1String);
		int strings = Integer.parseInt(number2String);
		
		//int string = Integer.parseInt(request.getParameter("number1String"));
		
		int addtion = string + strings;
		int subtraction = string - strings;
		int multiplication = string * strings;
		int division = string / strings;
		

		out.println("{\"addtion\":" + addtion + ", \"subtraction\": " + subtraction + ", \"multiplication\": " + multiplication + ",\"division\":" + division + "}");
	}

}
