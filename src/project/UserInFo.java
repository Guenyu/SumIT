package project;

public class UserInFo {
	private String email;
	private String password;
	private String name;
//	private String age;
	private String ID;
//	private String addr;
	private String phone;
//	private String gender;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
//	public String getAge() {
//		return age;
//	}
//	public void setAge(String age) {
//		this.age = age;
//	}
	public String getId() {
		return ID;
	}
	public void setId(String ID) {
	this.ID = ID;
}
//	public String getAddr() {
//		return addr;
//	}
//	public void setAddr(String addr) {
//		this.addr = addr;
//	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
//	public String getGender() {
//		return gender;
//	}
//	public void setGender(String gender) {
//		this.gender = gender;
//	}
	@Override
	public String toString() {
		return "UserInFo [email=" + email + ", password=" + password + ", name=" + name + ", ID=" + ID + ", phone="
				+ phone + "]";
	}
	
}
