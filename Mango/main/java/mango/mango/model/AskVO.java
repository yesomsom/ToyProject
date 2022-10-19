package mango.mango.model;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AskVO {
   private int askId;      //글 번호
   private int askRelated;    // 답변
   private String id;    //회원id
   private String askName;    //질문자 이름
   private String askEmail;    //답변받을 이메일
   private String askPhone;    //답변받을 폰번호
   private String askCat;    //질문 카테고리
   private String askCatDetail;    //질문 카테고리
   private int askType;    //질문 종류
   private int askTypeDetail;    //질문 종류 상세
   private String askSubject;    //글 제목
   private String askContent;    //글내용
   private int askStatus;  //답변 상태
   private String askFileName;  //파일 이름
   private Date askDate;  //작성일자
   
   //기본 생성자
   public AskVO() {
   }
   
   /* 페이징 */
   private int amount = 8; // 한 페이지 당 보여질 게시물 갯수
   private int skip; // 스킵 할 게시물 수( (pageNum-1) * amount )

public int getAskId() {
	return askId;
}
public void setAskId(int askId) {
	this.askId = askId;
}
public int getAskRelated() {
	return askRelated;
}
public void setAskRelated(int askRelated) {
	this.askRelated = askRelated;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getAskName() {
	return askName;
}
public void setAskName(String askName) {
	this.askName = askName;
}
public String getAskEmail() {
	return askEmail;
}
public void setAskEmail(String askEmail) {
	this.askEmail = askEmail;
}
public String getAskPhone() {
	return askPhone;
}
public void setAskPhone(String askPhone) {
	this.askPhone = askPhone;
}
public String getAskCat() {
	return askCat;
}
public void setAskCat(String askCat) {
	this.askCat = askCat;
}
public String getAskCatDetail() {
	return askCatDetail;
}
public void setAskCatDetail(String askCatDetail) {
	this.askCatDetail = askCatDetail;
}
public int getAskType() {
	return askType;
}
public void setAskType(int askType) {
	this.askType = askType;
}
public int getAskTypeDetail() {
	return askTypeDetail;
}
public void setAskTypeDetail(int askTypeDetail) {
	this.askTypeDetail = askTypeDetail;
}
public String getAskSubject() {
	return askSubject;
}
public void setAskSubject(String askSubject) {
	this.askSubject = askSubject;
}
public String getAskContent() {
	return askContent;
}
public void setAskContent(String askContent) {
	this.askContent = askContent;
}
public int getAskStatus() {
	return askStatus;
}
public void setAskStatus(int askStatus) {
	this.askStatus = askStatus;
}
public String getAskFileName() {
	return askFileName;
}
public void setAskFileName(String askFileName) {
	this.askFileName = askFileName;
}
public Date getAskDate() {
	return askDate;
}
public void setAskDate(Date askDate) {
	this.askDate = askDate;
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