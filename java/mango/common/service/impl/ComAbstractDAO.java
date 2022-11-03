package mango.common.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

public abstract class ComAbstractDAO extends EgovAbstractMapper{

	@Resource(name="egov.sqlSession")
	public void setSqlSessionFactory(SqlSessionFactory sqlSession) {
		super.setSqlSessionFactory(sqlSession);
	}
	

}
