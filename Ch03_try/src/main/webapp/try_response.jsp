<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="kr">
<head>
	<meta charset="UTF-8" />
	<title>response_html</title>
	<style>
		*{margin:0 auto; padding:0;color:inherit;}
		body{background-color:#242424;color:#fff; text-align:center;width:100%;height:100vh;}
		a{cursor:pointer;text-decoration:none;}
		h5{margin: 50px auto;}
		div{
			width: 150px; height:50px; 	
			line-height:50px; 
			cursor:pointer;
			display:inline-block;
			
		}
		.tag{
			background-color:orange;
		}
		.tag2{
			background-color:crimson;
		}
	</style>


</head>

<body>
	<h5>Response-Redirection or Forward to</h5>
	<div class="tag">
		<a href="./proc/responseProc.jsp">Redirection</a>
	</div>
	<div class="tag2">
		<a href="./proc/fowardProc.jsp">Forward to </a>
	</div>
</body>
</html>
