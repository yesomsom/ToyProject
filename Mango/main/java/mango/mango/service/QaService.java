package mango.mango.service;

import java.util.List;

import mango.mango.model.QaVO;

public interface QaService {
	// q&a 리스트
	List<QaVO> selectAllQaList(QaVO qVO) throws Exception;

	Integer selectAllQaCount(QaVO qVO) throws Exception;

	public QaVO selectQaList(int qa_id) throws Exception;
}
