<%@page import="java.util.Random"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = sdf.format(now); 
		
		out.println(strDate);	// 출력방법 1
	%>
	
	<hr>
	<%=strDate %>				<!-- 출력방법 2 -->
	
	<hr>
	<%
		Random ran = new Random();
	
		String[] languages = {"JSP", "JAVA", "HTML5", "CSS3", "JAVASCRIPT"};
		
		int r = ran.nextInt(5);
		
	%>
	
	<%=languages[r] %>가 재미있다. 

</body>
</html>