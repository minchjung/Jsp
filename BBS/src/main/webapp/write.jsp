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
            margin-top: 20px;
            width: 90%;
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
        <div class="connected">
        <% 
        	String userID = (String)session.getAttribute("userID");
        %>
            <div class="bullet">
                <a href="#"><h4>Bulletin</h4></a>
            </div>
            <button style ="width: 90px;" class="hello"><%=userID %></button>
            <button style ="width: 90px;" class="logout">  
                <a href="logoutAction.jsp">log out</a>
            </button>
        </div> 
    </div><!-- wrap -->
</header>
<main>
    <div class="container" style="width: 100%;">
        <form action="writeAction.jsp">
            <table>
                <thead>
                    <tr>
                        <th colspan="2">게시판 글쓰기 양식</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" placeholder="글 제목" name="bbsTitle" maxlength="50" style="width:
                            95%;"></td>
                    </tr>
                    <tr>
                        <td><textarea placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;width: 95%;"></textarea></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" style="float:right; margin:10px;" value="글 쓰기"> 
        </form>
    </div>
</main>
</body>
</html>