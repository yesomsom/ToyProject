package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {
   private int cartId;
   private String goodsId;
   private int goodsPrice;
   private String id;
   private int goodsQty;
   private int deliveryPrice;
   private String sellerName;
   private String goodsImg;
   private String goodsName;
   private String orderYN;

   public int getCartId() {
      return cartId;
   }

   public void setCartId(int cartId) {
      this.cartId = cartId;
   }

   public String getGoodsId() {
      return goodsId;
   }

   public void setGoodsId(String goodsId) {
      this.goodsId = goodsId;
   }

   public int getGoodsPrice() {
      return goodsPrice;
   }

   public void setGoodsPrice(int goodsPrice) {
      this.goodsPrice = goodsPrice;
   }

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public int getGoodsQty() {
      return goodsQty;
   }

   public void setGoodsQty(int goodsQty) {
      this.goodsQty = goodsQty;
   }

   public int getDeliveryPrice() {
      return deliveryPrice;
   }

   public void setDeliveryPrice(int deliveryPrice) {
      this.deliveryPrice = deliveryPrice;
   }

   public String getSellerName() {
      return sellerName;
   }

   public void setSellerName(String sellerName) {
      this.sellerName = sellerName;
   }

   public String getGoodsImg() {
      return goodsImg;
   }

   public void setGoodsImg(String goodsImg) {
      this.goodsImg = goodsImg;
   }

   public String getGoodsName() {
      return goodsName;
   }

   public void setGoodsName(String goodsName) {
      this.goodsName = goodsName;
   }

	public String getOrderYN() {
		return orderYN;
	}
	
	public void setOrderYN(String orderYN) {
		this.orderYN = orderYN;
	}

}