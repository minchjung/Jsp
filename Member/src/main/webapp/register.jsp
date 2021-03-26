<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원등록</title>
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
<!-- 직원등록 화면 구성 -->
<main>
	<h4>직원등록</h4>
	<form action="./proc/registerProc.jsp" method="post"> 
	 <!-- form-tag request 경로 및 처리 방식 -->
		<table border="1">	
			<tr>
				<td>아이디</td> <!--key:value 형태로 name:input입력값을 받는다-->
				<td><input type="text" name="uid" placeholder="아이디입력" /></td>
										
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" placeholder="이름 입력" /></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="tel" name="hp" placeholder="휴대폰 번호 입력" /></td>
			</tr>
			<tr>
				<td>직급</td>
				<td>
					<select name="pos">
						<option value="사원">사원</option>
						<option value="대리">대리</option>
						<option value="과장">과장</option>
						<option value="차장">차장</option>
						<option value="부장">부장</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>부서</td>
				<td>
					<select name="dep" id="">
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
				<td colspan="2" align="right"><input type="submit" value="직원등록" /></td>
				<!--submit --form tag data 전송 (registerProc에서 data 처리)   -->
			</tr>
		</table>
	</form>
</main>
</body>
</html>