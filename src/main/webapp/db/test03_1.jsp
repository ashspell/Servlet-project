<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.ashspell.common.MysqlService" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<style>
	#wrap {width:1000px;}
	header {height : 70px;}
	nav {height : 70px;}
	section {height : 800px;
	
	
	}
	footer {height : 200px;}
	#imagebox { 
	
	width: 300px;
    height: 300px;
    border:1px solid orange;
    display:block;
    
     }
    .image {
   	width : 300px;
   	height : 200px;
   	 }
   	 #textbox {
   	 word-break:break-all;
   	 }
   	 #boxline {
   	 justify-content: space-between;
	 align-content : center;
   	 }
   	 #boxline2 {
   	 justify-content: space-between;
	 align-content : center;
   	 }
</style>



<body>
	<%
	MysqlService mysqlService = MysqlService.getInstance();
	
	mysqlService.connect();
	
	String query = "SELECT `title`,`price`,`picture` FROM `used_goods`";
	ResultSet resultSet = mysqlService.select(query);
	
	%>
	<div id = "wrap" class= "container">
		<header class = "bg-warning text-center"> 
		   <h1>HONG당무 마켓</h1>
		</header>
	<nav class = "bg-warning">
		<ul class = "text-center nav nav-fill">
				<li class = "nav-item"><a href="#" class = "nav-link">리스트</a></li>
				<li class = "nav-item"><a href="#" class = "nav-link">물건 올리기</a></li>
				<li class = "nav-item"><a href="#" class = "nav-link">마이 페이지</a></li>
			</ul>
	</nav> <br>
	<section>
	<div id = "boxline" class = "d-flex flex-wrap">
	<div id = "imagebox">
		<img class ="image " src = "https://cdn.pixabay.com/photo/2014/09/24/14/29/macbook-459196_960_720.jpg">
		<div id = "textbox">
		<label>[팝니다]맥북프로 팔아요</label> <br>
		<label>1800000원</label> <br>
		<label class ="text-warning">최준</label>
		</div>
	</div>	
	
	
	
	

	</section>


	<footer class ="text-center">Copyright 2019. HONG All Rights Reserved.</footer>
	
	</div>
</body>
</html>