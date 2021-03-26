<%@page import="sub1.MemBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	
	//전송되는 request 문자열 encoding 설정 
	request.setCharacterEncoding("UTF-8");
	//List page로 부터 전송된 request 의 key:value 값 정의 by request obj (-uid, name, dep값만 전송해온다 )
	String uid = request.getParameter("uid"); // list.jsp?parameter=value 형태로 받아온다
	String name = request.getParameter("name");
	String tem = request.getParameter("dep");
	int dep = Integer.parseInt(tem);
	

	
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

	//4. SQL 쿼리문 작성 및 실행 : 수정 요청 to database
	String sql  = "UPDATE `MEMBER` SET ";
		   sql += "`name`='"+name+"', ";		   
		   sql += "`dep`="+dep+" ";
		   sql += "WHERE `uid`='"+uid+"';";

	stmt.executeUpdate(sql);  // <---sql 실행 결과문 !!
	//5. (서버 데이터 처리 과정)
	
	// 6. Step6 - quick the db rs.close();
	stmt.close();
	conn.close();
%>