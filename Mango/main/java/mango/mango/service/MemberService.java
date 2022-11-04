package mango.mango.service;

import java.util.List;

import mango.mango.model.MemberVO;

public interface MemberService {
   public String getId(String id) throws Exception;   
   public int register(MemberVO mVO) throws Exception;
   public int sellerRegister(MemberVO mVO) throws Exception;
   public MemberVO login(MemberVO mVO) throws Exception;
   public void updateMember(MemberVO mVO) throws Exception;
   public void deleteMember(String id) throws Exception;
   public List<MemberVO> getMember(MemberVO mVO) throws Exception;
   public List<MemberVO> getSeller(MemberVO mVO) throws Exception;
}