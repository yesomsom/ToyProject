package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.CartVO;
import mango.mango.model.MemberVO;
import mango.mango.model.OrdersPayVO;
import mango.mango.model.OrdersVO;
import mango.mango.service.CartService;
import mango.mango.service.OrdersPayService;
import mango.mango.service.OrdersService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class OrdersController {

   @Resource(name = "OrdersService")
   private OrdersService ordersService;
   @Resource(name = "OrdersPayService")
   private OrdersPayService ordersPayService;
   @Resource(name = "CartService")
   private CartService cartService;

   @RequestMapping(value = "/orders")
   public String orders(ModelMap model, Criteria cri, OrdersVO oVO, MemberVO mVO, CartVO cVO, HttpSession session)
         throws Exception {

      MemberVO login = (MemberVO) session.getAttribute("login");
      /*
       * OrdersVO ordersVO = ordersService.selectOrders(oVO);
       * model.addAttribute("orders", ordersVO); System.out.println("ordersVO " +
       * ordersVO);
       */

      /*
       * cartService.modifyYN(cVO); System.out.println("cVO " + cVO);
       */
      model.addAttribute("type", "Orders");
      if (login != null) {
         oVO.setId(login.getId());
         List<OrdersVO> ordersList = ordersService.selectAllOrdersList(oVO);
         model.addAttribute("ordersList", ordersList);
         System.out.println("ordersList " + ordersList);
      } else {
         model.addAttribute("isSuccess", false);
         return "/user/page/process";
      }
      return "/user/page/orders";
   }

   @RequestMapping(value = "/orders/insert", method = RequestMethod.POST)
   public String insertOrders(ModelMap model, Criteria cri, OrdersVO oVO, MemberVO mVO, HttpSession session)
         throws Exception {

      MemberVO login = (MemberVO) session.getAttribute("login");
      model.addAttribute("type", "orders");
      if (login != null) {
         mVO.setId(login.getId());
         ordersService.insertOrders(oVO);
         System.out.println("oVO " + oVO);

      } else {
         model.addAttribute("isSuccess", false);
         return "/user/page/process";
      }
      return "redirect:/page/orders.do";
   }

   @RequestMapping(value = "/orders/update")
   public String updateOrders(ModelMap model, Criteria cri, OrdersVO oVO) throws Exception {
      ordersService.modifyOrders(oVO);

      return "redirect:/page/orders.do";
   }

   @RequestMapping(value = "/ordersKakao")
   public String OrdersKakao(ModelMap model, Criteria cri, OrdersVO oVO, OrdersPayVO opVO, HttpSession session)
         throws Exception {
      return "/user/page/ordersKakao";
   }

   @RequestMapping(value = "/ordersKakao/insert", method = RequestMethod.POST)
   public String insertOrdersKakao(ModelMap model, Criteria cri, OrdersVO oVO, OrdersPayVO opVO, HttpSession session)
         throws Exception {
      MemberVO login = (MemberVO) session.getAttribute("login");
      opVO.setId(login.getId());

      int isSuccess = ordersPayService.insertOrdersPay(opVO);
      model.addAttribute("ordersPay", opVO);

      if (isSuccess != 1) {
         System.out.println("결제오류");
         return "redirect:/main.do";
      }
      return "/user/page/ordersKakao";
   }

   @RequestMapping(value = "/ordersPayKakao")
   public String ordersPayKakao(ModelMap model, Criteria cri, OrdersVO oVO, OrdersPayVO opVO, HttpSession session)
         throws Exception {
      MemberVO login = (MemberVO) session.getAttribute("login");
      opVO.setId(login.getId());

      return "redirect:/page/myOrdersPage.do";
   }

   @RequestMapping(value = "/myOrdersPage")
   public String myOrdersPage(ModelMap model, Criteria cri, OrdersVO oVO, HttpSession session) throws Exception {

      MemberVO login = (MemberVO) session.getAttribute("login");
      model.addAttribute("type", "myOrdersPage");
      if (login != null) {
  		oVO.setId(login.getId());
  		List<OrdersVO> ordersList = ordersService.selectAllOrdersList(oVO);
  		
  		if (ordersList != null) {
  			for (OrdersVO oListvo : ordersList) {
  				System.out.println(oListvo.toString());
  				model.addAttribute("ordersList", ordersList);
  				System.out.println("ordersList" + ordersList);
  			}
  		} else {
  			System.out.println("오류발생");
  		}
      } else {
         model.addAttribute("isSuccess", false);
         return "/user/page/process";
      }

      return "/user/page/myOrdersPage";
   }
}