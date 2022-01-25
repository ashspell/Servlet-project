<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>BMI 수치</title>
</head>
<body>

				<%
				
				
			
				String heightString = request.getParameter("height") ;
				String weightString = request.getParameter("weight") ;
				
				int height = Integer.parseInt("height");
				int weight = Integer.parseInt("weight");
				
				// BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
				
				double BMI = weight / ((height / 100.0) * (height / 100.0));
			
				
				
				String result = null;
				
				if(BMI <= 20) {
					result = "저체중";					
				} else if 
					( BMI <= 25) {
						 result = "정상";
					} else if 
						(BMI <= 30) {
							result = "과체중";
						} else if 
						(BMI >= 31) {
							result = "비만";					
						}
				%>
				
				

	<div class="container">
			<h2>BMI 측정 결과 </h2>
			<div class = "display -4" >당신은 <span class ="text-info"> <%=result %> </span> 입니다</div>
			<br>
			<small>BMI 수치 : <%= BMI %></small>
			
	</div>
	

</body>
</html>