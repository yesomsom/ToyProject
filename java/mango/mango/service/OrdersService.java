package mango.mango.service;

import java.util.List;

import mango.mango.model.OrdersVO;
import mango.mango.model.QaVO;

public interface OrdersService {
   List<OrdersVO> selectAllOrdersList(OrdersVO oVO) throws Exception;
   void insertOrders(OrdersVO oVO) throws Exception;
   OrdersVO selectOrders(OrdersVO oVO) throws Exception;
   Integer selectAllOrdersCount(OrdersVO oVO) throws Exception;
}