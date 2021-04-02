<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
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
        button:hover{
            color:coral;
        }
        main{width:100%; height:100vh;}
        .mainWrap{
            width: 50%; height: 50%;
            margin-top:60px;
        }
        h2{
            text-align: center;
            color: #fff;
            }
        table{
            margin-top: 20px;
            width:100%; height:100%;
            border: 1px solid #fff;
            border-radius: 10px;
        }
        input{
            width: 99%;
            background-color: transparent;
            color:#fff;
            padding: 5px 0;
        }
        input::placeholder{
            color: #999; font-style: italic;
            padding: 0 20px; 
        }
        .submit{
            width: 20%;
            cursor: pointer;
        }
        .submit:hover{
            color:coral;
        }
    </Style>
</head>
<body>
<header>
    <div class="wrap">
        <div class="logo"><a href="main.html">LOGO</a></div>
        <div class="main">
            <h4>Login</h4>
            <a href="#">Bullet</a>
        </div>
        <div class="connect">
            <button class="login"><a href="login.jsp">Log-in</a></button>
            <button class="singin"><a href="join.jsp">Sign-up</a></button>
        </div>
    </div><!-- wrap -->
</header>
<main>
    <div class="mainWrap">
    <h2 stlye="font-style:italic;">Login</h2> 
        <form action="loginAction.jsp" method="post">
            <table border="1">
                <tr>
                    <td>
                        <input type="text" name="userID" placeholder="아이디">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="userPassword" placeholder="비밀번호">
                    </td>
                </tr>
                <tr >
                    <td colspan="2" align="right">
                        <input class= "submit" type="submit" value= "Submit">
                    </td>
                </tr>
            </table>
        </form>
    </div><!-- mainWrap -->
</main>
</body>
</html>
