<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조건문</title>
</head>
<body>
<!-- html안의 자바 -->
	<h1>조건문</h1>
	<%
		String name = "팀 버너스 이리";
	%>
	
	<%
		if (name.equals("팀 버너스 리")) {
	%>
			팀 버너스 리 입니다 . 
<!-- 			조건은 자바로 걸고 출력은 html로 하는 것 -->
	<%
	
		} else {
	%>
			팀 버너스리가 아닙니다. 
	<% 
		}	
	%>	
</body>
</html>