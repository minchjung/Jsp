<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4_2_forwardTag</title>
<!-- 
	Date : 03-24-2021 
	Name : Minchan
	Contents: JSP Forward action tag
	
	function is the same as pageContext.forward but it works as Action tag 	
 -->


</head>
<body>
	<h3>2.Forward action tag</h3>
	<jsp:forward page="4_1_IncludeTag.jsp"></jsp:forward>
	
		<!--forward by pageContext  -->
	<% 
		pageContext.forward("4_1_IncludeTag.jsp");
	%>
</body>
</html>