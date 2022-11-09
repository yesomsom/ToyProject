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
	
}
