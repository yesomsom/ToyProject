package mango.mango.model;

import java.io.Serializable;

public class MemberVO implements Serializable {
	private String id;
	private String password;
	private String name;
	private String phone;
	private String email;
	private int auth;
	private int zipNo;
	private String registerDate;
	private String address;
	private String unRegisterDate;

	public MemberVO() {

	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", email="
				+ email + ", address=" + address + ", zipNo=" + zipNo + ", auth=" + auth + ", registerDate="
				+ registerDate + ", unRegisterDate=" + unRegisterDate + "]";
	}

	public MemberVO(String id, String name, String phone, String email, String address, int auth, int zipNo,
			String registerDate, String unRegisterDate) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.zipNo = zipNo;
		this.auth = auth;
		this.registerDate = registerDate;
		this.unRegisterDate = unRegisterDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public int getZipNo() {
		return zipNo;
	}

	public void setZipNo(int zipNo) {
		this.zipNo = zipNo;
	}

	public String getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUnRegisterDate() {
		return unRegisterDate;
	}

	public void setUnRegisterDate(String unRegisterDate) {
		this.unRegisterDate = unRegisterDate;
	}
	

}