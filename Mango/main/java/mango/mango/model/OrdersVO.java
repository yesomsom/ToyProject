package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrdersVO {
	private String ordersId;
	private String id;
	private String name;
	private String creDate;
	private String sellerName;
	private String totalPrice;
	private int deliveryPrice;
	private int goodsPrice;
	private String goodsName;
	private int goodsStock;
	private String realPath;
	private String goodsCategory;
	private String goodsId;
	private String cartId;
	private int cno;

}