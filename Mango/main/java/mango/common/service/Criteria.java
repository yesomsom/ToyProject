package mango.common.service;

import java.util.Arrays;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Criteria {
	
	private int pageNum;		// 현재 페이지
	private int amount;			// 한 페이지 당 보여질 게시물 갯수
	private int skip;			// 스킵 할 게시물 수( (pageNum-1) * amount )
	private String keyword;		// 검색어 키워드
	private String type;		// 검색 타입
	private String[] typeArr;	// 검색 타입 배열
	
	public Criteria() { // 기본 생성자 -> 기본 세팅 : pageNum = 1, amount = 10
		this(1,8);
		this.skip = 0;
	}
	
	public Criteria(int pageNum, int amount) { // 생성자 => 원하는 pageNum, 원하는 amount
		this.pageNum = pageNum;
		this.amount = amount;
		this.skip = (pageNum-1)*amount;
	}

	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", skip=" + skip + ", keyword=" + keyword
				+ ", type=" + type + ", typeArr=" + Arrays.toString(typeArr) + "]";
	}

	public int getPageNum() {
		// TODO Auto-generated method stub
		return this.pageNum;
	}

	public int getAmount() {
		// TODO Auto-generated method stub
		return this.amount;
	}
	
	
}