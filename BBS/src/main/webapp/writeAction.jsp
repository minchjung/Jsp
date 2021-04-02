<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>   
<%@ page import="java.io.PrintWriter" %>   
<%@ page import= "bbs.Bbs" %>
<% 
	request.setCharacterEncoding("UTF-8"); 
%>

<jsp:useBean id = "bbs" class="bbs.Bbs" scope ="page"></jsp:useBean>
<jsp:setProperty name = "bbs" property = "bbsTitle"></jsp:setProperty>
<jsp:setProperty name = "bbs" property = "bbsContent"></jsp:setProperty>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  
		String userID = null;  
		if(session.getAttribute("userID") != null){ //세션에 userid가 부여되어 있으면 로그인 돼어 있는상태 
														// 세션으로부터 userID값을 현재 페이지로 받아온다
			userID =(String) session.getAttribute("userID");
			//로그인을 session userID로 확인 후 
			//게시판 글작성을 수행한다. 이때 내용이 모두 입력받게 setting 
			if(bbs.getBbsTitle() ==null || bbs.getBbsContent() ==null ){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");	
			}else{// 내용이 모두 입력되면 
				BbsDAO bbsDAO = new BbsDAO(); //BbsDAO 클래스의 write함수 호출 
											  // write함수는 db로 게시물 작성내용을 등록 수행한다.
				int result = bbsDAO.write(bbs.getBbsTitle(),userID,bbs.getBbsContent());
					
				if (result == -1) { // 호출 결과 return -1 : 오류 = 글쓰기 실패  
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패 했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else{// 그외 0보다 큰 정수값 (because excuteUpdate값 = 모두 0보다 큰 값)
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href ='bbs.jsp'");
					script.println("</script>");
				} 		
			}
		}
		else{ //세션에 userID 정보가 없다면 <--로그인 성공x시 부여되지 않기 때문에 로그인 페이지로 돌려 보낸다. 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href ='login.jsp'");
			script.println("</script>"); //로그인 되서 session의 userid값이 존재 할때까지, 위 과정을 반복하게 한다. 
		}
	%>

</body>