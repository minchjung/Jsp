<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Login page</h3>
	<!-- login -->
	<form action="./proc/loginProc.jsp" method = "post">
		<input type="text" name="uid" placeholder="아이디"/>
		<input type="password" name="password" placeholder="비밀번호"/>
		<input type="submit" value="로그인" />
	</form>
	<!--Signin  -->
	<form action="../register/register.jsp" method = "post">
		<input type="submit" value="회원가입" />
	</form>
	
</body>
</html>