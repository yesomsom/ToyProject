package mango.mango.controller;

import java.util.List;


import javax.annotation.Resource;

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
import mango.mango.model.TheaterVO;
import mango.mango.service.TheaterService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class TheaterController {

	@Resource(name = "TheaterService")
	private TheaterService TheaterService;
	
	@RequestMapping(value = "/theater")
	public String theater(ModelMap model, Criteria cri, TheaterVO tVO) throws Exception {	
		
		// 영화관리스트		
		tVO.setGroupData("1");
		
		List<TheaterVO> theaterList = TheaterService.selectCGVList(tVO);
		
		model.addAttribute("TheaterList", theaterList);
		
		return "/user/page/theater";
	}
	
	
	@RequestMapping(value = "/theater_ajax", produces="application/text;charset=UTF-8")
	public ResponseEntity<String> theaterAjax(ModelMap model, Criteria cri, TheaterVO tVO) throws Exception {
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html;charset=UTF-8");
		
		List<TheaterVO> dataList = TheaterService.selectCGVList(tVO);
		model.addAttribute("dataList", dataList);

		
		String gson = new Gson().toJson(dataList);		
		
		
		return new ResponseEntity<String>(gson, responseHeaders, HttpStatus.CREATED);
	}
	
	@RequestMapping(value = "/kakaomap",method = RequestMethod.GET)
	public String kakaomap(ModelMap model, Criteria cri) throws Exception {
	return "/user/page/kakaomap";
	}
	
}
