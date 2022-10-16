package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.UserURLValue;
import mango.mango.model.GoodsVO;
import mango.mango.service.GoodsService;
import mango.mango.service.MemberService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class GoodsController {

	@Resource(name = "MemberService")
	private MemberService memberservice;

	@Resource(name = "GoodsService")
	private GoodsService goodsService;

	@RequestMapping(value = "/goods")
	public String goods(ModelMap model, Criteria cri, GoodsVO gVO,
			@RequestParam(value = "pageNumCri", required = false) String pageNumCri) throws Exception {

		int goodsTotal = goodsService.selectAllGoodsCount(gVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, goodsTotal);
		if (pageNumCri == null) {
			pageNumCri = "1";
		}
		gVO.setSkip((Integer.parseInt(pageNumCri) - 1) * cri.getAmount());
		gVO.setAmount(cri.getAmount());

		List<GoodsVO> goodsList = goodsService.selectAllGoodsList(gVO);
		model.addAttribute("goodsList", goodsList);
		model.put("pageMaker", pageMaker);
		return "/user/page/goods";
		
	}

	@RequestMapping(value = "/goodsDetail")
	public String goodsDetail(ModelMap model, Criteria cri, GoodsVO gVO, int goodsId) throws Exception {
		gVO = goodsService.selectGoodsDetailList(goodsId);
		model.addAttribute("goods", gVO);

		List<GoodsVO> goodsList = goodsService.selectAllGoodsList(gVO);
		model.addAttribute("goodsList", goodsList);

		return "/user/page/goodsDetail";
	}

}