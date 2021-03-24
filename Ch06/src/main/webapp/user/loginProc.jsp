<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	// encoding 필수 
	request.setCharacterEncoding("UTF-8");
	
	// 전송 데이터 수신 
 	String uid = request.getParameter("uid").trim().replace(" ","");
	String pass =request.getParameter("pass").trim().replace(" ",""); 

	// Database 로직 (생략)
	if(uid.equals("abcd") && pass.equals("1234")){
		session.setAttribute("uid", uid);
		session.setAttribute("pass", pass);
	
		response.sendRedirect("./loginSuccess.jsp");
	}else{
		response.sendRedirect("./login.jsp?result=fail");
		/* result=fail <---parameter임 */
	}
	
%>