<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>BBS</title>
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
            box-sizing: border-box;
            box-shadow:  1px 1px 1px 0px #666;
            width: 100%; color: #fff;

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
        table{
            table-layout: fixed;
            margin-top: 20px;
            width: 90%;
            border: 1px solid #ddd; 

        }
        th,td{
            text-align: center;
            background-color: #eee;
            word-break: break-all;
           }
        td{
            background-color: #ddd;
        }
    </Style>
</head>
<body>
<header>
    <div class="wrap">
        <div class="logo"><a href="main.html">LOGO</a></div>
        <div class="main">
            <h4>Main</h4>
        </div>
<!--         <div class="connect">
            <button class="login"><a href="login.jsp">Log-in</a></button>
            <button class="singin"><a href="join.jsp">Sign-up</a></button>
        </div> -->
         <div class="connected">
            <div class="bullet">
                <a href="#"><h4>Bulletin</h4></a>
            </div>
            <%
           		String userID = (String)session.getAttribute("userID");
            %>
            <button style ="width: 90px;" class="hello"><%=userID %></button>
            <button style ="width: 90px;" class="logout">  
                <a href="logoutAction.jsp">log out</a>
            </button>
        </div> 
    </div><!-- wrap -->
</header>
<main>
    <div class="container" style="width: 100%;">
        <table>
            <thead>
                <tr>
                    <th >번호</th>
                    <th style="width:70%;" >제목</th>
                    <th >작성자</th>
                    <th >작성일</th>
                </tr>
            </thead>
            <tbody>
                <td>1</td>
                <td style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;">lolrem ipsum you go to the place that you have to be not here by no chdasfasdfasdfance adfsd asdadsfasdfasfdadsfasdffasdfasdfasdfthat thing </td>
                <td>홍길동</td>
                <td>2021-03-21</td>
            </tbody>
        </table>
        <button style="float:right; margin:10px;"><a href="write.jsp">글쓰기</a></button>
    </div>
</main>
</body>
</html>