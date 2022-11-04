package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.OrdersPayDAO;
import mango.mango.model.MemberVO;
import mango.mango.model.OrdersPayVO;
import mango.mango.model.OrdersVO;
import mango.mango.service.OrdersPayService;

@Service("OrdersPayService")
public class OrdersPayServiceImpl extends EgovAbstractServiceImpl implements OrdersPayService {
	@Resource(name = "OrdersPayDAO")
	private OrdersPayDAO ordersPayDAO;

	// 리스트
	@Override
	public List<OrdersPayVO> selectAllOrdersPayList(OrdersPayVO opVO) throws Exception {
		return ordersPayDAO.selectAllOrdersPayList(opVO);
	}

	// 등록
	@Override
	public int insertOrdersPay(OrdersPayVO opVO) throws Exception {
		return ordersPayDAO.insertOrdersPay(opVO);
	}

	@Override
	public Integer selectAllOrdersPayCount(OrdersPayVO opVO) throws Exception {
		return ordersPayDAO.selectAllOrdersPayCount(opVO);
	}

	@Override
	public int updateDeliveryState(OrdersPayVO opVO) throws Exception {
		return ordersPayDAO.updateDeliveryState(opVO);
	}

	@Override
	public int updateTracking(OrdersPayVO opVO) throws Exception {
		return ordersPayDAO.updateTracking(opVO);
	}

	// 관리자 매출 내역 리스트
	@Override
	public List<OrdersPayVO> allOrdersPayList(OrdersPayVO opVO) throws Exception {
		return ordersPayDAO.allOrdersPayList(opVO);
	}

	// 관리자 매출 내역 총개수
	@Override
	public Integer allOrdersPayCount(OrdersPayVO opVO) throws Exception {
		return ordersPayDAO.allOrdersPayCount(opVO);
	}
}