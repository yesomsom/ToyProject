package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrdersVO {
	private String ordersId;
	private String id;
	private String goodsId;
	private String name;
	private String creDate;
	private String sellerName;
	private String totalPrice;	
	private String goodsName;
	private String realPath;
	private String goodsCategory;	
	private String cartId;
	private int cno;
	private int deliveryPrice;
	private int goodsPrice;	
	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )
}