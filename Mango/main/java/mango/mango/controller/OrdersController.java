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
import mango.mango.model.OrdersVO;
import mango.mango.service.OrdersService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class OrdersController {

	@Resource(name = "OrdersService")
	private OrdersService ordersService;

	@RequestMapping(value = "/orders")
	public String orders(ModelMap model, Criteria cri, OrdersVO oVO, MemberVO mVO, HttpSession session)
			throws Exception {

		MemberVO login = (MemberVO) session.getAttribute("login");
		/*
		 * OrdersVO ordersVO = ordersService.selectOrders(oVO);
		 * model.addAttribute("orders", ordersVO); System.out.println("ordersVO " +
		 * ordersVO);
		 */
		List<OrdersVO> ordersList = ordersService.selectAllOrdersList(oVO);
		model.addAttribute("ordersList", ordersList);
		System.out.println("ordersList " + ordersList);
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

		return "/user/page/orders";
	}
}