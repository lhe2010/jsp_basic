<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초</title>
<script type="text/javascript">
	function sendData() {
		document.f.submit(); // submit() 메서드를 통해서 전송한다. 
	}
</script>
</head>
<body>
	<!-- html 주석인데요? -->
	<%-- jsp 주석인데요? 주석이 개발자화면에 나오지 않습니다. --%>
	
	<form method="post" action="formEx01Pro.jsp" name="f"> <!-- action옆에 전송할 페이지를 작성한다. jsp는 name으로 가져감 -->
		<fieldset>
		<!-- form 태그 안에 있는 name값이 서버로 전송된다. -->
			<p><lable for="language">좋아하는 언어 : </lable><input type="text" id= "language" name="language"></p>
			<p>좋아하는 이유 <br><textarea name="reason"></textarea></p>
			<p><lable for="age">나이 : </lable><input type="text" id= "age" name="age"></p>
		</fieldset>
		
		<!-- 방법 1) submit 타입을 사용하여 전송한다. (가장 일반적으로 사용하는 방법) -->
		<input type="submit" value="입력완료1">
		
		<!-- 방법 2) 자바스크립트를 이용하여 전송한다. (form에 name이 설정되어 있어야한다.) -->
		<input type="button" value="입력완료2" onclick="sendData()">
	</form>
</body>
</html>