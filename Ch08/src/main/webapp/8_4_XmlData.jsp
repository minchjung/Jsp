<%@ page contentType="text/xml;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@page import="org.jdom2.output.XMLOutputter"%>
<%@page import="org.jdom2.output.Format"%>
<%@page import="org.jdom2.Element"%>
<%@page import="org.jdom2.Document"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="sub.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>

<%
/* 
			Date : 03-29-2021
			Name : Minchan 
			Contents:  Dataset print out by XML-set(tag,markup language) from Database 
					   ** Library ** 
			  		    : Jdom 
*/	
	
%>
<% 
	//DataBase 처리 6step 
	String url = "jdbc:mysql://192.168.10.114:3306/jmc";
	String user= "jmc";
 	String password = "1234";
	//1. 
	Class.forName("com.mysql.jdbc.Driver"); 
	//2. 
	Connection conn = DriverManager.getConnection(url, user, password);
	//3. 
	Statement stmt = conn.createStatement();
	//4. 
	String sql = "SELECT * FROM MEMBER;";
	ResultSet rs =stmt.executeQuery(sql);
	//5.  
	List <MemberBean> mbList = new ArrayList();
	while(rs.next()){

		MemberBean mb = new MemberBean();
	
		mb.setUid(rs.getString(1));
		mb.setName(rs.getString(2));
		mb.setHp(rs.getString(3));
		mb.setPos(rs.getString(4));
		mb.setDep(rs.getInt(5));
		mb.setRdate(rs.getString(6));
		
		mbList.add(mb);
	}
	//6. 
	rs.close();
	conn.close();
	stmt.close();	
	//XML 데이터 생성 (JDOM 라이브러리 사용)
	Document doc = new Document(); 
	Element members = new Element("members"); //xml tag생성 객체 
	
	// List Array dosnt need  becuase it just needs the contens to be presented inside of each tag of XML 
	for(MemberBean mb: mbList){ // Therby, 빈 tag 생성 ahead
		Element member = new Element("member");//member tag
		Element uid = new Element("uid");// uid tag
		Element name = new Element("name"); //name tag 
		Element hp = new Element("hp");//  .
		Element pos = new Element("pos");//.
		Element dep = new Element("dep");
		Element rdate = new Element("rdate");

		uid.setText(mb.getUid()); //Plus, 각 tag요소 안 내용 작성 
		name.setText(mb.getName());
		hp.setText(mb.getHp());
		pos.setText(mb.getPos());
		dep.setText(""+mb.getDep());
		rdate.setText(mb.getRdate());
		
		member.addContent(uid); //And, member tag의 자식 요소로 각 개별tag 삽입
		member.addContent(name);
		member.addContent(hp);
		member.addContent(pos);
		member.addContent(dep);
		member.addContent(rdate);
		
		members.addContent(member); //Finally,  members tag의 자식 요소로 member tag 삽입
	}
	// XML by jdom library
	doc.setRootElement(members); // 
	
	// XML 출력 using jdom library
	XMLOutputter outPutter = new XMLOutputter(Format.getPrettyFormat());
	String xml = outPutter.outputString(doc);
	
	out.print(xml);
%>