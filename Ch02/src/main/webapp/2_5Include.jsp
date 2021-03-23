<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2_5Include</title>
</head>
<body>
<!-- 
	date : 03-23-2021 
	name : Minchan
	contents: JSP Include
	
	include 지시자 
		공통의 전역파일 삽입 
		UI모듈 공통전익 파일 변수 삽입시 사용 
		정적타임에 삽입 
		include 태그 <- 동적타임 삽입 
 -->
 <h3>5.JSP 인클루드</h3>
 <%@ include file = "./inc/_header.jsp" %>
											<!--header영역 include 문법으로 불러오기 -->
 <main>
 	<h1>페이지 컨텐츠 영억 </h1>
 </main>
 
 <%@ include file = "./inc/_footer.jsp" %>
											<!--footer영역 include 문법으로 불러오기 -->
</body>
</html>