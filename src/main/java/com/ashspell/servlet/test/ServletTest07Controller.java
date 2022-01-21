package com.ashspell.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test07")
public class ServletTest07Controller extends HttpServlet {
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt (request.getParameter("price"));

		if(!address.startsWith("서울시")) {
			out.println("배달 불가지역 입니다");
			return;
		}
		
		if(card.equals("신한카드")) {
			out.println("계산불가카드입니다");
			return;
		}
		
		
		
		out.println("<html><head><title>카드사용내역</title></head>");
		out.println("<body>");
		out.println("<h1>" + address + "로 배달 준비중</h1>");
		out.println("<hr>");
		out.println("결제금액 : " + price + "원");
		out.println("</body></html>");
		


		

	}
}
