package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.NoticeDAO;
import mango.mango.model.NoticeVO;
import mango.mango.service.NoticeService;

@Service("noticeService")
public class NoticeServiceImpl extends EgovAbstractServiceImpl implements NoticeService {
	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;

	// 공지사항 리스트
	@Override
	public List<NoticeVO> selectAllNoticeList(NoticeVO nVO) throws Exception {
		return noticeDAO.selectAllNoticeList(nVO);
	} 

	@Override
	public Integer selectAllNoticeCount(NoticeVO nVO) throws Exception {
		return noticeDAO.selectAllNoticeCount(nVO);
	}

	@Override
	public NoticeVO selectNoticeList(int noti_id) throws Exception {
		return noticeDAO.selectNoticeList(noti_id);
	}
	
	@Override
	public int insertNotice(NoticeVO nVO) throws Exception{
		return noticeDAO.insertNotice(nVO);
	}
}
