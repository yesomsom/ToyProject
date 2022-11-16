package mango.mango.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mango.common.service.Criteria;
import mango.common.util.SHA256;
import mango.common.util.UserURLValue;
import mango.mango.model.MemberVO;
import mango.mango.service.MemberService;
import mango.sms.Coolsms;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class MemberController {
		
	@Resource(name = "MemberService")
	private MemberService MemberService;
	
	private static Logger logger = LoggerFactory.getLogger(InfoController.class);

	@RequestMapping(value = "/login")
	public String login(ModelMap model, Criteria cri, HttpSession session) throws Exception {

		return "user/page/login";

	}

	@RequestMapping(value = "/login/insert", method = { RequestMethod.POST })
	public String insertLogin(ModelMap model, Criteria cri, MemberVO mVO, HttpSession session) throws Exception {
		SHA256 sha256 = new SHA256(); //암호화 유틸 불러오기
		
		String encryPassword = sha256.encrypt(mVO.getPassword()); // 비밀번호 암호화
		mVO.setPassword(encryPassword);	//암호화 된 비밀번호 넣기
		
		MemberVO login = MemberService.login(mVO);
		
		model.addAttribute("type", "login");
		
		if (login != null) {
			model.addAttribute("isSuccess", true);
			model.addAttribute("name", login.getName());			
			model.addAttribute("auth", login.getAuth());			
			model.addAttribute("login", login.getSellerName());			
			
			session.setAttribute("login", login);	
		} else {
			model.addAttribute("isSuccess", false);
			return "/user/page/process";
		}

		return "/user/page/process";

	}

	@RequestMapping(value = "/logout")
	public String logout(ModelMap model, Criteria cri, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		logger.info("logout");

		HttpSession session = request.getSession();
		session.invalidate();
		model.clear();
		return "redirect:/main.do";

	}

	@RequestMapping(value = "/register")
	public String register(ModelMap model, Criteria cri, MemberVO mVO) throws Exception {
		logger.info("register");
		return "user/page/register";
	}

	@RequestMapping(value = "/register/insert", method = RequestMethod.POST)
	public String registerinsert(ModelMap model, Criteria cri, MemberVO mVO, String id) throws Exception {
		SHA256 sha256 = new SHA256(); //암호화 유틸 불러오기
		
		String encryPassword = sha256.encrypt(mVO.getPassword()); // 비밀번호 암호화
		mVO.setPassword(encryPassword);	//암호화 된 비밀번호 넣기
		
		MemberService.register(mVO);
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

	// 회원정보 수정 페이지
	   @RequestMapping(value = "/memberModify")
	   public String modifyForm(ModelMap model, Criteria cri, MemberVO mVO, HttpSession session, String id)
	         throws Exception {

	      return "user/page/memberModify";
	   }

	   // 회원 정보 수정
	      @RequestMapping(value = "/memberModify/update", method = RequestMethod.POST)
	      public String updateModifyForm(ModelMap model, Criteria cri, MemberVO mVO, HttpSession session, String id)
	            throws Exception {
	    	  SHA256 sha256 = new SHA256(); //암호화 유틸 불러오기
	                  
	    	  String encryPassword = sha256.encrypt(mVO.getPassword()); // 비밀번호 암호화
	        
	    	  mVO.setPassword(encryPassword);   //암호화 된 비밀번호 넣기
	        
	    	  MemberService.updateMember(mVO);
	         
	    	  System.out.println("업데이트 완료");
	         
	    	  session.invalidate();
	         
	         return "redirect:/page/login.do";
	      }

	   // 회원 정보 삭제
	   @RequestMapping(value = "/memberModify/delete", method = RequestMethod.POST)
	   public String deleteModifyForm(ModelMap model, Criteria cri, MemberVO mVO, HttpSession session, String id)
	         throws Exception {

	      System.out.println("삭제완료");
	      MemberService.deleteMember(id);
	      session.invalidate();
	      return "redirect:/main.do";
	   }

	@RequestMapping(value = "/jusoPopup")
	public String jusoPopup(ModelMap model, Criteria cri) throws Exception {

		return "user/page/jusoPopup";
	}

	@RequestMapping(value = "/sendSms")
	public String sendSms(ModelMap model, Criteria cri, MemberVO mVO) throws Exception {
		return "user/page/sendSms";
	}

	@RequestMapping(value = "/sendSms/insert", method = RequestMethod.POST)
	@ResponseBody
	public String insertsendSms(ModelMap model, Criteria cri, MemberVO mVO, String to, String text) throws Exception {
		String api_key = "NCSRWVGXIDKFQHUO";
		String api_secret = "4RGHN4ANNLA8ZHQNLLT4SRAQVTQKGIKL";

		Coolsms coolsms = new Coolsms(api_key, api_secret);

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", to); // 수신번호
		set.put("from", "발신번호"); // 발신번호
		set.put("text", text); // 문자내용
		set.put("type", "sms"); // 문자 타입

		coolsms.send(set);

		return "user/page/sendSms";
	}

	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public String idCheck(ModelMap model, Criteria cri, String id) throws Exception {

		String getId = MemberService.getId(id);		

		if (getId == null) {

			return getId + "";

		} else {
			return "fail";
		}
	}
}
