package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrdersVO {
   private int ordersId;
   private String id;
   private String goodsAllName;
   private String name;
   private String receiverName;
   private String receiverPhone;
   private int receiverZipno;
   private String receiverAddress;
   private String payment;
   private String creDate;
   private int totalPrice;   

   public int getOrdersId() {
      return ordersId;
   }
   
   public void setOrdersId(int ordersId) {
      this.ordersId = ordersId;
   }
   
   public String getId() {
         return id;
   }

   public void setId(String id) {
      this.id = id;
   }
   
   public String getGoodsAllName() {
      return goodsAllName;
   }
   
   public void setGoodsAllName(String goodsAllName) {
      this.goodsAllName = goodsAllName;
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