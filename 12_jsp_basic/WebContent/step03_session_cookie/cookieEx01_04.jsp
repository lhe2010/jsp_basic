<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트의 쿠키 삭제하기</title>
</head>
<body>
	<h2>클라이언트의 쿠키 삭제하기</h2>
	<%
		// 1. 클라이언트의 쿠키정보를 가져온다. 
		Cookie[] cookies = request.getCookies();
		// 2. 쿠키에 대한 설정값을 setMaxAge(0) 으로 변경한 후 클라이언트에게 반환
		if(cookies != null ) { // 쿠키 정보가 있으면
			for(int i = 0; i < cookies.length; i++) {
				cookies[i].setMaxAge(0);	// 유효기간을 0으로 설정 > 삭제
				cookies[i].setPath("/");
				response.addCookie(cookies[i]); // 변경된 설정을 다시 클라이언트에게 전송
			}
		}
	%>

	<h2><a href="cookieEx01_03.jsp">쿠키정보확인 하기</a></h2>

</body>
</html>