package MainControl;

public class Account {
	private String urs,pwd;
	private int role;
	private String name,address,phone;
	private int check;
	public Account() {

	}
	public Account(String urs, String pwd, int role, String name, String address, String phone, int check) {
		super();
		this.urs = urs;
		this.pwd = pwd;
		this.role = role;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.check = check;
	}
	public Account(String urs, String pwd, String name, String address, String phone) {
		super();
		this.urs = urs;
		this.pwd = pwd;
		this.name = name;
		this.address = address;
		this.phone = phone;
		
	}
	public String getUrs() {
		return urs;
	}
	public void setUrs(String urs) {
		this.urs = urs;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getCheck() {
		return check;
	}
	public void setCheck(int check) {
		this.check = check;
	}
	
		

}
