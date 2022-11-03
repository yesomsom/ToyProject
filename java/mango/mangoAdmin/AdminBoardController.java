package mango.mangoAdmin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mango.board.service.BoardService;
import mango.board.service.BoardVO;
import mango.common.EgovWebUtil;
import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.AdminURLValue;

@Controller
@RequestMapping(value = AdminURLValue.BOARD)
public class AdminBoardController {

	@Resource(name = "boardService")
	private BoardService boardService;
	
	// 게시글 리스트
	@RequestMapping(value = "/list")
	public String boardList(ModelMap model, Criteria cri) throws Exception {
		
		BoardVO boardVO = new BoardVO();
		int boardTotal = boardService.countBoard(boardVO);
		
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, boardTotal);
		boardVO.setSkip((cri.getPageNum() - 1 ) * cri.getAmount());
		boardVO.setAmount(cri.getAmount());
		
		List<BoardVO> boardList = boardService.selectBoardList(boardVO);
		
		model.put("boardList", boardList);
		model.put("pageMaker", pageMaker);
		
		return "/admin/board/list";
	}
	
	// 게시글 등록 페이지
	@RequestMapping(value = "/add")
	public String addBoardView(@ModelAttribute("boardVO") BoardVO boardVO,
			HttpServletRequest request, ModelMap model) throws Exception {
		
		return "/admin/board/add";
	}
	
	// 게시글 추가
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public String addBoard(@ModelAttribute("boardVO") BoardVO boardVO,
			HttpServletRequest request, ModelMap model) throws Exception {
		
		boardVO.setBoardId(EgovWebUtil.getUUID());
		boardService.insertBoard(boardVO);
		
		return "success";
	}
	
}
