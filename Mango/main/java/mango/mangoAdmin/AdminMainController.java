package mango.mangoAdmin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mango.common.util.AdminURLValue;
import mango.mango.model.MemberVO;

@Controller
@RequestMapping(value = AdminURLValue.ADMIN)
public class AdminMainController {
	
	@RequestMapping(value = "/main")
	public String main(ModelMap model, HttpSession session) throws Exception{
		 MemberVO login = (MemberVO) session.getAttribute("login");
	      model.addAttribute("type", "adminLogin");
	      
	      if (login != null) {
	    	  
	    	  return "/admin/main"; 
	    	  
	      } else {
	         model.addAttribute("isSuccess", false);
	         return "/user/page/process";
	      }

	      
	}

}
