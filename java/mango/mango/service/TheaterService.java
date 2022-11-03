package mango.mango.service;

import java.util.List;

import mango.mango.model.TheaterVO;

public interface TheaterService {
   List<TheaterVO> selectAllTheaterList(TheaterVO tVO) throws Exception;
   
   List<TheaterVO> selectCGVTheaterList(TheaterVO tVO) throws Exception;
   List<TheaterVO> selectLotteTheaterList(TheaterVO tVO) throws Exception;
   List<TheaterVO> selectMegaTheaterList(TheaterVO tVO) throws Exception;
   
   List<TheaterVO> selectCGVList(TheaterVO tVO) throws Exception;
}