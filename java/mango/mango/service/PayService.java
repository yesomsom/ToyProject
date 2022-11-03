package mango.mango.service;

import java.util.List;

import mango.mango.model.PayVO;

public interface PayService {
   public int payTicket(PayVO pVO) throws Exception;
   
   public List<PayVO> selectAllPayList(PayVO pVO) throws Exception;
}