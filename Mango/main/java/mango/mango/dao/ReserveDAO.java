package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.ReserveVO;

@Repository("ReserveDAO")
public class ReserveDAO extends ComAbstractDAO {

	public int Reserve(ReserveVO rVO) throws Exception {
		return insert("Reserve.Reserve", rVO);
	}

	public List<ReserveVO> getReserveList(ReserveVO rVO) throws Exception {
		return selectList("Reserve.getReserveList", rVO);
	}

	public List<ReserveVO> selectMapping(ReserveVO rVO) throws Exception {
		return selectList("Reserve.selectMapping", rVO);
	}
}