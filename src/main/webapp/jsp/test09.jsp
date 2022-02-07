<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘부터 1일</title>
</head>
<body>
<%
	Calendar todayCalendar = Calendar.getInstance();
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	String dateString = formatter.format(todayCalendar.getTime());
	
	
	String day1 = todayCalendar.add(Calendar.DATE, 100);


	%>


<h2>오늘부터 1일</h2> <br>
<h1>100일 :</h1>
</body>
</html>