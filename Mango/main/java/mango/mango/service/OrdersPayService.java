package mango.mango.service;

import mango.mango.model.OrdersPayVO;

public interface OrdersPayService {
   int insertOrdersPay(OrdersPayVO opVO) throws Exception;
}