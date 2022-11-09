package mango.mangoAdmin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mango.common.util.AdminURLValue;
import mango.mango.model.AskVO;
import mango.mango.model.GoodsVO;
import mango.mango.model.MemberVO;
import mango.mango.model.NoticeVO;
import mango.mango.model.OrdersPayVO;
import mango.mango.service.AskService;
import mango.mango.service.GoodsService;
import mango.mango.service.NoticeService;
import mango.mango.service.OrdersPayService;

@Controller
@RequestMapping(value = AdminURLValue.ADMIN)
public class AdminMainController {
	
	@Resource(name = "AskService")
	private AskService AskService;
	
	@Resource(name = "NoticeService")
	private NoticeService NoticeService;
	
	@Resource(name = "GoodsService")
	private GoodsService GoodsService;
	
	@Resource(name = "OrdersPayService")
	private OrdersPayService OrdersPayService;

	@RequestMapping(value = "/main")
	public String main(ModelMap model, HttpSession session, NoticeVO nVO, OrdersPayVO opVO, GoodsVO gVO, AskVO aVO) throws Exception{
		 MemberVO login = (MemberVO) session.getAttribute("login");
	     		 
		 List<AskVO> askList = AskService.selectAdminAllList(aVO);
		 List<NoticeVO> noticeList = NoticeService.selectAllNoticeList(nVO);
		 List<GoodsVO> goodsList = GoodsService.selectAdminAllList(gVO);
		 List<OrdersPayVO> payList = OrdersPayService.adminAllPayList(opVO);
		 
		 model.addAttribute("askList", askList);
		 model.addAttribute("noticeList", noticeList);
		 model.addAttribute("goodsList", goodsList);
		 model.addAttribute("payList", payList);
		 
		 model.addAttribute("type", "adminLogin");
	      
	      if (login != null) {	    	  
	    	  return "/admin/main";	    	  
	      } else {
	         model.addAttribute("isSuccess", false);
	         return "/user/page/process";
	      }	      
	}	

}
