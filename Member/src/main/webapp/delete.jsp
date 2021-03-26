<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String uid = request.getParameter("uid");
	
	// 6 Steps of DataBase 
	String host= "jdbc:mysql://192.168.10.114:3306/jmc"; 
	String user= "jmc"; 
	String pass= "1234";  

	//6 Steps : 서버 연결 및 수정 request data 처리 과정 
	// Step 1 : JDBC driver 연결 설정 및 load 
	Class.forName("com.mysql.jdbc.Driver");

	// Step 2 : Driver 서버 연결
	Connection conn = DriverManager.getConnection(host, user, pass);

	//3. Statemnet-SQL 실행 객체 생성 
	Statement stmt = conn.createStatement();
	// 4단계
	String sql = "DELETE FROM `MEMBER` WHERE `uid`='"+uid+"';";
	stmt.executeUpdate(sql);
	
	//5. (서버 데이터 처리 과정:None)
	
	// 6단계 - 데이터베이스 종료
	stmt.close();
	conn.close();
	
	// Redirect to the list page 
	response.sendRedirect("../list.jsp");