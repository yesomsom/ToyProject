package mango.mango.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.PayDAO;
import mango.mango.model.PayVO;
import mango.mango.service.PayService;

@Service("PayService")
public class PayServiceImpl extends EgovAbstractServiceImpl implements PayService {

   @Resource(name="PayDAO")
   private PayDAO payDAO;
   

   @Override
   public int payTicket(PayVO pVO) throws Exception{
      
      return payDAO.payTicket(pVO);
   }
   
   

}