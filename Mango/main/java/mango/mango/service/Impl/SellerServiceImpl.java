package mango.mango.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.SellerDAO;
import mango.mango.model.SellerVO;
import mango.mango.service.SellerService;

@Service("SellerService")
public class SellerServiceImpl extends EgovAbstractServiceImpl implements SellerService {

	@Resource(name = "SellerDAO")
	private SellerDAO sellerDAO;

	@Override
	public String getSellerId(String sellerId) throws Exception {
		return sellerDAO.getId(sellerId);
	}

	@Override
	public int register(SellerVO sVO) throws Exception {

		return sellerDAO.register(sVO);
	}

	@Override
	public SellerVO login(SellerVO sVO) throws Exception {

		return sellerDAO.login(sVO);
	}

	/*
	 * @Override public void memberUpdate(MemberVO mVO) throws Exception {
	 * sellerDAO.memberUpdate(mVO); }
	 */

	/*
	 * @Override public void memberDelete(MemberVO mVO) throws Exception {
	 * sellerDAO.memberDelete(mVO); }
	 */

}