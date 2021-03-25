<%@page import="sub1.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	// 6 Steps of DataBase 
	
	String host= "jdbc:mysql://192.168.10.114:3306/jmc"; 
	String user= "jmc"; 
	String pass= "1234";  
	// 1. Step1 - JDBC Driver load
	Class.forName("com.mysql.jdbc.Driver");
	
	// 2. Step2 - connect  to DB
	Connection conn = DriverManager.getConnection(host, user, pass);
	
	// 3. Step3 - set obj of theSQL executer 
	Statement stmt = conn.createStatement();
	// 4. Step4 - execute SQL 
	String sql = "SELECT *FROM `USER1`;";
	ResultSet rs = stmt.executeQuery(sql);  // <---sql 실행 결과문 !!
	
	// 5. Step5 - result to get treated (in case of SELECT)
	List<UserBean> ubList = new ArrayList<>();
	
	while(rs.next()){
		UserBean ub = new UserBean();
		ub.setUid(rs.getString(1));
		ub.setName(rs.getString(2));
		ub.setHp(rs.getString(3));
		ub.setAge(rs.getInt(4));
		
		ubList.add(ub);
	}
	
	// 6. Step6 - quick the db
	rs.close();
	stmt.close();
	conn.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7_2_JDBC_Select</title>
<!--  
	Date: 2021-03-25 
	Name: Minchan 
	Contents: JDBC Select
-->

</head>
<body>
	<h3>2.JDBC Select</h3>
	<a href="./7_1_JDBC_Insert.jsp">등록하기</a>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>휴대폰</th>
			<th>나이</th>
			<th>수정/삭제</th>
		</tr>
		<%for(UserBean u :ubList){%>

		<tr>
			<td><%= u.getUid() %></td>
			<td><%= u.getName() %></td>
			<td><%= u.getHp() %></td>
			<td><%= u.getAge() %></td>
			<td>
				<a href="#">수정</a>
				<a href="#">삭제</a>
			</td>
		</tr>
		<%} %>
		
	</table>

</body>
</html>