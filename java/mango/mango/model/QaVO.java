package mango.mango.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QaVO {

	private int qaId; // qa글 고유 번호
	//	private int qa_num;			//qa글 번호
	private String qaCat; // qa 카테고리
	private String qaSubject; // 글 제목
	private String qaContent; // 글 내용
	private String qaFileName; // 첨부 파일 이름
	private Date qaDate; // 작성일

	public QaVO() {
	}

	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )

}
