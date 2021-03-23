package sub1;

import javax.servlet.jsp.JspWriter;

public class Account {
	private String bank;
	private String accID;
	private String name;
	private int money;
	public Account(String bank, String accID, String name, int money) {
		this.bank=bank;
		this.accID=accID;
		this.name=name;
		this.money=money;
	}
	public void deposit(int m) {
		this.money +=m;
	}
	public void withdraw(int m) {
		this.money -=m;
	}
//	html ��� ��ü ����  
	public void show(JspWriter out ) throws Exception{
		out.println("<p>");
		out.println("�����: "+bank+"");
		out.println("���¹�ȣ:"+accID+"");
		out.println("�̸�:"+name+"");
		out.println("</p>");
	}
}
