package mango.mango.service;

import java.util.List;

import mango.mango.model.AskVO;

public interface AskService {
   //1:1 문의 등록
   public int insertAsk(AskVO aVO) throws Exception;

   //1:1 문의 리스트
      List<AskVO> selectAskList(AskVO aVO) throws Exception;

      Integer selectAllAskCount(AskVO aVO) throws Exception;
      
      List<AskVO> selectAllAskList(AskVO aVO) throws Exception;
}