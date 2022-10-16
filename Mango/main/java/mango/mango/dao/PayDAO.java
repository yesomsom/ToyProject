package mango.mango.dao;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.PayVO;

@Repository("PayDAO")
public class PayDAO extends ComAbstractDAO {

	public int payTicket(PayVO pVO) throws Exception {
		return insert("Pay.Pay", pVO);
	}
}