package mango.mango.service;

import java.util.List;

import mango.mango.model.ReserveVO;

public interface ReserveService {
   public int Reserve(ReserveVO rVO) throws Exception;

   public List<ReserveVO> getReserve(ReserveVO rVO) throws Exception;
   
   public List<ReserveVO> selectMapping(ReserveVO rVO) throws Exception;
}