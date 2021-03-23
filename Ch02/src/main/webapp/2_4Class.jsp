<%@ page import="sub1.Account" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
		날짜: 2021/03/23
		이름: 정민찬
		내용: JSP 스크립트릿 Class 실습하기 
 -->
	<h3>3.JSP_Class</h3>
	<%
		Account kb = new Account("국민은행","123-4567-890","Kim",10000);
		kb.deposit(40000);
		kb.withdraw(7000);
		kb.show(out);
	%>
</body>
</html>