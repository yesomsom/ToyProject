package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.NoticeVO;

@Repository("NoticeDAO")
public class NoticeDAO extends ComAbstractDAO {
	// 공지 조회
	public List<NoticeVO> selectAllNoticeList(NoticeVO nVO) throws Exception {
		return selectList("NoticeMapper.selectAllNoticeList", nVO);
	}

	public Integer selectAllNoticeCount(NoticeVO nVO) throws Exception {
		return selectOne("NoticeMapper.selectAllNoticeCount", nVO);
	}

	public NoticeVO selectNoticeList(int noti_id) throws Exception{
		return selectOne("NoticeMapper.selectNoticeList", noti_id);
	}
	
	public int insertNotice(NoticeVO nVO) throws Exception{
		return insert("NoticeMapper.insertNotice", nVO);
	}
	
}
