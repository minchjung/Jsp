<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입3</title>
</head>
<style>
    span{
        font-size: 0.7em;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	var uidOk=true;
	var uidValOk=false;
	var passOk=false;
	var passValOk=false;
    $(document).ready(function(){      
        $("input[name=uid]").focusout(function(){
            let uid_input = $(this).val();
            let regID_checker = /^[a-z]+[a-z0-9]{3,10}$/; 
            $.ajax({ // ajax 비동기화 request 수신
               	url:"/Register_function2/rProc.jsp",
               	type:"get",
               	data:{uid:uid_input}, 
               	dataType: 'json',
               	success : function(respData){
           	   		let count = respData.result; 
           	   		if(count==1){
           	   		    uidOk=false; //아이디 중복 체크 
           	   		}else{
           	   		    console.log("아이디 참인데 중복 아닌데")
           	   		    uidOk=true;
           	   		}
           	   	}
        	})//ajax
            
			if (! regID_checker.test(uid_input)){// 유효성 통과 X 		
				uidValOk =false;
				$(".uidCheck").css("color","red").text("아이디를 다시 작성해 주세요.")
				alert("사용할 수 없는 아이디 입니다.")
			}else if (uidOk){//유효성 통과 O 중복도 통과 O 
				uidValOk = true;// 유효성 ok true전환 (--> Submit 버튼 활성에 사용될 전역변수 값 할당)
				uidOk=true;
				$(".uidCheck").css("color","green").text("사용 가능한 아이디 입니다.");
			}else{
			    uidOk=false;
				$(".uidCheck").css("color","red").text("이미 사용중인 아이디 입니다.");
			}
 		})//focusout
 	})//opening
</script>
<body>
    <head>
        <form action="/Register_function2/rProc.jsp" method="post">
            <div class="uid">
                <input class = "dup"type="text" placeholder="아이디" name="uid">
                <span class="uidCheck"></span>
            </div>
            <div class="pass">
                <input class="dup"type="password" placeholder="비번" name="pass">
                <span class="passCheck"></span>
            </div>
            <div class="addrWrap">
                <div class="addr1"><input type ="text"  placeholder="address1" name="addr1"></div>
                <div class="addr2">
                    <input type ="text" placeholder="address2" name="addr2">
                    <button type="button" class="addrBtn">주소검색</button>
                </div>
            </div>
            <input type="submit" value="submit">
        </form>
    </head>
</body>
</html>