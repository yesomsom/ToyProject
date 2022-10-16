package mango.mango.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AskVO {
	private int ask_id;		//글 고유 id
	private int ask_num;		//글 번호
	private int ask_related; 	// 답변
//	private String id; 	//회원id
	private String ask_name;	 //질문자 이름
	private String ask_email; 	//답변받을 이메일
	private String ask_hp; 	//답변받을 폰번호
	private int ask_cat;	 //질문 카테고리
	private int ask_catDetail;	 //질문 카테고리
	private int ask_type; 	//질문 종류
	private int ask_typeDetail; 	//질문 종류 상세
	private String ask_subject; 	//글 제목
	private String ask_content; 	//글내용
	private int ask_satus;  //답변 상태
	private String ask_fileName;  //파일 이름
	private Date ask_date;  //작성일자
	
	public int getAsk_id() {
		return ask_id;
	}

	public void setAsk_id(int ask_id) {
		this.ask_id = ask_id;
	}

	public int getAsk_num() {
		return ask_num;
	}

	public void setAsk_num(int ask_num) {
		this.ask_num = ask_num;
	}

	public int getAsk_related() {
		return ask_related;
	}

	public void setAsk_related(int ask_related) {
		this.ask_related = ask_related;
	}

	public String getAsk_name() {
		return ask_name;
	}

	public void setAsk_name(String ask_name) {
		this.ask_name = ask_name;
	}

	public String getAsk_email() {
		return ask_email;
	}

	public void setAsk_email(String ask_email) {
		this.ask_email = ask_email;
	}

	public String getAsk_hp() {
		return ask_hp;
	}

	public void setAsk_hp(String ask_hp) {
		this.ask_hp = ask_hp;
	}

	public int getAsk_cat() {
		return ask_cat;
	}

	public void setAsk_cat(int ask_cat) {
		this.ask_cat = ask_cat;
	}

	public int getAsk_catDetail() {
		return ask_catDetail;
	}

	public void setAsk_catDetail(int ask_catDetail) {
		this.ask_catDetail = ask_catDetail;
	}

	public int getAsk_type() {
		return ask_type;
	}

	public void setAsk_type(int ask_type) {
		this.ask_type = ask_type;
	}

	public int getAsk_typeDetail() {
		return ask_typeDetail;
	}

	public void setAsk_typeDetail(int ask_typeDetail) {
		this.ask_typeDetail = ask_typeDetail;
	}

	public String getAsk_subject() {
		return ask_subject;
	}

	public void setAsk_subject(String ask_subject) {
		this.ask_subject = ask_subject;
	}

	public String getAsk_content() {
		return ask_content;
	}

	public void setAsk_content(String ask_content) {
		this.ask_content = ask_content;
	}

	public int getAsk_satus() {
		return ask_satus;
	}

	public void setAsk_satus(int ask_satus) {
		this.ask_satus = ask_satus;
	}

	public String getAsk_fileName() {
		return ask_fileName;
	}

	public void setAsk_fileName(String ask_fileName) {
		this.ask_fileName = ask_fileName;
	}

	public Date getAsk_date() {
		return ask_date;
	}

	public void setAsk_date(Date ask_date) {
		this.ask_date = ask_date;
	}

	//기본 생성자
	public AskVO() {
	}

	
}
