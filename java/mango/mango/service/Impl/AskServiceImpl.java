package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.AskDAO;
import mango.mango.model.AskVO;
import mango.mango.service.AskService;

@Service("askService")
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

   
}