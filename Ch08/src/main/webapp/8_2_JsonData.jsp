<%@page import="com.google.gson.Gson"%>
<%@page import="sub.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
/* 
			Date : 03-29-2021
			Name : Minchan 
			Contents:  Dataset print out by JSON-set from Database 
						** Library ** 
						   : Gson 
*/	
	
%>
<% 
	//DataBase 처리 6step 
	String url = "jdbc:mysql://192.168.10.114:3306/jmc";
	String user= "jmc";
 	String password = "1234";
	//1. 
	Class.forName("com.mysql.jdbc.Driver"); 
	//2. 
	Connection conn = DriverManager.getConnection(url, user, password);
	//3. 
	Statement stmt = conn.createStatement();
	//4. 
	String sql = "SELECT * FROM MEMBER;";
	ResultSet rs =stmt.executeQuery(sql);
	//5.  
	List <MemberBean> members = new ArrayList();
	while(rs.next()){

		MemberBean mb = new MemberBean();
	
		mb.setUid(rs.getString(1));
		mb.setName(rs.getString(2));
		mb.setHp(rs.getString(3));
		mb.setPos(rs.getString(4));
		mb.setDep(rs.getInt(5));
		mb.setRdate(rs.getString(6));
		
		members.add(mb);
	}
	//6. 
	rs.close();
	conn.close();
	stmt.close();	
	//JSON 데이터 생성 
	Gson gson = new Gson(); //Gson library 사용
	String json =gson.toJson(members); // dataset을 저장하는 members List객체를 toJson() 이용해 json 으로 parsing(변형)
	//JSON 출력
	out.print(json);
%>