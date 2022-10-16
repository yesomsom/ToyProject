package mango.mango.model;

import java.io.Serializable;

public class PayVO implements Serializable {
   private String id;
   private int reserveSequence;
   private String payDate;
   private String payMoney;
   
   public PayVO() {
      // TODO Auto-generated constructor stub
   }
   
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public int getReserveSequence() {
      return reserveSequence;
   }
   public void setReserveSequence(int reserveSequence) {
      this.reserveSequence = reserveSequence;
   }
   public String getPayDate() {
      return payDate;
   }
   public void setPayDate(String payDate) {
      this.payDate = payDate;
   }
   public String getPayMoney() {
      return payMoney;
   }
   public void setPayMoney(String payMoney) {
      this.payMoney = payMoney;
   }

   public PayVO(String id, int reserveSequence, String payDate, String payMoney) {
      super();
      this.id = id;
      this.reserveSequence = reserveSequence;
      this.payDate = payDate;
      this.payMoney = payMoney;
   }

   @Override
   public String toString() {
      return "PayVO [id=" + id + ", reserveSequence=" + reserveSequence + ", payDate=" + payDate + ", payMoney="
            + payMoney + "]";
   }
   
}