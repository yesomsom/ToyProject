package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.MemberVO;
import mango.mango.model.OrdersPayVO;
import mango.mango.model.OrdersVO;

@Repository("OrdersPayDAO")
public class OrdersPayDAO extends ComAbstractDAO {

	// 판매자 별 매출 리스트
	public List<OrdersPayVO> selectAllOrdersPayList(OrdersPayVO opVO) throws Exception {
		return selectList("ordersPayMapper.selectAllOrdersPayList", opVO);
	}

	// 등록
	public int insertOrdersPay(OrdersPayVO opVO) throws Exception {
		return insert("ordersPayMapper.insertOrdersPay", opVO);
	}

	// 결제 총 개수
	public Integer selectAllOrdersPayCount(OrdersPayVO opVO) throws Exception {
		return selectOne("ordersPayMapper.selectAllOrdersPayCount", opVO);
	}

	public int updateDeliveryState(OrdersPayVO opVO) throws Exception {
		return update("ordersPayMapper.updateDeliveryState", opVO);
	}

	public int updateTracking(OrdersPayVO opVO) throws Exception {
		return update("ordersPayMapper.updateTracking", opVO);
	}

	// 관리자 매출 내역 리스트
	public List<OrdersPayVO> adminAllOrdersPayList(OrdersPayVO opVO) throws Exception {
		return selectList("ordersPayMapper.adminAllOrdersPayList", opVO);
	}

	// 관리자 매출 내역 총개수
	public Integer allOrdersPayCount(OrdersPayVO opVO) throws Exception {
		return selectOne("ordersPayMapper.adminAllOrdersPayCount", opVO);
	}
	
	public List<OrdersPayVO> adminAllPayList(OrdersPayVO opVO) throws Exception {
		return selectList("ordersPayMapper.adminAllPayList", opVO);
	}
}