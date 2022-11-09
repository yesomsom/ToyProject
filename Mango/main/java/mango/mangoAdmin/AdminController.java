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
import mango.mango.model.AskVO;
import mango.mango.model.GoodsVO;
import mango.mango.model.MemberVO;
import mango.mango.model.NoticeVO;
import mango.mango.model.OrdersPayVO;
import mango.mango.service.AskService;
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

	@Resource(name = "NoticeService")
	private NoticeService NoticeService;

	@Resource(name = "OrdersPayService")
	private OrdersPayService OrdersPayService;

	@Resource(name = "AskService")
	private AskService AskService;

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

		NoticeService.insertNotice(nVO);

		return "redirect:/admin/adminNoticeList.do";
	}

	// 공지사항 리스트
	@RequestMapping(value = "/adminNoticeList")
	public String adminNoticeList(ModelMap model, Criteria cri, NoticeVO nVO,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

		int noticeTotal = NoticeService.selectAllNoticeCount(nVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, noticeTotal);
		if (pageNum == null) {
			pageNum = "1";
		}
		nVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		nVO.setAmount(cri.getAmount());

		List<NoticeVO> notice = NoticeService.selectAllNoticeList(nVO);
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

	// 관리자 매출 내역
	@RequestMapping(value = "/salesManagement")
	public String countOders(ModelMap model, Criteria cri, OrdersPayVO opVO, HttpSession session,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

		int ordersPayTotal = OrdersPayService.adminAllOrdersPayCount(opVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, ordersPayTotal);
		if (pageNum == null) {
			pageNum = "1";
		}
		opVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		opVO.setAmount(cri.getAmount());

		List<OrdersPayVO> ordersPayList = OrdersPayService.adminAllOrdersPayList(opVO);
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

	// 미답변 문의내역 조회
	@RequestMapping(value = "/unAnswered")
	public String unAnswered(ModelMap model, Criteria cri, AskVO aVO,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

		int unAnsweredTotal = AskService.selectAdminAllAskCount(aVO);

		PageMakerDTO pageMaker = new PageMakerDTO(cri, unAnsweredTotal);
		if (pageNum == null) {
			pageNum = "1";
		}
		aVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		aVO.setAmount(cri.getAmount());

		List<AskVO> unAnsweredList = AskService.selectAdminAllAskList(aVO);

		model.addAttribute("unAnsweredList", unAnsweredList);
		model.put("pageMaker", pageMaker);

		return "/admin/page/unAnswered";
	}
	
	// 답변 등록
	@RequestMapping(value = "/unAnswered/update")
	public String updateRelated(ModelMap model, Criteria cri, AskVO aVO) throws Exception {
		AskService.updateRelated(aVO);

		return "redirect:/admin/unAnswered.do";
	}

	// 승인대기 상품내역 조회
	@RequestMapping(value = "/notApproved")
	public String notApproved(ModelMap model, Criteria cri, GoodsVO gVO,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

		int approvedTotal = GoodsService.selectNotApprovedCount(gVO);

		PageMakerDTO pageMaker = new PageMakerDTO(cri, approvedTotal);

		if (pageNum == null) {
			pageNum = "1";
		}
		gVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		gVO.setAmount(cri.getAmount());

		List<GoodsVO> approvedList = GoodsService.selectNotApprovedList(gVO);
		
		for(int i = 0; i < approvedList.size(); i++) {
			String[] imageList = approvedList.get(i).getImageMulti().split(",");
			String html = "";
			for(int j = 0; j < imageList.length; j++) {
				html += "<img src=\""+imageList[j]+"\" style=\"width: 30px; height: 30px; margin-right:3px;\"/>";
			}
			approvedList.get(i).setImageHtml(html);
		}

		model.addAttribute("approvedList", approvedList);
		
		model.put("pageMaker", pageMaker);

		return "/admin/page/notApproved";
	}
	
	// 승인 변경
	@RequestMapping(value = "/notApproved/update")
	public String updateApproved(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {
		
		GoodsService.updateApproved(gVO);
		
		return "redirect:/admin/notApproved.do";
	}

}
