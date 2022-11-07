package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.CartDAO;
import mango.mango.model.CartVO;
import mango.mango.service.CartService;

@Service("CartService")
public class CartServiceImpl extends EgovAbstractServiceImpl implements CartService {

   @Resource(name="CartDAO")
   private CartDAO cartDAO;

   @Override
   public List<CartVO> selectAllCartList(CartVO cVO) throws Exception {
      return cartDAO.selectAllCartList(cVO);
   }

   @Override
   public void insertCart(CartVO cVO) throws Exception {
      cartDAO.insertCart(cVO);
   }
   
   @Override
   public void modifyCount(CartVO cVO) throws Exception {
      cartDAO.modifyCount(cVO);
   }
   
   //카트 단일 상품 삭제
   @Override
   public void deleteCart(String cartId) throws Exception {
      cartDAO.deleteCart(cartId);
   }
   
   //카트 전체 상품 삭제 
   @Override
	public void deleteAllCart(String id) throws Exception {
	   cartDAO.deleteAllCart(id);		
	}

   @Override
   public String getCartId(String cartId) throws Exception{
	   return cartDAO.getCartId(cartId);
   }
   
}