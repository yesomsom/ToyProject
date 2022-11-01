package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class MemberVO {
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
	private String ownerName;
	private String businessNumber;
	private String sellerName;
	private String logoImg;

}