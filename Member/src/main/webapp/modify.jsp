<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// request 전송 문자열 set
	request.setCharacterEncoding("UTF-8");
	// request data setting 
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
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
	<h4>직원수정</h4>
		<!-- 수정시 modifyProcd data처리 -->
	<form action="./proc/modifyProc.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<!--PK값인 uid는 readonly 설정  -->
				<td><input type="text" name="uid" readonly value=<%=uid %> /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=<%=name %> /></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="tel" name="hp" value=<%=hp %> /></td>
			</tr>
			<tr>
				<td>직급</td>
				<td>
					<select name="pos" >
						<option>사원</option>
						<option>대리</option>
						<option>과장</option>
						<option>차장</option>
						<option>부장</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>부서</td>
				<td>
					<select name="dep">
						<option value="101">영업1부</option>
						<option value="102">영업2부</option>
						<option value="103">영업3부</option>
						<option value="104">영업4부</option>
						<option value="105">영업5부</option>
						<option value="106">영업지원부</option>
						<option value="107">인사부</option>
					</select>
				</td>
			</tr>
			<tr>
			
				<td colspan="2" align="right"><input type="submit" value="직원수정" /></td>
			</tr>
		</table>
	</form>
	
</body>
</html>