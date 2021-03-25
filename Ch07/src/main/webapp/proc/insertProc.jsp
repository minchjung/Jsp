<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	// data transfer  to server 
	request.setCharacterEncoding("UTF-8"); //encoding
	
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");
	
	
	// 6 Steps of the Database   CAUTION!!!!!!!!  this part you prob make some mistake
	String host= "jdbc:mysql://192.168.10.114:3306/jmc"; 
	String user= "jmc"; 
	String pass= "1234";  
		
	// Step 1. JDBC Drive load 
	Class.forName("com.mysql.jdbc.Driver");
	// Step 2. Connect to the DataBase 
	Connection conn = DriverManager.getConnection(host, user, pass);
	// Step 3. Create the SQL obj to excute
	Statement stmt = conn.createStatement();
	// Step 4. Excute SQL
	String sql = "INSERT INTO `USER1`VALUES('"+uid+"','"+name+"','"+hp+"',"+age+");";
	stmt.executeUpdate(sql);
	// Step 5. Result  (nothinig else to do with)
		
	// Step 6. Quick the Database
	stmt.close();
	conn.close();
	//Redirect 
	response.sendRedirect("../7_1_JDBC_Insert.jsp");
	
%>