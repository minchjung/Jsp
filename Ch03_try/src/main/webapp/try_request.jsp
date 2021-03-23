<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>try_request</title>
</head>
<body>
<!--form tag 입력값 submit으로 전송!!!  -->
	<form action="./proc/requestProc.jsp" method="get">
					<label><input type="checkbox" name="hobby" value="mountain"/>mountain</label>
					<label><input type="checkbox" name="hobby" value="reading a book"/>reading a book</label>
					<label><input type="checkbox" name="hobby" value="travel"/>travel</label>
					<label><input type="checkbox" name="hobby" value="ex"/>ex</label>
					<label><input type="checkbox" name="hobby" value="movie"/>movie</label>
					<input type="submit" value="asdf" />
	</form>
				
</body>
</html>
<!--아래 requestProc.jsp 파일 코드  -->
<%-- <%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>number selector</title>
<%
	request.setCharacterEncoding("UTF-8");
	String[] h = request.getParameterValues("hobby");
	int l = h.length;
	/* 배열 길이 */
%>

</head>
<body>
	<%
		for(int i = 0 ; i <l ; i++){
			if(h[i].equals("mountain") ){
	%>
			<!-- String 비교 method -->
				<h5>등산</h5>
	<%
			}else{
	%>			
			<h5><%=h[i] %></h5>
	<% 
			}
		}
	%>		
	
</body>
</html> --%>