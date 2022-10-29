package mango.mango.service;

import java.util.List;

import mango.mango.model.OrdersVO;

public interface OrdersService {
   List<OrdersVO> selectAllOrdersList(OrdersVO oVO) throws Exception;
   void insertOrders(OrdersVO oVO) throws Exception;
   OrdersVO selectOrders(OrdersVO oVO) throws Exception;
   int modifyOrders(OrdersVO oVO) throws Exception;
 
}