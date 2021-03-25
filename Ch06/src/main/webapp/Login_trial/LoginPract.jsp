<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	/* get the value of the prameter that Server sets when it's failed */
	String result =request.getParameter("result"); //server parameter : result
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login/out Practice</title>
</head>
<body>
	<form action="./LoginPrac.jsp" method="post">
		
		<input type="text" name="uid" placeholder="id"/>
		<input type="password" name="pass" placeholder="password"/>
		<input type="submit" value="submit"/>
	</form>
	
<script>
	let result = "<%=result%>";
	console.log(result)
	if(result ==="fail"){
		alert("re")
	}else if(result==="logout"){
		alert("bye")
	}
</script>
</body>
</html>