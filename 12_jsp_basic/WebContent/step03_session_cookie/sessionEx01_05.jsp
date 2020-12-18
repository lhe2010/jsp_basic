<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	[ 자주 사용되어지는 메서드 ]
	
		setAttribute(속성명, 값) 				: 세션 속성명이 name인 속성에 속성값으로 value를 할당한다. 
		getAttribute(속성명) 					: 세션 속성명이 name인 속성의 값을 Object 타입으로 리턴한다. 
												  해당 되는 속성명이 없을 경우에는 null 값을 리턴한다.
		removeAttribute(속성명)					: 세션 속성명이 name인 속성을 제거한다. (특정 속성 제거) 
		invalidate() 							: 세션정보를 제거한다. (초기화 , 주로 로그아웃시 사용)
		setMaxInactiveInterval(유지기간(초))	: 세션을 유지하기 위한 세션 유지시간을 초 단위로 설정한다. (기본값은 30분)
-->

	<h2>로그인폼 처리 페이지</h2>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		session.setAttribute("id", id); // session 등록 
		session.setAttribute("passwd", passwd);
		
	%>
	
	아이디 : <%=id %><br>
	비밀번호 : <%=passwd %><br>
	
	<a href="sessionEx01_06.jsp">다음 페이지로 이동</a>
	
</body>
</html>