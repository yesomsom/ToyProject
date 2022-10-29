package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.CartVO;
import mango.mango.model.OrdersVO;

@Repository("OrdersDAO")
public class OrdersDAO extends ComAbstractDAO {
   public List<OrdersVO> selectAllOrdersList(OrdersVO oVO) throws Exception {
      return selectList("ordersMapper.selectAllOrdersList", oVO);
   }
   
   // 주문 등록
   public void insertOrders(OrdersVO oVO) throws Exception {
      insert("ordersMapper.insertOrders", oVO);
   }
   
   // 주문 선택
   public OrdersVO selectOrders(OrdersVO oVO) throws Exception {
      return selectOne("ordersMapper.selectOrders", oVO);
   }
   
   // 주문 수정
   public int modifyOrders(OrdersVO oVO) throws Exception {
      return update("ordersMapper.modifyOrders", oVO);
   }
      
}