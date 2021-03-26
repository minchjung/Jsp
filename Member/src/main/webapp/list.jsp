
<%@page import="sub1.MemBean"%>
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
	String sql = "SELECT *FROM `MEMBER`;";
	ResultSet rs = stmt.executeQuery(sql);  // <---sql 실행 결과문 !!
	
	// 5. Step5 - result to get treated (in case of SELECT)
	List<MemBean> ubList = new ArrayList<>();  //MemBean 객체 ubList를 List로 생성 
	
	while(rs.next()){  // get the value from DB by MemBean 클래스 getter
		MemBean ub = new MemBean();
		ub.setUid(rs.getString(1));
		ub.setName(rs.getString(2));
		ub.setHp(rs.getString(3));
		ub.setPos(rs.getString(4));
		ub.setDep(rs.getInt(5));
		
		ubList.add(ub);  // 가져온값들을 ubList 추가  
	}
	
	// 6. Step6 - quick the Result, Statement, Connection 객체 
	rs.close();
	stmt.close();
	conn.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<style>
	*{margin:0 auto, text-aline:center; color:inherit;}
	html{background-color:#000;color: #fff;font-size:1.3em}
	main{width:800px; height:800px; margin:202px auto;}
	table{border 1px solid #fff;}
	td{input:color:#000;}
	input,select{color:#000;}
</style>


</head>
<body>
	<h3>직원목록</h3>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>휴대폰</th>
			<th>직급</th>
			<th>부서</th>
			<th>관리</th>
			<th>삭제</th>
		</tr>
		<!-- Database로 부터 전송받은 ubList의 값들을 출력해 테이블 구성 하기 -->
		 <% for(MemBean u : ubList){ 
				String uidTem = u.getUid();
				String nameTem = u.getName();
				String hpTem = u.getHp();
				String posTem = u.getPos();
				int depTem = u.getDep();
				%>
		<tr>
			<td class ="uid"><%=uidTem %></td>
			<td><%=nameTem%></td>
			<td><%=nameTem%></td>
			<td><%=hpTem%></td>
			<td><%=depTem%></td>
			<td>
				<!-- 수정시 modify.jsp페이지로 parameter 와 값 전달   -->
				<a href="./modify.jsp?uid=<%=uidTem %>&name=<%=nameTem%>&dep=<%=depTem%>">수정</a>
			</td>
			<td>
				<!-- 삭제시 deleteProc.jsp에서 data 처리 parameter로 PK값인 uid만 전달해 처리한다   -->
				<a href="./proc/deleteProc.jsp?uid=<%=uidTem %>">삭제</a>			
			</td>
		</tr>
		 <%} %> 
	</table>
</body>
</html>