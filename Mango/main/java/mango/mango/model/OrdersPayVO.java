package mango.mango.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class OrdersPayVO {
	private String id;
	private String ordersId;
	private Date ordersPayDate;
	private String ordersPayMoney;
	private int opno;
	private String receiverName;
	private String receiverPhone;
	private int receiverZipno;
	private String receiverAddress;
	private String deliveryState;
	
}