package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.QaVO;

@Repository("qaDAO")
public class QaDAO extends ComAbstractDAO {
	// 공지 조회
	public List<QaVO> selectAllQaList(QaVO qVO) throws Exception {
		return selectList("QaMapper.selectAllQaList", qVO);
	}

	public Integer selectAllQaCount(QaVO qVO) throws Exception {
		return selectOne("QaMapper.selectAllQaCount", qVO);
	}

	public QaVO selectQaList(int qa_id) {
		return selectOne("QaMapper.selectQaList", qa_id);
	}

}
