package mango.board.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	
	private String boardId;		// 게시판 id - uuid사용
	private String boardType;	// 게시판 타입 - 1 : 일반게시판, 2 : 포토게시판, 3 : faq
	private String title;		// 제목
	private String contents;	// 내용
	private String writer;		// 작성자
	private String writerId;	// 작성자 아이디
	private String num;			// 순서
	private String notice;		// 공지사항 여부
	private String secret;		// 비밀글 여부
	private String regDate;		// 등록일
	
	/* 페이징 */
	private int amount;			// 한 페이지 당 보여질 게시물 갯수
	private int skip;			// 스킵 할 게시물 수( (pageNum-1) * amount )
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public String getSecret() {
		return secret;
	}
	public void setSecret(String secret) {
		this.secret = secret;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
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
