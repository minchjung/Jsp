<%@page import="kr.co.Jboard1.TermsBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	/* 
		<date>: 03-29-2021 </date>
		<name>: Minchan </name>
		<cotents> terms page : print out the terms from DB on the page</cotents>
				 	1.Connect to the Db and get the data 
				 	2.print those out by Bean and ResultSet 
					3.Make the condition to load the next page 
						<javascript, Jquery>
				 			a. 약관 동의박스 check 
				 			b. 개인정보 동의박스 check 
	
	*/

%>
<%  //STEP 06 data conn, load, set 
	//1.Driver load 
	Class.forName("com.mysql.jdbc.Driver");
	//2. Driver connect to DB	
	String url = "jdbc:mysql://192.168.10.114:3306/jmc";
	String user = "jmc";
	String pass = "1234"; 
	Connection conn = DriverManager.getConnection(url, user, pass);
	//3. Statement object 
	Statement stmt = conn.createStatement();
	//4.  sql, and stmt excute(sql,  ResultSet if it needs
	String sql = "SELECT * FROM `JABOARD_TERMS`;";
	ResultSet rs = stmt.executeQuery(sql);
	//5. rs to Bean or List 
	TermsBean tb = new TermsBean(); // only 1 dataset on the Terms Table(List unnecesary)
	rs.next(); 
	tb.setTerms(rs.getString(1));
	tb.setPrivacy(rs.getString(2)); 
	// The data(terms of page and privacy) is onset to have by Getter function in the TermsBean-class, 

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>약관</title>
    <link rel="stylesheet" href="../css/style.css"/>    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script> // Makes the condition to the nexpage, agreement Check on both  
	$(document).ready(function(){
 		$("#user > div > a:eq(1)").click(function(){
			if($("input[name=chk1]").is(":checked")==true && $("input[name=chk2]").is(":checked") ){
				return true
			}else 
				alert("Check on the agreement, plz")	
				return false
		}) 
	})
</script>
</head>
<body>
    <div id="wrapper">
        <section id="user" class="terms">
            <table>
                <caption>사이트 이용약관</caption>
                <tr>
                    <td>
                        <textarea readonly><%= tb.getTerms() %> </textarea>  <!-- terms contents from the TermsBean Getter  -->
                        <p>
                            <label><input type="checkbox" name="chk1"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <table>
                <caption>개인정보 취급방침</caption>
                <tr>
                    <td>
                        <textarea readonly><%=tb.getPrivacy() %></textarea> <!-- terms contents from the TermsBean Getter  -->
                        <p>
                            <label><input type="checkbox" name="chk2"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <div>
             <!-- 경로지정: System경로 지정 (상대경로 x ) -->
                <a href="/Jboard1/user/login.jsp">취소</a> 
                <a href="/Jboard1/user/register.jsp">다음</a>
            </div>
        </section>
    </div>

</body>
</html> 