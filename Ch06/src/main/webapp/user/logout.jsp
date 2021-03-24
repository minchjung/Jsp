<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	// clear the clients info 
	session.invalidate();
	
	response.sendRedirect("./login.jsp?result=logout");

%>