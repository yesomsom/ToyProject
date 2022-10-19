package mango.mango.dao;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.SellerVO;

@Repository("SellerDAO")
public class SellerDAO extends ComAbstractDAO {
	
	
	public String getId(String sellerId) throws Exception {
		return selectOne("SellerMapper.getSellerId", sellerId);
	}

	public int register(SellerVO sVO) throws Exception {
		return insert("SellerMapper.register", sVO);
	}

	public SellerVO login(SellerVO sVO) throws Exception {
		return selectOne("SellerMapper.login", sVO);
	}

	/*
	 * public void sellerUpdate(SellerVO sVO) throws Exception {
	 * sql.update("SellerMapper.sellerUpdate", sVO); }
	 */
	/*
	 * public void sellerDelete(SellerVO sVO) throws Exception {
	 * sql.delete("SellerMapper.sellerDelete", sVO); }
	 */
}