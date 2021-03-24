<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String result =	request.getParameter("result");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<h4>Login</h4>
	<form action="./loginProc.jsp" method ="post">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="uid" /></td>
			</tr>
			<tr>
				<td>password</td>
				<td><input type="password" name="pass" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="Login" />
				</td>
			</tr>
		</table>
	</form>
<script>
	let result = "<%=result%>";
	if(result ==="fail"){
		alert("로그인에 실패 했습니다. \n다시 확인하세요.")
	}else if(result ==="logout"){
		alert("BYE")
	}
</script>
</body>
</html>