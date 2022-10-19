package mango.mango.model;

import java.io.Serializable;

public class SellerVO implements Serializable {
	private String sellerId;
	private String sellerPassword;
	private String sellerName;
	private String ownerName;
	private String businessNumber;
	private String managerName;
	private String managerPhone;
	private String managerEmail;
	private String address;
	private int zipNo;
	private String sellerLogo;
	private int auth;
	private String registerDate;
		

	public SellerVO() {

	}


	public String getSellerId() {
		return sellerId;
	}


	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}


	public String getSellerPassword() {
		return sellerPassword;
	}


	public void setSellerPassword(String sellerPassword) {
		this.sellerPassword = sellerPassword;
	}


	public String getSellerName() {
		return sellerName;
	}


	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}


	public String getOwnerName() {
		return ownerName;
	}


	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}


	public String getBusinessNumber() {
		return businessNumber;
	}


	public void setBusinessNumber(String businessNumber) {
		this.businessNumber = businessNumber;
	}


	public String getManagerName() {
		return managerName;
	}


	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}


	public String getManagerPhone() {
		return managerPhone;
	}


	public void setManagerPhone(String managerPhone) {
		this.managerPhone = managerPhone;
	}


	public String getManagerEmail() {
		return managerEmail;
	}


	public void setManagerEmail(String managerEmail) {
		this.managerEmail = managerEmail;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getZipNo() {
		return zipNo;
	}


	public void setZipNo(int zipNo) {
		this.zipNo = zipNo;
	}


	public String getSellerLogo() {
		return sellerLogo;
	}


	public void setSellerLogo(String sellerLogo) {
		this.sellerLogo = sellerLogo;
	}


	public int getAuth() {
		return auth;
	}


	public void setAuth(int auth) {
		this.auth = auth;
	}


	public String getRegisterDate() {
		return registerDate;
	}


	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}

	

}