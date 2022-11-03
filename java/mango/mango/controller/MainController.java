package mango.mango.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	
	@RequestMapping(value = "main")
	public String main(ModelMap model) throws Exception{
		
		return "/user/main";
	}
}
