package mango.mangoSeller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mango.common.util.SellerURLValue;

@Controller
@RequestMapping(value=SellerURLValue.SELLER)
public class SellerMainController {
	@RequestMapping(value="main")
	public String seller(ModelMap model) throws Exception{
		
		return "/seller/main";
	}
}
