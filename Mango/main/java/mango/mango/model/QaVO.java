package mango.mango.model;

import java.util.Date;

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

	
	public int getQaId() {
		return qaId;
	}

	public void setQaId(int qaId) {
		this.qaId = qaId;
	}

	public String getQaCat() {
		return qaCat;
	}

	public void setQaCat(String qaCat) {
		this.qaCat = qaCat;
	}

	public String getQaSubject() {
		return qaSubject;
	}

	public void setQaSubject(String qaSubject) {
		this.qaSubject = qaSubject;
	}

	public String getQaContent() {
		return qaContent;
	}

	public void setQaContent(String qaContent) {
		this.qaContent = qaContent;
	}

	public String getQaFileName() {
		return qaFileName;
	}

	public void setQaFileName(String qaFileName) {
		this.qaFileName = qaFileName;
	}

	public Date getQaDate() {
		return qaDate;
	}

	public void setQaDate(Date qaDate) {
		this.qaDate = qaDate;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getSkip() {
		return skip;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

}
