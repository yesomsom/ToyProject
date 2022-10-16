package mango.mangoAdmin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mango.common.util.AdminURLValue;

@Controller
@RequestMapping(value = AdminURLValue.ADMIN)
public class AdminMainController {
	
	@RequestMapping(value = "/main")
	public String main(ModelMap model) throws Exception{
		
		return "/admin/main";
	}

}
