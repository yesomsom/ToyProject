package mango.mango.service;

import java.util.List;

import mango.mango.model.AskVO;
import mango.mango.model.CartVO;

public interface AskService {
	// 1:1 문의 등록
	public int insertAsk(AskVO aVO) throws Exception;

	// 1:1 문의 리스트
	List<AskVO> selectAskList(AskVO aVO) throws Exception;

	Integer selectAllAskCount(AskVO aVO) throws Exception;

	List<AskVO> selectAllAskList(AskVO aVO) throws Exception;

	// 관리자 섹션
	//미답변 문의내역 확인
	List<AskVO> selectAdminAllAskList(AskVO aVO) throws Exception;
	// 미답변 문의 내역 토탈
	Integer selectAdminAllAskCount(AskVO aVO) throws Exception;
	void updateRelated(AskVO aVO) throws Exception;
	List<AskVO> selectAdminAllList(AskVO aVO) throws Exception;
}