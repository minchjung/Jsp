<%@ page contentType="text/xml;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/* 
			Date : 03-29-2021
			Name : Minchan 
			Contents: XML (Extensible Markup Language) :: XML tag 작성 요령  
					 The set of Documents format to transfer data along with the JSon  
					 User can define the tag and use it 
					 Slower than the JSon (Parsing)
	*/	
	String xml = "<members>"; 
		   xml += "<member>"; 
		   xml += "<uid>101</uid>"; 
		   xml += "<name>김유신</name>"; 
		   xml += "<hp>010-1234-1111</hp>"; 
		   xml += "<pos>사원</pos>"; 
		   xml += "</member>"; 
		   xml += "<member>"; 
		   xml += "<uid>102</uid>"; 
		   xml += "<name>김춘추</name>"; 
		   xml += "<hp>010-1234-2222</hp>"; 
		   xml += "<pos>과장</pos>"; 
		   xml += "</member>"; 
		   xml += "</members>"; 
%>>