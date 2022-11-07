package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mango.common.EgovWebUtil;
import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.CartVO;
import mango.mango.model.MemberVO;
import mango.mango.service.CartService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class CartController {
   @Resource(name = "CartService")
   private CartService cartService;

   @RequestMapping(value = "/cart")
   public String cart(ModelMap model, Criteria cri, CartVO cVO, MemberVO mVO, HttpSession session) throws Exception {
      MemberVO login = (MemberVO) session.getAttribute("login");
      model.addAttribute("type", "cart");
      if (login != null) {
         cVO.setId(login.getId());
         List<CartVO> cartList = cartService.selectAllCartList(cVO);
         model.addAttribute("cartList", cartList);
      } else {
         model.addAttribute("isSuccess", false);
         return "/user/page/process";
      }
      return "/user/page/cart";
   }

   @RequestMapping(value = "/cart/insert")
   public String insertCart(ModelMap model, Criteria cri, CartVO cVO) throws Exception {
		EgovWebUtil uuid = new EgovWebUtil();
		String UUID = uuid.getUUID();
		cVO.setCartId(UUID);
	  
      cartService.insertCart(cVO);
      List<CartVO> cartList = cartService.selectAllCartList(cVO);
      model.addAttribute("cartList", cartList);

      return "redirect:/page/cart.do";
   }

   @RequestMapping(value = "/cart/update")
   public String updateCart(ModelMap model, Criteria cri, CartVO cVO) throws Exception {
      cartService.modifyCount(cVO);

      List<CartVO> cartList = cartService.selectAllCartList(cVO);
      model.addAttribute("cartList", cartList);
      return "redirect:/page/cart.do";
   }
   
	//카트 단일 상품 삭제
   @RequestMapping(value = "/cart/delete")
   public String deleteCart(ModelMap model, Criteria cri, CartVO cVO) throws Exception {
	   
      cartService.deleteCart(cVO.getCartId());

      return "redirect:/page/cart.do";
   }
   
   //카트 전체 상품 삭제
   @RequestMapping(value = "/cart/allDelete")
   public String deleteAllCart(ModelMap model, Criteria cri, String id) throws Exception {
	   
	   cartService.deleteAllCart(id);
	   
	   return "redirect:/page/cart.do";
   }
}