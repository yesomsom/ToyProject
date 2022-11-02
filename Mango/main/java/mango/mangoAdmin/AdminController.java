package mango.mangoAdmin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.AdminURLValue;
import mango.mango.model.GoodsVO;
import mango.mango.service.GoodsService;

@Controller
@RequestMapping(value = AdminURLValue.ADMIN)
public class AdminController {
	
	@Resource(name = "GoodsService")
	private GoodsService goodsService;
	
@RequestMapping(value="/goodsManagement")
public String goodsManagement(ModelMap model, Criteria cri, GoodsVO gVO, @RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {
	
	int goodsTotal = goodsService.selectAllGoodsCount(gVO);
	
	if (pageNum == null) {
		pageNum = "1";
	}
	
	if(pageNum != null){
		cri.setPageNum(Integer.parseInt(pageNum));
	}
	 
	PageMakerDTO pageMaker = new PageMakerDTO(cri, goodsTotal);
	gVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
	gVO.setAmount(cri.getAmount());

	List<GoodsVO> goodsList = goodsService.selectOneGoods(gVO);
	
	model.addAttribute("goodsList", goodsList);
	
	model.put("pageMaker", pageMaker);
	
	return "/admin/page/goodsManagement";
}
	//상품 리스트 삭제
	@RequestMapping(value = "/goodsManagement/delete")
	public String deletegoodsManagement(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {

		goodsService.deleteGoods(gVO.getGoodsId());

		return "redirect:/admin/goodsManagement.do";
	}

	// 상품 리스트 수정
	@RequestMapping(value = "/goodsManagement/update")
	public String updategoodsManagement(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {

		goodsService.modifyGoods(gVO);

		return "redirect:/admin/goodsManagement.do";
	}

}
