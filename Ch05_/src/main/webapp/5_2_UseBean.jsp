<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5-2 UseBean</title>
<!--  
	Date: 2021-03-24 
	Name: Minchan 
	Contents: JavaBean with Class Member Values 
		jsp useBean tag 
			Define the class name by the Class you've set in the Java code
			Define the id name and use it as the object from the java Class
		
-->
</head>
<body>
	<h3>5_2.Usebean tag pract</h3>
	<% 
	/* 	String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameter("hobby");
		String addr = request.getParameter("addr"); */
	%>
	<jsp:useBean id="member" class="sub1.MemberBean">
		<jsp:setProperty name="member" property="name"/>
		<jsp:setProperty name="member" property="gender"/>
		<jsp:setProperty name="member" property="hobbies"/>
		<jsp:setProperty name="member" property="addr"/>
	</jsp:useBean>

	<p>
		이름<%=member.getName() %>
		성별<%=member.getGender() %>
		취미:
		<%
			for(String hobby : member.getHobbies()){
				try {
					out.print(hobby+",");
				}catch(Exception e){
					out.print("none");
				}		
			}
		%>
	</p>
	
</body>
</html>