<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String operate = request.getParameter("operation");
		String numberString = request.getParameter("number");
		String number2String = request.getParameter("number2");
		
		int number = Integer.parseInt(numberString);
		int number2 = Integer.parseInt(number2String);
	%>
	
	<% 
		int sum = 0;
		if(operate.equals("+")) {
			sum = number + number2;
		} else if (operate.equals("-")) {
			sum = number - number2;
		} else if (operate.equals("x")) {
			sum = number * number2;
		}
	
	%>
	
	<div class = "container">
	<h2>계산 결과</h2>
	<br>
	<h1> <%=number %> <%=operate %> <%=number2 %> = <%= sum %>  </h1>
	
	</div>
</body>
</html>