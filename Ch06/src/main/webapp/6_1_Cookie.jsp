<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6_1_JSP_Cookie</title>
</head>
<body>
	<!--  
	Date: 2021-03-24 
	Name: Minchan 
	Contents: 
		1. Cookie file : disk file that Server gives to the Clients as their response 
-->

<h3>1.JSP Cookie</h3>
<%
	/* 쿠키 생성  */
	Cookie c1 = new Cookie("name","홍길동"); 
	Cookie c2 = new Cookie("uid","hong"); 
	
	// 초 단위  보통 1주일 단위로 만료기간 지정 
	// set the expire date of the cookie files, a week 
	c1.setMaxAge(180); 
	c2.setMaxAge(180); 
	
	//응답객체에 실어서 클라이언트로 전송 
	// transfer to the clients with the respons object 
	response.addCookie(c1);
	response.addCookie(c2);
%>
<a href="./6_2_CookieReceive.jsp">To see the cookies</a>
</body>
</html>