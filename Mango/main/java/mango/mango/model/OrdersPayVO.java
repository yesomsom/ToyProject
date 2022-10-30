package mango.mango.model;

public class OrdersPayVO {
   private String id;
   private String ordersId;
   private String ordersPayDate;
   private String ordersPayMoney;
   private int opno;
   
   
   public int getOpno() {
		return opno;
	}
	public void setOpno(int opno) {
		this.opno = opno;
	}
	public String getId() {
	      return id;
   }
   public void setId(String id) {
      this.id = id;
   }

   public String getOrdersId() {
		return ordersId;
	}
	public void setOrdersId(String ordersId) {
		this.ordersId = ordersId;
	}
	public String getOrdersPayDate() {
	      return ordersPayDate;
   }
   public void setOrdersPayDate(String ordersPayDate) {
      this.ordersPayDate = ordersPayDate;
   }
   public String getOrdersPayMoney() {
      return ordersPayMoney;
   }
   public void setOrdersPayMoney(String ordersPayMoney) {
      this.ordersPayMoney = ordersPayMoney;
   }
}