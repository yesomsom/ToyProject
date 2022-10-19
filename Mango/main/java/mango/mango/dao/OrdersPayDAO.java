package mango.mango.dao;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.OrdersPayVO;

@Repository("OrdersPayDAO")
public class OrdersPayDAO extends ComAbstractDAO {
   public int insertOrdersPay(OrdersPayVO opVO) throws Exception {
      return insert("ordersPayMapper.insertOrdersPay", opVO);
   }
}