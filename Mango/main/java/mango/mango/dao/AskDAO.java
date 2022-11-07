package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.AskVO;

@Repository("askDAO")
public class AskDAO extends ComAbstractDAO {
	// 1:1문의 등록
	public int insertAsk(AskVO aVO) throws Exception {
		return insert("AskMapper.insertAsk", aVO);
	}

	// 1:1문의 조회
	public List<AskVO> selectAskList(AskVO aVO) throws Exception {
		return selectList("AskMapper.selectAskList", aVO);
	}

	// ask total
	public Integer selectAllAskCount(AskVO aVO) throws Exception {
		return selectOne("AskMapper.selectAllAskCount", aVO);
	}

	// 마이페이지에서 최신순 문의 출력
	public List<AskVO> selectAllAskList(AskVO aVO) throws Exception {
		return selectList("AskMapper.selectAllAskList", aVO);
	}
	
	//관리자 섹션
	//미답변 문의내역 확인
	public List<AskVO> selectAdminAllAskList(AskVO aVO) throws Exception {
		return selectList("AskMapper.selectAdminAllAskList", aVO);
	}

	// 미답변 문의 내역 토탈
	public Integer selectAdminAllAskCount(AskVO aVO) throws Exception {
		return selectOne("AskMapper.selectAdminAllAskCount", aVO);
	}
}