package mango.mango.service.Impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.ReserveDAO;
import mango.mango.model.ReserveVO;
import mango.mango.service.ReserveService;

@Service("ReserveService")
public class ReserveServiceImpl extends EgovAbstractServiceImpl implements ReserveService {

   @Resource(name = "ReserveDAO")
   private ReserveDAO reserveDAO;

   @Override
   public int Reserve(ReserveVO rVO) throws Exception {

      return reserveDAO.Reserve(rVO);
   }

   @Override
   public List<ReserveVO> getReserve(ReserveVO rVO) throws Exception {
      System.out.println("");
      List<ReserveVO> list = new ArrayList<ReserveVO>();
      list = reserveDAO.getReserveList(rVO);
   
      return list;
   }

   @Override
   public List<ReserveVO> selectMapping(ReserveVO rVO) throws Exception{
      
      return reserveDAO.selectMapping(rVO);
   }

}