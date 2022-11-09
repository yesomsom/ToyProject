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

	@Resource(name = "AskService")
	private AskService AskService;

	@Resource(name = "NoticeService")
	private NoticeService NoticeService;

	@Resource(name = "qaService")
	private QaService qaService;

	private static Logger logger = LoggerFactory.getLogger(InfoController.class);

	@RequestMapping(value = "/serviceCenter")
	public String serviceCenter(ModelMap model, Criteria cri, NoticeVO nVO) throws Exception {

		List<NoticeVO> notice = NoticeService.selectAllNoticeList(nVO);
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
		
		String aType = aVO.getAskType();
		System.out.println(aVO);
		if(aType.equals("1")) {
			aVO.setAskType("서울"); 
		}
		if(aType.equals("2")) {
			aVO.setAskType("경기/인천"); 
		}
		if(aType.equals("3")) {
			aVO.setAskType("충청/대전"); 
		}
		if(aType.equals("4")) {
			aVO.setAskType("전라/광주"); 
		}
		if(aType.equals("5")) {
			aVO.setAskType("경북/대구"); 
		}
		if(aType.equals("6")) {
			aVO.setAskType("경남/부산/울산"); 
		}
		if(aType.equals("7")) {
			aVO.setAskType("강원"); 
		}
		if(aType.equals("8")) {
			aVO.setAskType("제주"); 
		}		
		if(aType.equals("") || aType.equals("0")) {
			aVO.setAskType("기타문의");
		}
		AskService.insertAsk(aVO);

		return "redirect:/page/myAskList.do";
	}

	// 1:1문의사항 조회
	@RequestMapping(value = "/myAskList")
	public String selectAskList(ModelMap model, Criteria cri, AskVO aVO, HttpSession session,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {
		MemberVO login = (MemberVO) session.getAttribute("login");
		aVO.setId(login.getId());
		int askListTotal = AskService.selectAllAskCount(aVO);

		if (pageNum == null) {
			pageNum = "1";
		}

		if (pageNum != null) {
			cri.setPageNum(Integer.parseInt(pageNum));
		}

		PageMakerDTO pageMaker = new PageMakerDTO(cri, askListTotal);

		aVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		aVO.setAmount(cri.getAmount());

		List<AskVO> askList = AskService.selectAskList(aVO);
		model.addAttribute("askList", askList);
		System.out.println("askList : " + askList);
		model.put("pageMaker", pageMaker);

		return "/user/page/myAskList";
	}

	// 공지사항 리스트
	@RequestMapping(value = "/noticeList")
	public String noticeList(ModelMap model, Criteria cri, NoticeVO nVO,
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

		return "/user/page/noticeList";
	}

	// q&a 리스트
	@RequestMapping(value = "/qaList")
	public String qaList(ModelMap model, Criteria cri, QaVO qVO,
			@RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

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

	@RequestMapping(value = "/tracking")
	public String tracking() {

		return "user/page/tracking";
	}
}