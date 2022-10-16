package mango.mango.model;

import java.util.Date;


public class NoticeVO {
	private int notiId;		//공지글 고유 번호
//	private int noti_num;		//공지 글 번호
//	private String id;		//작성자 id(관리자)
	private String notiSubject;	//글 제목
	private String notiContent;		//글 내용
	private String notiFileName;		//첨부파일 이름
	private Date notiDate;		//작성일	
	
	public NoticeVO() {
	}	
	/* 페이징 */
	private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
	private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )

	public int getNotiId() {
		return notiId;
	}
	public void setNotiId(int notiId) {
		this.notiId = notiId;
	}
	public String getNotiSubject() {
		return notiSubject;
	}
	public void setNotiSubject(String notiSubject) {
		this.notiSubject = notiSubject;
	}
	public String getNotiContent() {
		return notiContent;
	}
	public void setNotiContent(String notiContent) {
		this.notiContent = notiContent;
	}
	public String getNotiFileName() {
		return notiFileName;
	}
	public void setNotiFileName(String notiFileName) {
		this.notiFileName = notiFileName;
	}
	public Date getNotiDate() {
		return notiDate;
	}
	public void setNotiDate(Date notiDate) {
		this.notiDate = notiDate;
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
