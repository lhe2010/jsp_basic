<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el session연습</title>
</head>
<body>

	<%
		String id = (String)session.getAttribute("id");
	%>
	session id : <%=id %> <!-- 이전 방법 -->

	session id   : ${sessionScope.id }	      <!-- sessionScope.id 형식으로 접근 -->
	session name : ${sessionScope.name }	

</body>
</html>