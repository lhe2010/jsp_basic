<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 전송 폼2</title>
</head>

<body>
	<form action="fileEx02_upload.jsp" method="post" enctype="multipart/form-data">
		<fieldset>
			<p><label>작성자 : <input type="text" name="userName"></label></p>		
			<p><label>제목 : <input type="text" name="title"></label></p>		
			<p><label>파일명1 : <input type="file" name="uploadFile1"></label></p>
			<p><label>파일명2 : <input type="file" name="uploadFile2"></label></p>
			<input type="submit" value="upload">
		</fieldset>
	</form>

</body>
</html>