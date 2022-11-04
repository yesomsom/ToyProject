package mango.mango.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class GoodsVO {
	private String goodsId;
	private String goodsCategory;
	private String goodsName;
	private String goodsState;
	private String sellerName;
	private String goodsDetail;
	private int goodsPrice;
	private int goodsStock;
	private int deliveryPrice;	
	private Date regDate;
	private String gno;
	private String id;
	private String realPath;

	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )
	private String keyword; //검색 키워드

} 