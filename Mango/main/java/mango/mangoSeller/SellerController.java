package mango.mangoSeller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mango.common.service.Criteria;
import mango.common.util.SellerURLValue;
import mango.mango.controller.InfoController;

@Controller
@RequestMapping(value=SellerURLValue.MANGO_SELLER)
public class SellerController {
	private static Logger logger = LoggerFactory.getLogger(InfoController.class);
	
	@RequestMapping(value="/uploadGoods")
	public String uploadGoods(ModelMap model, Criteria cri)throws Exception{
		return "/seller/page/uploadGoods";
	}
}
