<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	
	// 1 driver load
	Class.forName("com.mysql.jdbc.Driver");
	// 2 driver conn
	String url = "jdbc:mysql://localhost:3306/BBS";
	String user = "root";
	String password="1234";
	Connection conn = DriverManager.getConnection(url, user, password);
	// 3 statement w/ conn  
	Statement stmt = conn.createStatement();
	String sql = "SELECT COUNT(*) FROM USER WHERE `userID`='"+uid+"';";
	// 4 stmt to execute sql, putting it to resultset 
	ResultSet rs = stmt.executeQuery(sql);
	// 5 processing data 
	int result=0;
	if(rs.next()){
		result = rs.getInt(1);
	}
	//6 close all 
	conn.close();
	stmt.close();
	rs.close();
	//7 response as json to ajax 
	JsonObject json = new JsonObject();
	json.addProperty("result", result);
	out.print(json);
%>