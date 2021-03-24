<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6_3_Session</title>

<!--  
	Date: 2021-03-24 
	Name: Minchan 
	Contents: 6_3_Session
		1. The records from the Clients request(data) on the Server storage 
		2. Server gives the PK or unique number to each client respectively 
-->
</head>
<body>
	<h3>6_3_JSP_Session</h3>
	<%
		session.setAttribute("name", "홍길동");
		session.setAttribute("uid", "hong");
		
		
		session.setMaxInactiveInterval(180);
	%>
	
	<a href="./6_4_sessionConfirm.jsp">To see the Session data</a>
	
	
</body>
</html>