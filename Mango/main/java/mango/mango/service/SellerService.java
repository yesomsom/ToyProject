package mango.mango.service;

import mango.mango.model.SellerVO;

public interface SellerService {
   public String getSellerId(String sellerId) throws Exception;   
   public int register(SellerVO sVO) throws Exception;
   public SellerVO login(SellerVO sVO) throws Exception;

	/* public void memberUpdate(MemberVO mVO) throws Exception; */
	/* public void memberDelete(MemberVO mVO) throws Exception; */
}