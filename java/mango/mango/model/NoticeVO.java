package mango.mango.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class NoticeVO {
	private int notiId; //공지글 고유 번호
	//	private int noti_num;		//공지 글 번호
	//	private String id;		//작성자 id(관리자)
	private String notiSubject; //글 제목
	private String notiContent; //글 내용
	private String notiFileName; //첨부파일 이름
	private Date notiDate; //작성일	

	public NoticeVO() {
	}

	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )

}
