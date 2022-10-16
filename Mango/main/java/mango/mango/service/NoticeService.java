package mango.mango.service;

import java.util.List;

import mango.mango.model.NoticeVO;

public interface NoticeService {
	//공지사항 리스트	
	List<NoticeVO> selectAllNoticeList(NoticeVO nVO) throws Exception;

	Integer selectAllNoticeCount(NoticeVO nVO) throws Exception;

	public NoticeVO selectNoticeList(int noti_id) throws Exception;
}
