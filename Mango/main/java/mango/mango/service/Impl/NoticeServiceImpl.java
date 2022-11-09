package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.NoticeDAO;
import mango.mango.model.NoticeVO;
import mango.mango.service.NoticeService;

@Service("NoticeService")
public class NoticeServiceImpl extends EgovAbstractServiceImpl implements NoticeService {
	@Resource(name = "NoticeDAO")
	private NoticeDAO NoticeDAO;

	// 공지사항 리스트
	@Override
	public List<NoticeVO> selectAllNoticeList(NoticeVO nVO) throws Exception {
		return NoticeDAO.selectAllNoticeList(nVO);
	} 

	@Override
	public Integer selectAllNoticeCount(NoticeVO nVO) throws Exception {
		return NoticeDAO.selectAllNoticeCount(nVO);
	}

	@Override
	public NoticeVO selectNoticeList(int noti_id) throws Exception {
		return NoticeDAO.selectNoticeList(noti_id);
	}
	
	@Override
	public int insertNotice(NoticeVO nVO) throws Exception{
		return NoticeDAO.insertNotice(nVO);
	}
}
