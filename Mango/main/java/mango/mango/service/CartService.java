package mango.mango.service;

import java.util.List;

import mango.mango.model.CartVO;

public interface CartService {
   List<CartVO> selectAllCartList(CartVO cVO) throws Exception;
   void insertCart(CartVO cVO) throws Exception;
   void modifyCount(CartVO cVO) throws Exception;   
   void deleteCart(String cartId) throws Exception;
   public String getCartId(String cartId) throws Exception;
   void deleteAllCart(String id) throws Exception;
}