package mango.mangoSeller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.SellerURLValue;
import mango.mango.model.GoodsVO;
import mango.mango.model.MemberVO;
import mango.mango.model.OrdersPayVO;
import mango.mango.service.GoodsService;
import mango.mango.service.MemberService;
import mango.mango.service.OrdersPayService;

@Controller
@RequestMapping(value=SellerURLValue.SELLER)
public class SellerMainController {
	
	@Resource(name="MemberService")
	private MemberService MemberService;
	
	@Resource(name="GoodsService")
	private GoodsService GoodsService;
	
	@Resource(name="OrdersPayService")
	private OrdersPayService OrdersPayService;
	
	@RequestMapping(value="main")
	public String seller(ModelMap model, Criteria cri, GoodsVO gVO, OrdersPayVO opVO, HttpSession session,
			@RequestParam(value = "pageNumCri", required = false) String pageNumCri) throws Exception{
		MemberVO login = (MemberVO) session.getAttribute("login");
		gVO.setId(login.getId());
		opVO.setId(login.getId());
		
		int goodsTotal = GoodsService.selectSellerGoodsCount(gVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, goodsTotal);
		if (pageNumCri == null) {
			pageNumCri = "1";
		}
		gVO.setSkip((Integer.parseInt(pageNumCri) - 1) * cri.getAmount());
		gVO.setAmount(cri.getAmount());
				
	    List<OrdersPayVO> ordersPayList = OrdersPayService.selectAllOrdersPayList(opVO);
	    
		List<GoodsVO> goodsList = GoodsService.selectSellerGoodsList(gVO);
		
		model.addAttribute("ordersPayList", ordersPayList);
		model.addAttribute("goodsList", goodsList);
		model.put("pageMaker", pageMaker);
		
		
		return "/seller/main";
	}
}
