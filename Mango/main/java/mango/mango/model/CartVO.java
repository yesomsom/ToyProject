package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {
	private String cartId;	
	private String goodsId;	
	private String id;	
	private String sellerName;
	private String goodsImg;
	private String goodsName;
	private String goodsCategory;
	private String realPath;
	private int cartState;
	private int goodsPrice;
	private int goodsQty;
	private int deliveryPrice;

}