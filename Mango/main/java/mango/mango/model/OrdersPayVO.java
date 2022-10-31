package mango.mango.model;

public class OrdersPayVO {
   private String id;
   private String ordersId;
   private String ordersPayDate;
   private String ordersPayMoney;
   private int opno;
	private String receiverName;
	private String receiverPhone;
	private int receiverZipno;
	private String receiverAddress;
	
	
   
   
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