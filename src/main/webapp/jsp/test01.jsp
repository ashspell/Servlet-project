<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List"%>
<%@ page import = "java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 스크립트 요소</title>
</head>
<body>

	<%
	int[] scores = {80, 90, 100, 95, 80};
	
	int sum = 0;
	for(int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	
	double average = sum / (double)scores.length;
	
	%>
	
	<h1>점수 평균은 : <%= average %> </h1> 


	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int scoresum = 0;
	for(String score:scoreList) {
		if(score.equals("O")) {
			scoresum += 10;
		}
	}
	%>
	
	<h1>체점 결과는 <%= scoresum %>점 입니다</h1>
	
	<%! 
	  // 1 ~ N 까지의 합
	  public int allsum(int number) {
		
		int sum = 0;
		for(int i = 1; i <= number; i++) {
			sum += i;
		}
		return sum;
	}
	%>
	
	<h1>1에서 50까지의 합은 <%= allsum(50) %></h1>
	
	<%
	String birthDay = "20010820";
	
	String birthString = birthDay.substring(0,4);
	
	int year = Integer.parseInt(birthString);
	int age = 2022 - year + 1;
	
	%>
	
	<h1>20010810 의 나이는 <%= age %> 입니다</h1>
</body>
</html>