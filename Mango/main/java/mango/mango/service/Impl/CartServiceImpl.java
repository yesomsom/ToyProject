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
   public int modifyCount(CartVO cVO) throws Exception {
      return cartDAO.modifyCount(cVO);
   }

   @Override
   public int modifyYN(CartVO cVO) throws Exception {
      return cartDAO.modifyYN(cVO);
   }

   @Override
   public int deleteCart(int cartId) throws Exception {
      return cartDAO.deleteCart(cartId);
   }
   
   
}