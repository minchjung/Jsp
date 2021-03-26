package sub;

public class LoginMember {
	private String uid; 
	private String password; 
	private String name; 
	private String hp; 
	private String address;
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	} 
	public int checker(String userId, String userPass) {
		String id = this.uid;
		String pass = this.password; 
		int check =0;
		if(id.equals(userId) && pass.equals(userPass)) {
			check =1;
			return   check;
		}else {
			check=-1; 
			return check;
		}
	}
	

}
