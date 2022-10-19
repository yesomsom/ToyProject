package mango.mangoSeller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mango.common.EgovWebUtil;
import mango.common.service.Criteria;
import mango.common.util.SellerURLValue;
import mango.mango.controller.InfoController;
import mango.mango.model.GoodsVO;
import mango.mango.model.MemberVO;
import mango.mango.service.GoodsService;
import mango.mango.service.MemberService;

@Controller
@RequestMapping(value = SellerURLValue.MANGO_SELLER)
public class SellerController {
	private static Logger logger = LoggerFactory.getLogger(InfoController.class);
	
	@Resource(name = "MemberService")
	private MemberService MemberService;

	@Resource(name = "GoodsService")
	private GoodsService GoodsService;

	// 상품등록 페이지
	@RequestMapping(value = "/uploadGoods")
	public String uploadGoods(ModelMap model, Criteria cri) throws Exception {

		return "/seller/page/uploadGoods";
	}

	// 상품등록 페이지
	@RequestMapping(value = "/uploadGoods/insert", method = RequestMethod.POST)
	@ResponseBody
	public String insertuploadGoods(@ModelAttribute("GoodsVO") GoodsVO gVO, ModelMap model, Criteria cri, HttpServletRequest request) throws Exception {
		
		gVO.setGno(EgovWebUtil.getUUID());
		GoodsService.insertGoods(gVO);

		return "/seller/page/uploadGoods";

	}

	// 상품 리스트 페이지
	@RequestMapping(value = "/goodsList")
	public String goodsList(ModelMap model, Criteria cri) throws Exception {
		return "/seller/page/goodsList";
	}

	// 매출내역 페이지
	@RequestMapping(value = "/salesDetails")
	public String salesDetails(ModelMap model, Criteria cri) throws Exception {
		return "/seller/page/salesDetails";
	}

	// 사업주 회원가입 페이지
	@RequestMapping(value = "/sellerRegister")
	public String sellerRegister(ModelMap model, Criteria cri) throws Exception {
		return "seller/page/sellerRegister";
	}

	@RequestMapping(value = "/sellerRegister/insert", method = RequestMethod.POST)
	public String sellerRegisterinsert(ModelMap model, Criteria cri, MemberVO mVO, String id) throws Exception {
		MemberService.sellerRegister(mVO);
		String getId = MemberService.getId(id);
		model.addAttribute("type", "register");

		if (id != null) {
			model.addAttribute("isSuccess", true);
		} else {
			model.addAttribute("isSuccess", false);
			return "/user/page/process";
		}
		return "/user/page/process";
	}
}
