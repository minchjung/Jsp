<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
// 전송 데이터 인코딩 
	request.setCharacterEncoding("UTF-8");

// 전송 데이터 (parameter) 수신 
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");	
// data name  = parameter 
	out.println("<h4>login Print</h4>");
	out.println("<p>");
	out.println("<br> "+uid+"</br>");
	out.println("<br> "+pass+"</br>");
	out.println("</p>");
	
%>