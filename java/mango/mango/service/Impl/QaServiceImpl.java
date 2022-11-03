package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.QaDAO;
import mango.mango.model.QaVO;
import mango.mango.service.QaService;

@Service("qaService")
public class QaServiceImpl extends EgovAbstractServiceImpl implements QaService {
	@Resource(name = "qaDAO")
	private QaDAO qaDAO;
	// Q&A 리스트
	@Override
	public List<QaVO> selectAllQaList(QaVO qVO) throws Exception {		
		return qaDAO.selectAllQaList(qVO);
	}

	@Override
	public Integer selectAllQaCount(QaVO qVO) throws Exception {
		return qaDAO.selectAllQaCount(qVO);
	}
	
	@Override
	public QaVO selectQaList(int qa_id) throws Exception {
		return qaDAO.selectQaList(qa_id);
	}

}
