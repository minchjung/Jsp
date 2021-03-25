<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7_1_JDBC_Insert</title>
</head>
<body>
<!--  
	Date: 2021-03-25 
	Name: Minchan 
	Contents: JDBC insert
-->

</body>
	<h3>JDBC Insert</h3>
	<form action="./proc/insertProc.jsp" mmethod="get">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>hp</td>
				<td><input type="tel" name="hp" /></td>
			</tr>
			<tr>
				<td>age</td>
				<td><input type="number" name="age" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="submit" /></td>
			</tr>
		</table>
	</form>
</html>