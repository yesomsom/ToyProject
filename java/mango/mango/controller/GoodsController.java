package mango.mango.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.UserURLValue;
import mango.mango.model.GoodsFileVO;
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
	public String goods(ModelMap model, Criteria cri, GoodsVO gVO, @RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {

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

		/*
		 * List<GoodsVO> goodsList = goodsService.selectAllGoodsList(gVO);
		 */
		model.addAttribute("goodsList", goodsList);

		model.put("pageMaker", pageMaker);
		return "/user/page/goods";

	}

	@RequestMapping(value = "/goods_ajax", produces = "application/text;charset=UTF-8")
	public ResponseEntity<String> goodsAjax(ModelMap model, Criteria cri, GoodsVO gVO, @RequestParam(value = "pageNum", required = false) String pageNum) throws Exception {
		HttpHeaders responsHeaders = new HttpHeaders();
		responsHeaders.add("Content-Type", "text/html;charset=UTF-8");
		
		if (gVO.getGoodsCategory() != null && gVO.getGoodsCategory().equals("전체")) {
			gVO.setGoodsCategory(null);
		}

		int goodsTotal = goodsService.selectAllGoodsCount(gVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, goodsTotal);
		if (pageNum == null) {
			pageNum = "1";
		}
		gVO.setSkip((Integer.parseInt(pageNum) - 1) * cri.getAmount());
		gVO.setAmount(cri.getAmount());
		
		
		List<GoodsVO> catList = goodsService.selectCatList(gVO);
		
		model.addAttribute("catList", catList);		

		String gson = new Gson().toJson(catList);

		return new ResponseEntity<String>(gson, responsHeaders, HttpStatus.CREATED);

	}

	@RequestMapping(value = "/goodsDetail")
	public String goodsDetail(ModelMap model, Criteria cri, GoodsFileVO gfVO, GoodsVO gVO, String goodsId) throws Exception {
		gVO = goodsService.selectGoodsDetailList(goodsId);
		gfVO.setGoodsId(goodsId);
		model.addAttribute("goods", gVO);

		List<GoodsVO> goodsList = goodsService.selectAllGoodsList(gVO);

		List<GoodsFileVO> goodsFileList = goodsService.selectAllGoodsFileList(gfVO);

		model.addAttribute("goodsList", goodsList);
		model.addAttribute("goodsFileList", goodsFileList);

		return "/user/page/goodsDetail";
	}

}