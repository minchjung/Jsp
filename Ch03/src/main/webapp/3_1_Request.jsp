<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  
	date: 03-23-2021
	name : Minchan
	Contents: JSP Request - Inner Object Practice
	
	Request Inner Obj 
		-  contains information of the client request 
		-  transfer the Clients data(Parameter) to Server
	Get type : 
		-  default or basic 
		-  request the data or page from the server 
		-  data (parameter) on the web address 
	Post type : 
		-  transfer the data along with the request 
		-  the data(parameter) inserted into the  request form 
		-  not on the web address   
-->
</head>
<body>
	<h3>1.JSP request obj</h3>
	
	<h4>Login</h4>
	<form action="./proc/loginProc.jsp" method ="get">
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
	<h3>Sign In</h3>
	<form action="./proc/registerProc.jsp" method = "get">
		<table border="1">
			<tr>
				<td>name</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>male/female</td>
				<label>
					 <td><input type="radio" name="gender" value="1"/>1</td>
				</label>
				<label>
					 <td><input type="radio" name="gender" value="2" />2</td>
				</label>
			</tr>
			<tr>
				<td>do as fun</td>
				<td>
					<label><input type="checkbox" name="hobby" value="mountain"/>mountain</label>
					<label><input type="checkbox" name="hobby" value="reading a book"/>reading a book</label>
					<label><input type="checkbox" name="hobby" value="travel"/>travel</label>
					<label><input type="checkbox" name="hobby" value="ex"/>ex</label>
					<label><input type="checkbox" name="hobby" value="movie"/>movie</label>
				</td>
			</tr>
			<tr>
				<td>address</td>
				<td>
					<select name="addr">
						<option value="s">서울</option>
						<option value="j">대전</option>
						<option value="b">부산</option>
						<option value="d">대구</option>
						<option value="k">광주</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align ="right"> <input type="submit" value="sign In"/></td>
			</tr>
		</table>
	
	</form>
	<h3>Client 정보 출력</h3>
	
	<p>
		헤더정보 : <% request.getHeader("User-Agent"); %><br />
		통신규약 : <% request.getProtocol(); %><br />
		서버이름 : <% request.getServerName(); %><br />
		요청주소 : <% request.getRequestURL(); %><br />
		요청경로 : <% request.getRequestURI(); %><br />
		사용자IP : <% request.getRemoteAddr(); %><br />
	</p>
	
	
</body>
</html>