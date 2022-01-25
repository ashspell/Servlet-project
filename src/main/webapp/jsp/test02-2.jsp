<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현제 시간 확인</title>
</head>
<body>
	<%
		Date now = new Date();
		
		
		SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 dd일");
		String formatString = formatter.format(now);
		
	%>
	
	
	<h1> <%= formatString %></h1>
	
	
</body>
</html>