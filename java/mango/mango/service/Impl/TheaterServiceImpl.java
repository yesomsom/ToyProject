package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.TheaterDAO;
import mango.mango.model.TheaterVO;
import mango.mango.service.TheaterService;

@Service("TheaterService")
public class TheaterServiceImpl extends EgovAbstractServiceImpl implements TheaterService {
	@Resource(name = "TheaterDAO")
	private TheaterDAO theaterDAO;

	@Override
	public List<TheaterVO> selectAllTheaterList(TheaterVO tVO) throws Exception {
		return theaterDAO.selectAllTheaterList(tVO);
	}

	@Override
	public List<TheaterVO> selectCGVTheaterList(TheaterVO tVO) throws Exception {
		return theaterDAO.selectCGVTheaterList(tVO);
	}

	@Override
	public List<TheaterVO> selectLotteTheaterList(TheaterVO tVO) throws Exception {
		return theaterDAO.selectAllTheaterList(tVO);
	}

	@Override
	public List<TheaterVO> selectMegaTheaterList(TheaterVO tVO) throws Exception {
		return theaterDAO.selectMegaTheaterList(tVO);
	}

	@Override
	public List<TheaterVO> selectCGVList(TheaterVO tVO) throws Exception {
		return theaterDAO.selectCGVList(tVO);
	}
}