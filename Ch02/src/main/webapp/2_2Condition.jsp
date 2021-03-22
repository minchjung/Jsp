<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>2_2Condition</title>
</head>
<body>
	<!-- 날짜 : 2021/03/22 
		 이름 : 정민찬
		 내용 : JSP 조건문 실습하기 
	-->
	<h3>2.조건문</h3>
	<%
		int num1=1;
		int num2=2;
		int num3=3;
		int num4=4;
	
		if(num1 > 0){
			out.print("<h4>num1은 0보다 크다</h4>");
		}
		if(num1 > num2){
	%>
	
	<h4>num1 is bigger than num2 </h4>
	
	<%
		}else{
	%>
	
	<h4>num1 is smaller than num2</h4>
	
	<%
		}
	%>
	<hr/>
	<%if(num1 > num2){ %>
		<h4>num1 is bigger than num2</h4>
	<%}else if(num3 < num2){ %>
		<h4>num3 is bigger than num2</h4>
	<%}else if(num3 > num4){ %>
		<h4>num3 is bigger than num4</h4>
	<%}else{ %>
		<h4>num4 is the biggest</h4>
	<%} %>
</body>
</html>