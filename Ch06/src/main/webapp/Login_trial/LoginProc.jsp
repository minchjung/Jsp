<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	/*Set the request encoding type  */
	request.setCharacterEncoding("UTF-8");
	
	/* get the Client's request values of each parameter  */
	String uid = request.getParameter("uid"); //parameter 1 : uid
	String pass = request.getParameter("pass");//parameter 2: pass
	/* get the value of the prameter that Server sets when it's failed */
	
	
%>
<% 
	//proc 
	if(uid.equals("abcd") && pass.equals("1234")){
		response.sendRedirect("./LoginSuccess.jsp");
	}else{
		response.sendRedirect("./LoginPract.jsp?result=fail");
	}
%>