<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6_4_sessionConfirm</title>
<!--  
	Date: 2021-03-24 
	Name: Minchan 
	Contents: SessionConfirm
-->

</head>
<body>
	<h3>To see the data of the Session</h3>
	<% 
		/* SID autometically set */
		String sid = session.getId();
		String name = (String )session.getAttribute("name"); //<----It returns the Objects:  Object is  the Topest Class that enables to put the type on it. 
		String uid = (String )session.getAttribute("uid");
	%>
</body>

	<p>
		sid: <%=sid %>
		name: <%=name %>
		uid:  <%=uid %>
	</p>
</html>