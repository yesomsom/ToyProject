package mango.mango.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AskVO {
	private int askId; //글 번호
	private String askRelated; // 답변
	private String id; //회원id
	private String askName; //질문자 이름
	private String askEmail; //답변받을 이메일
	private String askPhone; //답변받을 폰번호
	private String askCat; //질문 카테고리
	private String askCatDetail; //질문 카테고리
	private String askType; //질문 종류
	private String askTypeDetail; //질문 종류 상세
	private String askSubject; //글 제목
	private String askContent; //글내용
	private String askState; //답변 상태
	//private String askFileName; //파일 이름
	private Date askDate; //작성일자

	//기본 생성자
	public AskVO() {
	}

	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )

}