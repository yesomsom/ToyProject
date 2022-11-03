package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {
	private String cartId;
	private String goodsId;
	private int goodsPrice;
	private String id;
	private int goodsQty;
	private int deliveryPrice;
	private String sellerName;
	private String goodsImg;
	private String goodsName;
	private String goodsCategory;
	private String realPath;

}