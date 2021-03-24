<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5_1_JavaBean.jsp</title>
<!--  
	Date: 2021-03-24 
	Name: Minchan 
	Contents: Jsp JavaBean 
		JavaBean : object that contains the member values of the form tags 
		
		1. Jsp components generally use 
		2. can contains the member class from the input value of the form tag  
		3. can contains the columns of the table from the Database 
		
-->
</head>
<body>
	<h4>5.JSP JavaBean</h4>
	

<h3>Sign In</h3>
	<form action="./5_2_UseBean.jsp" method = "get">
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


</body>
</html>