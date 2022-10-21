package mango.mangoSeller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mango.common.EgovWebUtil;
import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.SHA256;
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
	public String insertuploadGoods(ModelMap model, Criteria cri, GoodsVO gVO, HttpServletRequest request, HttpSession session) throws Exception {
		gVO.setGno(EgovWebUtil.getUUID());
		GoodsService.insertGoods(gVO);

		return "/seller/main";

	}

	// 상품 리스트 페이지
	@RequestMapping(value = "/goodsList")
	public String goodsList(ModelMap model, Criteria cri, GoodsVO gVO, HttpSession session, @RequestParam(value = "pageNumCri", required = false) String pageNumCri) throws Exception {

		MemberVO login = (MemberVO) session.getAttribute("login");
		gVO.setId(login.getId());

		int goodsTotal = GoodsService.selectSellerGoodsCount(gVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, goodsTotal);
		if (pageNumCri == null) {
			pageNumCri = "1";
		}
		gVO.setSkip((Integer.parseInt(pageNumCri) - 1) * cri.getAmount());
		gVO.setAmount(cri.getAmount());

		List<GoodsVO> goodsList = GoodsService.selectSellerGoodsList(gVO);
		model.addAttribute("goodsList", goodsList);
		model.put("pageMaker", pageMaker);
		
		return "/seller/page/goodsList";
	}
	
	// 상품 리스트 삭제
	@RequestMapping(value = "/goodsList/delete")
	public String deleteGoodsList(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {

		GoodsService.deleteGoods(gVO.getGoodsId());
		
		return "redirect:/page/goodsList.do";
	}
	
	// 상품 리스트 수정
	@RequestMapping(value = "/goodsList/update")
	public String updateGoodsList(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {

		GoodsService.modifyGoods(gVO);
		
		return "redirect:/page/goodsList.do";
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
		SHA256 sha256 = new SHA256(); //암호화 유틸 불러오기
		
		String encryPassword = sha256.encrypt(mVO.getPassword()); // 비밀번호 암호화
		mVO.setPassword(encryPassword);	//암호화 된 비밀번호 넣기
		
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
