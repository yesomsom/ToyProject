package mango.mango.dao;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.AskVO;

@Repository("askDAO")
public class AskDAO extends ComAbstractDAO {
// 1:1문의 등록
	public int insertAsk(AskVO aVO) throws Exception {
		return insert("AskMapper.insertAsk", aVO);
	}

}
