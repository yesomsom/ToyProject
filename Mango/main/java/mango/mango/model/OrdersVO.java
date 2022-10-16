package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrdersVO {
   private int ordersId;
   private int goodsId;
   private int goodsQty;
   private int goodsPrice;
   private int deliveryPrice;
   private String id;
   private String goodsName;
   private String name;
   private String receiverName;
   private String receiverPhone;
   private int receiverZipno;
   private String receiverAddress;
   private String payment;
   private String creDate;
   private int totalPrice;

   public int getordersId() {
      return ordersId;
   }

   public void setordersId(int ordersId) {
      this.ordersId = ordersId;
   }

   public int getGoodsId() {
      return goodsId;
   }

   public void setGoodsId(int goodsId) {
      this.goodsId = goodsId;
   }

   public int getGoodsQty() {
      return goodsQty;
   }

   public void setGoodsQty(int goodsQty) {
      this.goodsQty = goodsQty;
   }

   public int getGoodsPrice() {
      return goodsPrice;
   }

   public void setGoodsPrice(int goodsPrice) {
      this.goodsPrice = goodsPrice;
   }

   public int getDeliveryPrice() {
      return deliveryPrice;
   }

   public void setDeliveryPrice(int deliveryPrice) {
      this.deliveryPrice = deliveryPrice;
   }

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getGoodsName() {
      return goodsName;
   }

   public void setGoodsName(String goodsName) {
      this.goodsName = goodsName;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getReceiverName() {
      return receiverName;
   }

   public void setReceiverName(String receiverName) {
      this.receiverName = receiverName;
   }

   public String getReceiverPhone() {
      return receiverPhone;
   }

   public void setReceiverPhone(String receiverPhone) {
      this.receiverPhone = receiverPhone;
   }
   
   public int getReceiverZipno() {
		return receiverZipno;
	}
	
	public void setReceiverZipno(int receiverZipno) {
		this.receiverZipno = receiverZipno;
	}

	public String getReceiverAddress() {
      return receiverAddress;
   }

   public void setReceiverAddress(String receiverAddress) {
      this.receiverAddress = receiverAddress;
   }

   public String getPayment() {
      return payment;
   }

   public void setPayment(String payment) {
      this.payment = payment;
   }

   public String getCreDate() {
      return creDate;
   }

   public void setCreDate(String creDate) {
      this.creDate = creDate;
   }

   public int getTotalPrice() {
      return totalPrice;
   }

   public void setTotalPrice(int totalPrice) {
      this.totalPrice = totalPrice;
   }
   
}