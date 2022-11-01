package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.OrdersDAO;
import mango.mango.model.OrdersVO;
import mango.mango.service.OrdersService;

@Service("OrdersService")
public class OrdersServiceImpl extends EgovAbstractServiceImpl implements OrdersService {
   @Resource(name = "OrdersDAO")
   private OrdersDAO ordersDAO;

   @Override
   public List<OrdersVO> selectAllOrdersList(OrdersVO oVO) throws Exception {
      return ordersDAO.selectAllOrdersList(oVO);
   }

   @Override
   public void insertOrders(OrdersVO oVO) throws Exception {
      ordersDAO.insertOrders(oVO);
   }

   @Override
   public OrdersVO selectOrders(OrdersVO oVO) throws Exception {
      return ordersDAO.selectOrders(oVO);
   }
 }