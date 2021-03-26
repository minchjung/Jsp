<%@page import="java.sql.ResultSet"%>
<%@page import = "sub.LoginMember" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	// request
	request.setCharacterEncoding("UTF-8");

	String useruid = request.getParameter("uid");
	String userpassword = request.getParameter("password");
	
	//Listing all data(uid, password) from Database
	//<1 JDBC>driver load 
	Class.forName("com.mysql.jdbc.Driver"); 
	// 2. driver connect 
	String url = "jdbc:mysql://192.168.10.114:3306/jmc";
	String user = "jmc";
	String pass = "1234";
	Connection conn = DriverManager.getConnection(url, user, pass);
	
	//3. Statement obj to execute 
	Statement stmt = conn.createStatement();
	//4. Execute statment, set ResultSet
	String sql = "SELECT `uid`,`password` FROM `LoginMember`;";
	ResultSet rs = stmt.executeQuery(sql);
	
	//5.
	for(int i = 0 ; i<=1; i++){
		// Should declare Member Class here since its all different 
		LoginMember logmen = new LoginMember(); 
		/* try{ */
			logmen.setUid(rs.getString(1));
			logmen.setPassword(rs.getString(2));
			System.out.println();
			int check = logmen.checker(useruid,userpassword);
			
			if(check==1){
				response.sendRedirect("../success.jsp");
				break;
				}
/* 		}catch(Exception e){
			response.sendRedirect("../login.jsp");
			break;
		} */
	}
	//6. close all 
	rs.close();
	stmt.close();
	conn.close();
	
	
%>