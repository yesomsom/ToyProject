package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.OrdersPayVO;

@Repository("OrdersPayDAO")
public class OrdersPayDAO extends ComAbstractDAO {
   
	// 리스트
	public List<OrdersPayVO> selectAllOrdersPayList(OrdersPayVO opVO) throws Exception {
		return selectList("ordersPayMapper.selectAllOrdersPayList", opVO);
	}
	   // 등록
	public int insertOrdersPay(OrdersPayVO opVO) throws Exception {
		return insert("ordersPayMapper.insertOrdersPay", opVO);
	}
}