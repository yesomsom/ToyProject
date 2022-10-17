package mango.mango.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.OrdersPayDAO;
import mango.mango.model.OrdersPayVO;
import mango.mango.service.OrdersPayService;

@Service("OrdersPayService")
public class OrdersPayServiceImpl extends EgovAbstractServiceImpl implements OrdersPayService{
	@Resource(name = "OrdersPayDAO")
	private OrdersPayDAO ordersPayDAO;

	@Override
	public int insertOrdersPay(OrdersPayVO opVO) throws Exception {
		return ordersPayDAO.insertOrdersPay(opVO);
	}
}
