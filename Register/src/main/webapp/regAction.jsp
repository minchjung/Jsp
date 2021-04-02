<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	/* request System  
	 1. form tag---submit click 
	     : Parameter(input name)) = Value(input value)
	     폼테그안 모든 name속성을 parameter로 전송 시킨다. 
	     각각의 parameter의 입력된 값들이 value값으로 전송 된다. 
	 2. url : addr.jsp?Parameter=Value [<-동기화]
	 3. ajax: addr.jsp?Parameter=Value [<-비동기화 asynchronized] */
	request.setCharacterEncoding("UTF-8"); 
	String userID = request.getParameter("uid");
	System.out.println("ajax data:"+ userID); 

	//DB STEP6 
	//1. JDBC Driver load 
	Class.forName("com.mysql.jdbc.Driver");
	//2. Driver Connection obj  
	String url = "jdbc:mysql://localhost:3306/BBS";
	String user = "root";
	String password = "1234";
	Connection conn= DriverManager.getConnection(url, user, password);
	//3. Statement obj --connect
	Statement stmt = conn.createStatement();
	//4. Execute the sql and the ResultSet obj 
	String sql="SELECT COUNT(*) FROM `USER` WHERE `userID`='"+userID+"';";
	ResultSet rs = stmt.executeQuery(sql);
	//5. Data Processing 
	int count= 0 ; 
	if(rs.next()){
		count = rs.getInt(1);
	}
	// 	System.out.println(count);
	//6. Close
	conn.close();
	stmt.close();
	rs.close();
	/* 
	7. 결과값-- Response as json  
		ajax { success :function(parameter) } <-- parameter = {result:count}
	*/		
	JsonObject json = new JsonObject();
	json.addProperty("result", count);
	out.print(json); 
	// out.print < ==  하지 않으면 response 전송은 되나  json형태로 보내지지 않는다.
	//Important !!  As you response the data as the json object thereby,
	//the page contentType = "application/json" to be present ahead of this 
	//you can either define the content-type in the function of ajax({}) 
%>