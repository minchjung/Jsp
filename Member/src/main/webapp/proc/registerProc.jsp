<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	// 전송되는 request 문자열 encoding 설정 
	request.setCharacterEncoding("UTF-8");
	// 등록page로 부터 전송된 request 의 key:value 값 정의 by request obj
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp =  request.getParameter("hp");
	String pos = request.getParameter("pos");
	String tem = request.getParameter("dep");
	int dep= Integer.parseInt(tem);
	
	
	//6 Steps : 서버 연결 및 request data 등록 처리 과정 
	// Step 1 : JDBC driver 연결 설정 및 load 
	String host= "jdbc:mysql://192.168.10.114:3306/jmc"; 
	String user= "jmc"; 
	String password= "1234";  
 	Class.forName("com.mysql.jdbc.Driver"); // driver load
	
 	// Step 2 : Driver 서버 연결
	Connection conn = DriverManager.getConnection(host, user, password);
	
 	//3. Statemnet-SQL 실행 객체 생성 
	Statement stmt = conn.createStatement();
 	
	//4. SQL 쿼리문 작성 및 실행 
	String sql = "INSERT INTO `MEMBER` VALUES('"+uid+"','"+name+"','"+hp+"','"+pos+"',"+dep+",NOW());";
	stmt.executeUpdate(sql);
	//5. (서버 데이터 처리 과정)
	
	//6. close 
	stmt.close();
	conn.close();

	//Redirect 
	response.sendRedirect("../list.jsp");
%>
