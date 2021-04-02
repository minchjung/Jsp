<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	var uidDup_ok = true;  
	var uidReg_ok= false; 
	$(document).ready(function(){
		//uid focusout 이벤트 발생시 수행할것 2가지 
		//1. 중복체크 by ajax({});
		//2. 유효성체크 by 정규식표현 
		$("input[name=uid]").focusout(function(){
			let uid_input = $(this).val()
			
 			//1. ajax  : asynchronized 비동기화 작업 수행  
 			//  비동기화 : 페이지 넘김없이 요청data를 전달 				
			$.ajax({
	 			url : "/Register/regAction.jsp",
				data : {uid : uid_input},	 // parameter:value <-요청 데이터를 url-request 객체로 보내는 ajax표현식 json객체 아님
				type : "get", //request type (url?parameter=value)
				dataType: 'json', //<-- Server side 서버에서 보내는 response data-Type (주의 :"request type X )
				// ***important : response dataType 설정 매우중요 !! ***
	 			success : function(respData){
	 				var count = respData.result
	 				// respData: json객체 from the Server-side  
	 				// result: key of the json from the Server-side, 
					// thereby,respData(=json object),which is the parameter or key 
					//, can use it as to get the value as it approach to the member value	 			
	 				//			ex) respData.result (객체.맴버변수 형태로 쓸수 있음) 
					// *** important : 다시한번  dataType:'json' 선언 되어야 위 작업이 수행 가능하다.  
 					if(count==1){
 						uidDup_ok = false; 
		 				$(".uidSpan").css("color","red").text("이미 사용중인 아이디 입니다.")					
 					}else{
 						uidDup_ok=true;
 					}
	 			}
 			}); //ajax 	
			
			//2. 유효성체크 by 정규표현식.test(체크할문자열)함수 return ==> true or false
 			let regID_checker = /^[a-z]+[a-z0-9]{3,10}$/; 
 			if (! regID_checker.test(uid_input)){// 유효성 통과 X 		
 				uidReg_ok =false;
 				$(".uidSpan").css("color","red").text("아이디를 다시 작성해 주세요.")
 				alert("사용할 수 없는 아이디 입니다.")
 				
 			}else if (uidDup_ok){//유효성 통과 O 중복도 통과 O 
 				uidReg_ok = true;// 유효성 ok true전환 (--> Submit 버튼 활성에 사용될 전역변수 값 할당)
 				$(".uidSpan").css("color","green").text("사용 가능한 아이디 입니다.");
 			}
		})//focusout 
	})// open
</script>
<style>
</style>
</head>
<body>
	<form action="/Register/regAction.jsp">
		<div class="box">
			<input name="uid" type="text" placeholder="아이디">
			<span class="uidSpan"></span>		
		</div>
		<div class="box">
		<input name="pass" type="password" placeholder="비밀번호">
			<span class=""></span>		
		</div>
		<input value = "submit" type="submit">
	</form>
</body>
</html>