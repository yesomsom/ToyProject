package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.AskDAO;
import mango.mango.model.AskVO;
import mango.mango.model.CartVO;
import mango.mango.service.AskService;

@Service("AskService")
public class AskServiceImpl extends EgovAbstractServiceImpl implements AskService {
   @Resource(name = "askDAO")
   private AskDAO askDAO;
   
   @Override
   public int insertAsk(AskVO aVO) throws Exception {
      return askDAO.insertAsk(aVO);
   }

   @Override
   public List<AskVO> selectAskList(AskVO aVO) throws Exception {            
      return askDAO.selectAskList(aVO);
   }

   @Override
   public Integer selectAllAskCount(AskVO aVO) throws Exception {
      return askDAO.selectAllAskCount(aVO);
   }

	@Override
	public List<AskVO> selectAllAskList(AskVO aVO) throws Exception {
	      return askDAO.selectAllAskList(aVO);
	}
	
	
	// 관리자 섹션
	//미답변 문의내역 확인
	@Override
	public List<AskVO> selectAdminAllAskList(AskVO aVO) throws Exception {
		return askDAO.selectAdminAllAskList(aVO);
	}
	
	// 미답변 문의 내역 토탈
	@Override
	public Integer selectAdminAllAskCount(AskVO aVO) throws Exception {	
		return askDAO.selectAdminAllAskCount(aVO);
	}

	@Override
	public void updateRelated(AskVO aVO) throws Exception {
		askDAO.updateRelated(aVO);
	}
	
	@Override
	public List<AskVO> selectAdminAllList(AskVO aVO) throws Exception {
		return askDAO.selectAdminAllList(aVO);
	}
	
}