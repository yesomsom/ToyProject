package mango.mango.service;

import mango.mango.model.MemberVO;

public interface MemberService {
   public String getId(String id) throws Exception;   
   public int register(MemberVO mVO) throws Exception;
   public MemberVO login(MemberVO mVO) throws Exception;
   public void updateMember(MemberVO mVO) throws Exception;
   public void deleteMember(String id) throws Exception;
}