<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--  인치 길이 값을 2.54(으)로 나눕니다.
	 야드 길이 값을 91.44(으)로 나눕니다.
	 피트 길이 값을 30.48(으)로 나눕니다.
	 미터 길이 값을 100(으)로 나눕니다.
	--%>
	
	<%
		String lengthString = request.getParameter("length");
		int length = Integer.parseInt(lengthString);
		
		
		
		
		
		
		
		String[] units = request.getParameterValues("unit");
		
		// 계산 결과 문자열 만들기
		
		String result = "";
		for(int i = 0; i < units.length; i++) {
			String unit = units[i];
			
			if(unit.equals("inch")) {
				double inch = length / 2.54;
				result += inch +"in <br>";
			} else if (unit.equals("yard")) {
				double yard = length / 91.44;
				result += yard + "yd <br>";
			} else if (unit.equals("feet")) {
				double feet = length / 30.48;
				result += feet + "ft <br>";
			} else if (unit.equals("meter")) {
				double meter = length / 100;
				result += meter +"m <br>";
			}
		}
	%>
	
	
	
	<h1>변환 결과</h1>
	<%= length %> <hr>
	<br>
	<%= result %>
</body>
</html>