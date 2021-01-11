package _09_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;	// Servlet생성시 기본값으로 생성, 크게 의미X
       
	// get 방식으로 요청이 들어왔을때 reqPro로 포워딩
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	// post 방식으로 요청이 들어왔을때 reqPro로 포워딩
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
//		doGet(request, response);
	}
	
	// get, post 형식으로 요청되어도 결국 아래의 메서드가 실행된다.
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("접근 확인");
		
		// 페이지 이동 방식
		RequestDispatcher dis = request.getRequestDispatcher("step09_servlet/01_join.jsp"); //jsp파일의경로
		dis.forward(request, response);
		
		
	}

}
