package mango.mango.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GoodsFileVO {

	private String id;
	private String goodsId;
	private String originName;
	private String extension;
	private String realPath;
	private Long fileSize;
	private String regDate;

}
