<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Connection"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	ArrayList<String> titles = new ArrayList<>();
	ArrayList<String> results = new ArrayList<>();
	ArrayList<String> urls = new ArrayList<>();
		
	// 10page 크롤링
	try {
		
		for (int i = 1; i < 11; i++) {
			
			String url = "https://news.naver.com/main/factcheck/main.nhn?page="+i;
			Connection conn = Jsoup.connect(url);
			Document html = conn.get();
						
			Elements temp = html.getElementsByClass("fact_lst _factcheck_body");
			Elements section = temp.get(0).getElementsByClass("section");
			
			for (Element sec : section) {
								
				Element info = sec.getElementsByClass("info_area").get(0);
				titles.add(info.getElementsByClass("txt").text());
				
				
				Element result_fact = sec.getElementsByClass("result_fact").get(0);
				results.add(result_fact.getElementsByClass("blind").text());
				
				
				Element ul  = sec.getElementsByClass("lst").get(0); 
				urls.add(ul.getElementsByTag("a").get(0).attr("href"));
									   					
			}
			
		}		
		
	} catch (IOException e){
		e.printStackTrace();
	}
%>
<table>
	<tr>
		<th>순서</th>
		<th>기사제목</th>
		<th>팩트체크 결과 </th>
		<th>관련기사</th>
	</tr>
	<%
		for(int i = 0; i < titles.size(); i++) {
	%>
	<tr>
		<td><%=i+1%></td>
		<td><%=titles.get(i) %></td>
		<td><%=results.get(i) %> </td>
		<td><%=urls.get(i) %></td>
		<td><a href="<%=urls.get(i) %>">관련기사 확인하기</a></td>
	</tr>
	<%
		}
	%>
	
</table>
</body>
</html>