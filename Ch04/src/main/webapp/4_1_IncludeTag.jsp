<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4_1_IncludeTag/title>
<!--  
			Date:2021-03-24
			Name:Minchan
			Contents:JSP Include Action Tag
			
			
	
	include 지시자 
		공통의 전역파일 삽입 
		UI모듈 공통전익 파일 변수 삽입시 사용 
		정적타임에 삽입 
		include 태그 <- 동적타임 삽입 
	
	include action-tag
		-same as include indicator, which to insert the global file 
		-Use for the Dynamic web module  
		- functions when the page gets to response by the request 
-->
</head>
<body>
	<h3>1.JSP Include Action Tag</h3>
	
	<h4> Example of Include indicator</h4>
	<%@ include file="./inc/_header.jsp" %>
	<%@ include file="./inc/_footer.jsp" %>
	
	<h4>  Example of Include Action-Tag</h4>
	<jsp:include page="./inc/_header.jsp"></jsp:include>
	<jsp:include page="./inc/_footer.jsp"></jsp:include>
</body>
</html>