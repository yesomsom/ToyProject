package mango.mango.model;

public class OrdersPayVO {
	private String id;
	private int ordersId;
	private String ordersPayDate;
	private String ordersPayMoney;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getOrdersId() {
		return ordersId;
	}
	public void setOrdersId(int ordersId) {
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
