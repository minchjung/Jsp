<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Main_</title>
    <Style>
        *{margin:0 auto; padding:0;}
        html{background-color: #242424; }
        a{
            cursor: pointer; text-decoration: none;
            color:inherit;
        }
        .wrap{
            display: flex; justify-content: space-between; 
            align-items: center;
            margin-top:20px;
            padding-bottom:20px;

            width: 100%; color: #fff;
			box-shadow:  1px 1px 1px 0px #666;	
        }
        .main{display:flex; align-items:center;}
        .main h4{margin:0 20px;}
        .connect{display:flex;}
        button{width:70px; 
        background-color: 
        transparent;color:#fff;
        margin: 0 5px;
        padding: 5px 0;
        }
        .bullet:hover, button:hover{
            color:coral;
        }
    </Style>
</head>
<body>
	<%
		String userID = null; 
		
	%>

<header>
    <div class="wrap">
        <div class="logo"><a href="main.html">LOGO</a></div>
        <div class="main">
            <h4>Main</h4>
        </div>
	<% 
		if(session.getAttribute("userID") !=null){
			userID = (String)session.getAttribute("userID");
	%>
        <div class="bullet">
            <a href="bbs.jsp"><h4>Bulletin</h4></a>
        </div>
        <div class="connected">
            <button style ="width: 90px;" class="hello"><%=userID %></button>
            <button style ="width: 90px;" class="logout">  
                <a href="logoutAction.jsp">Log out</a>
            </button>
        </div>
	<% }%>
	
	<%  if(userID ==null){%>
	<!-- login or signin(join) 요청  -->
        <div class="connect">
            <button class="login"><a href="login.jsp">Log-in</a></button>
            <button class="singin"><a href="join.jsp">Sign-up</a></button>
        </div> <!--.connect  -->
	<% }%>	

    </div><!-- wrap -->
</header>
</body>
</html>