package mango.mango.service;

import mango.mango.model.AskVO;

public interface AskService {
	//1:1 문의 등록
	public int insertAsk(AskVO aVO) throws Exception;

}
