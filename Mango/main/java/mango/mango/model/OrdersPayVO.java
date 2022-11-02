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
	private String receiverName;
	private String receiverPhone;	
	private String receiverAddress;
	private String deliveryState;
	private int trackingNumber;
	private int receiverZipno;	
	private int opno;	
	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )
}