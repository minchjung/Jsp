<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3_3_Out</title>
</head>
<!--  
		Date:2021-03-24
		Name:Minchan
		Contents: JSP printout 
				  Html print out for response
-->
<body>
	<h3>3.JSP_OUT</h3>
	<%
		/* java */
		System.out.println("Hello");
		/* browser */
		out.println("<ul>");
		out.println("<li>서울</li>");
		out.println("<li>대전</li>");
		out.println("<li>대구</li>");
		out.println("<li>부산</li>");
		out.println("</ul>");
	%>
</body>

</html>