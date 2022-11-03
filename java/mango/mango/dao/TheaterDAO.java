package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.TheaterVO;

@Repository("TheaterDAO")
public class TheaterDAO extends ComAbstractDAO {
	public List<TheaterVO> selectAllTheaterList(TheaterVO tVO) throws Exception {
		return selectList("Theater.selectAllTheaterList", tVO);
	}

	public List<TheaterVO> selectCGVTheaterList(TheaterVO tVO) throws Exception {
		return selectList("Theater.selectCGVTheaterList", tVO);
	}

	public List<TheaterVO> selectLotteTheaterList(TheaterVO tVO) throws Exception {
		return selectList("Theater.selectLotteTheaterList", tVO);
	}

	public List<TheaterVO> selectMegaTheaterList(TheaterVO tVO) throws Exception {
		return selectList("Theater.selectMegaTheaterList", tVO);
	}

	public List<TheaterVO> selectCGVList(TheaterVO tVO) throws Exception {
		return selectList("Theater.selectCGVList", tVO);
	}
}