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
	private String unregisterYn;
	private String searchType;
	private String keyword;
	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )

}