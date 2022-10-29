package mango.mango.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mango.common.EgovWebUtil;
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
	public String orders(ModelMap model, Criteria cri, OrdersVO oVO, MemberVO mVO, CartVO cVO, HttpSession session) throws Exception {

		MemberVO login = (MemberVO) session.getAttribute("login");

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
	   @ResponseBody
	   public String insertOrders(ModelMap model, Criteria cri, MemberVO mVO, @RequestParam(value = "cartIdList") String cartIdList, @RequestParam(value = "sellerNameList") String sellerNameList, @RequestParam(value = "totalPriceList") String totalPriceList, @RequestParam(value = "memberId",required = false) String memberId, @RequestParam(value = "memberName",required = false) String memberName,  HttpSession session) throws Exception {	
		   EgovWebUtil uuid = new EgovWebUtil();
		   String UUID = uuid.getUUID();
		   
		   
		  String[] cartId = cartIdList.split(",");
		  String[] sellerName = sellerNameList.split(",");
		  String[] totalPrice= totalPriceList.split(",");
		  List<OrdersVO> cartList = new ArrayList<OrdersVO>();
		  
		  		  
	      MemberVO login = (MemberVO) session.getAttribute("login");	      
	      model.addAttribute("type", "orders");
	      if (login != null) {
	         mVO.setId(login.getId());
	         for(int i = 0; i < cartId.length; i++) {
				  if(!cartId[i].equals("")) {
					  OrdersVO oVO = new OrdersVO();
					  oVO.setCartId(cartId[i]);
					  oVO.setSellerName(sellerName[i]);
					  oVO.setTotalPrice(totalPrice[i]);
					  oVO.setId(memberId);
					  oVO.setName(memberName);				  
							  
					  cartList.add(oVO);
					  oVO.setOrdersId(UUID);
					  ordersService.insertOrders(oVO);
				  }
			  }
	         
	      } else {
	         model.addAttribute("isSuccess", false);
	         return "/user/page/process";
	      }
	      return "success";
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
		EgovWebUtil uuid = new EgovWebUtil();
		String UUID = uuid.getUUID();

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