package mango.mango.service;

import mango.mango.model.PayVO;

public interface PayService {
   public int payTicket(PayVO pVO) throws Exception;
}