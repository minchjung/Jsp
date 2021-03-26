<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("uid");
	// Step 6 
	String host= "jdbc:mysql://192.168.10.114:3306/jmc"; 
	String user= "jmc"; 
	String password= "1234";
	//1 
	Class.forName("com.mysql.jdbc.Driver");
	//2 
	Connection conn = DriverManager.getConnection(host, user, password);
	//3 
	Statement stmt = conn.createStatement();
	
	//4 
	String sql = "DELETE FROM `MEMBER` WHERE `uid`;";
	//5 
	stmt.executeUpdate(sql);
	
	// Redirect 
	response.sendRedirect("../list.jsp");
%>