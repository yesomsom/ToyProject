package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.InfoDTO;
import mango.mango.model.MemberVO;
import mango.mango.model.PayVO;
import mango.mango.model.ReserveVO;
import mango.mango.model.TheaterVO;
import mango.mango.service.InfoService;
import mango.mango.service.PayService;
import mango.mango.service.ReserveService;
import mango.mango.service.TheaterService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class ReserveController {
	
	@Resource(name = "ReserveService")
	private ReserveService reserveService;
	@Resource(name = "PayService")
	private PayService payService;
	@Resource(name = "TheaterService")
	private TheaterService theaterService;
	@Resource(name = "InfoService")
	private InfoService infoService;	

	private static Logger logger = LoggerFactory.getLogger(InfoController.class);

	@RequestMapping(value = "/reserve")
	public String reserve(ModelMap model, Criteria cri) throws Exception {
		logger.info("reserve");

		TheaterVO tvo = new TheaterVO();

		List<TheaterVO> CGVTheaterList = theaterService.selectCGVTheaterList(tvo);
		model.addAttribute("CGVTheaterList", CGVTheaterList);

		List<TheaterVO> LotteTheaterList = theaterService.selectLotteTheaterList(tvo);
		model.addAttribute("LotteTheaterList", LotteTheaterList);

		List<TheaterVO> MegaTheaterList = theaterService.selectMegaTheaterList(tvo);
		model.addAttribute("MegaTheaterList", MegaTheaterList);

		InfoDTO infodto = new InfoDTO();
		List<InfoDTO> movieListKo = infoService.selectTheaterListKo(infodto);
		model.addAttribute("movieListKo", movieListKo);

		tvo.setGroupData("1");
		List<TheaterVO> theaterList = theaterService.selectCGVList(tvo);
		model.addAttribute("TheaterList", theaterList);

		return "/user/page/reserve";
	}

	@RequestMapping(value = "/reserve_ajax", produces = "application/text;charset=UTF-8")
	public ResponseEntity<String> theaterAjax(ModelMap model, Criteria cri, TheaterVO tVO) throws Exception {
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html;charset=UTF-8");

		List<TheaterVO> dataList = theaterService.selectCGVList(tVO);
		model.addAttribute("dataList", dataList);

		String gson = new Gson().toJson(dataList);

		return new ResponseEntity<String>(gson, responseHeaders, HttpStatus.CREATED);
	}

	@RequestMapping(value = "/seat")
	public String seat(ModelMap model, Criteria cri, ReserveVO rVO) throws Exception {

		System.out.println(rVO.toString());
		logger.info("seat");
		model.addAttribute("reserve", rVO);

		return "/user/page/seat";
	}

	@RequestMapping(value = "/kakao")
	public String Kakao(ModelMap model, Criteria cri, ReserveVO rVO, PayVO pVO, HttpSession session) throws Exception {

		return "/user/page/kakao";
	}

	@RequestMapping(value = "/kakao/insert", method = RequestMethod.POST)
	public String insertKakao(ModelMap model, Criteria cri, ReserveVO rVO, PayVO pVO, HttpSession session)
			throws Exception {
		System.out.println(rVO.toString());
		logger.info("Kakao");
		MemberVO login = (MemberVO) session.getAttribute("login");

		rVO.setId(login.getId());

		int isSuccess = reserveService.Reserve(rVO);

		System.out.println(isSuccess);

		model.addAttribute("reserve", rVO);
		model.addAttribute("pay", pVO);

		if (isSuccess != 1) {

			return "redirect:/main.do";
		}
		return "/user/page/kakao";
	}

	@RequestMapping(value = "/payKakao")
	public String payKakao(ModelMap model, Criteria cri, ReserveVO rVO, PayVO pVO, HttpSession session)
			throws Exception {
		logger.info("Kakao");
		MemberVO login = (MemberVO) session.getAttribute("login");

		rVO.setId(login.getId());

		List<ReserveVO> list = reserveService.getReserve(rVO);

		pVO.setId(list.get(0).getId());
		pVO.setReserveSequence(list.get(0).getReserveSequence());
		System.out.println(list);
		System.out.println(pVO.toString());
		int isSuccess = payService.payTicket(pVO);
		System.out.println(isSuccess);

		if (isSuccess != 1) {
			System.out.println("결제오류");
			return "redirect:/main.do";
		}
		model.addAttribute("type", "reserve");
		model.addAttribute("isSuccess", isSuccess);

		return "redirect:/page/myPage.do";
	}


	@RequestMapping(value = "/myPage")
	public String Main(ModelMap model, Criteria cri, ReserveVO rVO, PayVO pVO, HttpSession session)
			throws Exception {
		MemberVO login = (MemberVO) session.getAttribute("login");

		rVO.setId(login.getId());
		List<ReserveVO> list = reserveService.selectMapping(rVO);

		if (list != null) {
			for (ReserveVO listvo : list) {
				System.out.println(listvo.toString());
				model.addAttribute("reserveList", list);
			}
		} else {
			System.out.println("오류발생");
		}
		return "/user/page/myPage";
	}
	
}