package mango.mangoAdmin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.AdminURLValue;
import mango.mango.model.GoodsVO;
import mango.mango.model.MemberVO;
import mango.mango.model.NoticeVO;
import mango.mango.model.OrdersPayVO;
import mango.mango.service.GoodsService;
import mango.mango.service.MemberService;
import mango.mango.service.NoticeService;
import mango.mango.service.OrdersPayService;

@Controller
@RequestMapping(value = AdminURLValue.ADMIN)
public class AdminController {

	@Resource(name = "GoodsService")
	private GoodsService GoodsService;

	@Resource(name = "MemberService")
	private MemberService MemberService;

	@Resource(name = "noticeService")
	private NoticeService noticeService;

	@Resource(name = "OrdersPayService")
	private OrdersPayService OrdersPayService;

	@RequestMapping(value = "/memberList")
	public String memberList(ModelMap model, String id, MemberVO mVO,
			@RequestParam(required = false, defaultValue = "id") String searchType,
			@RequestParam(required = false) String keyword) throws Exception {

		MemberVO memberVO = new MemberVO();
		memberVO.setSearchType(searchType);
		memberVO.setKeyword(keyword);

		List<MemberVO> memberList = MemberService.getMember(mVO);
		model.addAttribute("memberList", memberList);

		return "/admin/page/memberList";
	}

	@RequestMapping(value = "/sellerList")
	public String sellerList(ModelMap model, String id, MemberVO mVO,
			@RequestParam(required = false, defaultValue = "id") String searchType,
			@RequestParam(required = false) String keyword) throws Exception {

		MemberVO memberVO = new MemberVO();
		memberVO.setSearchType(searchType);
		memberVO.setKeyword(keyword);

		List<MemberVO> sellerList = MemberService.getSeller(mVO);
		model.addAttribute("sellerList", sellerList);

		return "/admin/page/sellerList";
	}

	// 공지사항 등록
	@RequestMapping(value = "/addNotice")
	public String addNotice(ModelMap model, Criteria cri, NoticeVO nVO) throws Exception {

		return "/admin/page/addNotice";
	}

	@RequestMapping(value = "/addNotice/insert", method = RequestMethod.POST)
	public String insertNotice(ModelMap model, Criteria cri, NoticeVO nVO) throws Exception {

		noticeService.insertNotice(nVO);

		return "/admin/page/addNotice";
	}

	// 공지사항 리스트
	@RequestMapping(value = "/adminNoticeList")
	public String adminNoticeList(ModelMap model, Criteria cri, NoticeVO nVO,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

		int noticeTotal = noticeService.selectAllNoticeCount(nVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, noticeTotal);
		if (pageNum == null) {
			pageNum = "1";
		}
		nVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		nVO.setAmount(cri.getAmount());

		List<NoticeVO> notice = noticeService.selectAllNoticeList(nVO);
		model.addAttribute("notice", notice);
		model.put("pageMaker", pageMaker);

		return "/admin/page/adminNoticeList";
	}

	@RequestMapping(value = "/goodsManagement")
	public String goodsManagement(ModelMap model, Criteria cri, GoodsVO gVO,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

		int goodsTotal = GoodsService.selectAllGoodsCount(gVO);

		if (pageNum == null) {
			pageNum = "1";
		}

		if (pageNum != null) {
			cri.setPageNum(Integer.parseInt(pageNum));
		}

		PageMakerDTO pageMaker = new PageMakerDTO(cri, goodsTotal);
		gVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		gVO.setAmount(cri.getAmount());

		List<GoodsVO> goodsList = GoodsService.selectOneGoods(gVO);

		model.addAttribute("goodsList", goodsList);

		model.put("pageMaker", pageMaker);

		return "/admin/page/goodsManagement";
	}

	// 매출 내역
	@RequestMapping(value = "/salesManagement")
	public String countOders(ModelMap model, Criteria cri, OrdersPayVO opVO, HttpSession session,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

		int ordersPayTotal = OrdersPayService.allOrdersPayCount(opVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, ordersPayTotal);
		if (pageNum == null) {
			pageNum = "1";
		}
		opVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		opVO.setAmount(cri.getAmount());

		List<OrdersPayVO> ordersPayList = OrdersPayService.allOrdersPayList(opVO);
		model.addAttribute("ordersPayList", ordersPayList);
		model.put("pageMaker", pageMaker);

		return "/admin/page/salesManagement";
	}

	// 상품 리스트 삭제
	@RequestMapping(value = "/goodsManagement/delete")
	public String deletegoodsManagement(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {

		GoodsService.deleteGoods(gVO.getGoodsId());

		return "redirect:/admin/goodsManagement.do";
	}

	// 상품 리스트 수정
	@RequestMapping(value = "/goodsManagement/update")
	public String updategoodsManagement(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {

		GoodsService.adminModifyGoods(gVO);

		return "redirect:/admin/goodsManagement.do";
	}

}
