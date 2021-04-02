<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>   
<%@ page import="java.io.PrintWriter" %>   
<%@ page import= "user.User" %>
<% 
	request.setCharacterEncoding("UTF-8"); 
%>

<jsp:useBean id = "user" class="user.User" scope ="page"></jsp:useBean>
<jsp:setProperty name = "user" property = "userID"></jsp:setProperty>
<jsp:setProperty name = "user" property = "userPassword"></jsp:setProperty>
<jsp:setProperty name = "user" property = "userName"></jsp:setProperty>
<jsp:setProperty name = "user" property = "userGender"></jsp:setProperty>
<jsp:setProperty name = "user" property = "userEmail"></jsp:setProperty>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  
		String userID = null; 
		if(session.getAttribute("userID") != null){
			userID =(String) session.getAttribute("userID");
		}
		if(userID != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어있습니다.')");
			script.println("location.href ='main.jsp'");
			script.println("</script>");
		}
			// 모두 입력받게 set 
		if(user.getUserID() ==null || user.getUserPassword() ==null || user.getUserName() ==null || user.getUserGender()==null|| user.getUserEmail() ==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");	
		}else{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			
			if (result == -1) { // 오류는 단 하나 PK값 중복 
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디 입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{//회원가입 성공 
				PrintWriter script = response.getWriter();
				session.setAttribute("userID", user.getUserID());
				script.println("<script>");
				script.println("location.href ='main.jsp'");
				script.println("</script>");
			} 		
		}
	%>

</body>