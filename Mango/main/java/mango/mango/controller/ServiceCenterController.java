package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.UserURLValue;
import mango.mango.model.AskVO;
import mango.mango.model.MemberVO;
import mango.mango.model.NoticeVO;
import mango.mango.model.QaVO;
import mango.mango.service.AskService;
import mango.mango.service.MemberService;
import mango.mango.service.NoticeService;
import mango.mango.service.QaService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class ServiceCenterController {

	@Resource(name = "MemberService")
	private MemberService MemberService;

	@Resource(name = "askService")
	private AskService askService;

	@Resource(name = "noticeService")
	private NoticeService noticeService;

	@Resource(name = "qaService")
	private QaService qaService;

	private static Logger logger = LoggerFactory.getLogger(InfoController.class);

	@RequestMapping(value = "/serviceCenter")
	public String serviceCenter(ModelMap model, Criteria cri, NoticeVO nVO) throws Exception {

		List<NoticeVO> notice = noticeService.selectAllNoticeList(nVO);
		model.addAttribute("notice", notice);

		return "/user/page/serviceCenter";
	}

	// 1:1문의하기
	@RequestMapping(value = "/askForm")
	public String askForm(ModelMap model, Criteria cri, AskVO aVO) throws Exception {

		return "/user/page/askForm";
	}

	@RequestMapping(value = "/askForm/insert", method = RequestMethod.POST)
	public String insertAskForm(ModelMap model, Criteria cri, AskVO aVO) throws Exception {

		askService.insertAsk(aVO);

		return "redirect:/page/myAskList.do";
	}

	// 1:1문의사항 조회
	@RequestMapping(value = "/myAskList")
	public String selectAskList(ModelMap model, Criteria cri, AskVO aVO, HttpSession session, @RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {
		MemberVO login = (MemberVO) session.getAttribute("login");
		aVO.setId(login.getId());
		int askListTotal = askService.selectAllAskCount(aVO);
		
		if (pageNum == null) {
			pageNum = "1";
		}
		
		if(pageNum != null){
			cri.setPageNum(Integer.parseInt(pageNum));
		}
		
		PageMakerDTO pageMaker = new PageMakerDTO(cri, askListTotal);
				
		aVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		aVO.setAmount(cri.getAmount());

		List<AskVO> askList = askService.selectAskList(aVO);
		model.addAttribute("askList", askList);
		System.out.println("askList : " + askList);
		model.put("pageMaker", pageMaker);

		return "/user/page/myAskList";
	}

	// 공지사항 리스트
	@RequestMapping(value = "/noticeList")
	public String selectQaList(ModelMap model, Criteria cri, NoticeVO nVO, @RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

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

		return "/user/page/noticeList";
	}
	@RequestMapping(value = "/tracking")
	public String tracking() {
		
		return "user/page/tracking";
	}
	// q&a 리스트
	@RequestMapping(value = "/qaList")
	public String selectQaList(ModelMap model, Criteria cri, QaVO qVO, @RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

		int qaListTotal = qaService.selectAllQaCount(qVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, qaListTotal);
		if (pageNum == null) {
			pageNum = "1";
		}
		qVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		qVO.setAmount(cri.getAmount());

		List<QaVO> qaList = qaService.selectAllQaList(qVO);
		model.addAttribute("qaList", qaList);
		model.put("pageMaker", pageMaker);

		return "/user/page/qaList";
	}
}