<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String uid =(String)session.getAttribute("uid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginSuccess</title>
</head>
<body>
	<h4>Hello</h4>
	<h5><%=uid %>님 반갑</h5>
	<a href="./LoginPract.jsp/?result=logout">logout</a>
</body>
</html>