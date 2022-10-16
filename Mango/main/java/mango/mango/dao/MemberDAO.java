package mango.mango.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.MemberVO;

@Repository("MemberDAO")
public class MemberDAO extends ComAbstractDAO {
	@Inject
	SqlSession sql;

	// 기본 설정 - dao
	public String getId(String id) throws Exception {
		return selectOne("MemberMapper.getId", id);
	}

	public int register(MemberVO mVO) throws Exception {
		return insert("MemberMapper.register", mVO);
	}

	public MemberVO login(MemberVO mVO) throws Exception {
		return selectOne("MemberMapper.login", mVO);
	}

	public void memberUpdate(MemberVO mVO) throws Exception {
		sql.update("MemberMapper.memberUpdate", mVO);
	}

	public void memberDelete(MemberVO mVO) throws Exception {
		sql.delete("MemberMapper.memberDelete", mVO);
	}
}