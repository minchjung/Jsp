<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6_2_CookieReceive.jsp</title>
<!--  
	Date: 2021-03-24 
	Name: Minchan 
	Contents: CookieReceive 
-->

<style>
	*{margin: 0 auto;}
	span{margin: 0 20px; text-align:center;}
	html{width: 100%; height: 100vh;}

</style>
</head>
<body>
	<h3>6_2. JSP Client Cookie Check</h3>
	
	<%
		Cookie[] cookies = request.getCookies();
		/* return array */
		
		for(Cookie c : cookies){
	%>
		<div>
			<span>
				쿠키명: <%=c.getName() %>, 
			</span>
			<span>
				쿠키값: <%=c.getValue() %>
			</span>
		</div>
	<%
		}
	%>
</body>

</html>