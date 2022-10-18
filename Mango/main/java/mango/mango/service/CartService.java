package mango.mango.service;

import java.util.List;

import mango.mango.model.CartVO;

public interface CartService {
   List<CartVO> selectAllCartList(CartVO cVO) throws Exception;
   void insertCart(CartVO cVO) throws Exception;
   int modifyCount(CartVO cVO) throws Exception;
   int modifyYN(CartVO cVO) throws Exception;
   int deleteCart(int cartId) throws Exception;
}