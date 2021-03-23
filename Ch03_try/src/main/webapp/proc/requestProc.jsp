<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>number selector</title>
<%
	request.setCharacterEncoding("UTF-8");
	String[] h = request.getParameterValues("hobby");
	int l = h.length;
	/* 배열 길이 */
%>

</head>
<body>
	<%
		for(int i = 0 ; i <l ; i++){
			if(h[i].equals("mountain") ){
	%>
			<!-- String 비교 method -->
				<h5>등산</h5>
	<%
			}else{
	%>			
			<h5><%=h[i] %></h5>
	<% 
			}
		}
	%>		
	
</body>
</html>