<%@page import="_06_file.FileDAO"%>
<%@page import="_06_file.FileDTO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Vector<FileDTO> fileList = FileDAO.getInstance().getFileList();	
	%>
	<table border="1">
		<tr align="center">
			<th>작성자</th>
			<th>제목</th>
			<th>파일명</th>
			<th>첨부파일</th>
			<th>파일타입</th>
			<th>업로드날짜</th>
		</tr>
	<%
		for(int i = 0; i<fileList.size();i++) {
	%>
		<tr align="center">
			<td><%=fileList.get(i).getUserName() %></td>
			<td><%=fileList.get(i).getTitle() %></td>
			<td><%=fileList.get(i).getOriginFileName() %></td>
<%-- 			<td><%=fileList.get(i).getServerFileName() %></td> --%>
			<td><a href="fileEx02_download.jsp?fileName=<%=fileList.get(i).getOriginFileName()%>">다운</a></td>
			<td><%=fileList.get(i).getFileType() %></td>
			<td><%=fileList.get(i).getFileUploadDate() %></td>
		</tr>	
	<%
		}
	%>
	</table>
	<button onclick="location.href='fileEx02_form.jsp'">업로드</button>

</body>
</html>