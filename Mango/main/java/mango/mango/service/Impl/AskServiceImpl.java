package mango.mango.service.Impl;

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

}
