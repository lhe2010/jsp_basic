<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL기초</title>
</head>
<body>

	<h2>적용 범위</h2>
	
	<%
		String name1 = "팀 버너스 리1"; 	// 자바의 변수
		request.setAttribute("name2", "팀 버너스 리2");	// page영역값 셋업 (key, value)
	%>
	
	<%=name1 %><br> <!-- 자바의 변수를 html에서 표현하는 식 -->
	${name2 }		<!-- EL표기식 -->
	
	<hr>
	<h2>산술 연산자</h2>
	
	<%
		int num1 = 12;
		int num2 = 3;
		
		request.setAttribute("num3", 12);
		request.setAttribute("num4", 3);
	%>
	
	<h4><%=num1+num2 %> , ${num3+num4 }</h4>
	<h4><%=num1-num2 %> , ${num3-num4 }</h4>
	<h4><%=num1*num2 %> , ${num3*num4 }</h4>
	<h4><%=num1/num2 %> , ${num3/num4 }, ${num3 div num4 }</h4>
	<h4><%=num1%num2 %> , ${num3%num4 }, ${num3 mod num4 }</h4>
	
	<hr>
	<h2>관계 연산자</h2>
	<h4><%=num1 > num2 %>, ${num3 >num4 }, ${num3 gt num4 }</h4> 	<!-- greater than -->
	<h4><%=num1 >= num2 %>, ${num3 >= num4 }, ${num3 ge num4 }</h4>	<!-- greater than or equal to -->
	<h4><%=num1 < num2 %>, ${num3 < num4 }, ${num3 lt num4 }</h4>	<!-- less than -->
	<h4><%=num1 <= num2 %>, ${num3 <= num4 }, ${num3 le num4 }</h4>	<!-- less than or equal to -->
	<h4><%=num1 == num2 %>, ${num3 == num4 }, ${num3 eq num4 }</h4>	<!-- equal -->
	<h4><%=num1 != num2 %>, ${num3 != num4 }, ${num3 ne num4 }</h4>	<!-- not equal -->
	
	<hr>
	<h2>논리 연산자</h2>
	<h4><%=1==1 && 1==1 %>, ${1==1 && 1==1 }, ${1==1 and 1==1 }</h4>
	<h4><%=1==1 || 1==1 %>, ${1==1 || 1==1 }, ${1==1 or 1==1 }</h4>
	<h4><%=!(1==1) %>, ${!(1==1)}, ${not(1==1)}</h4>
</body>
</html>