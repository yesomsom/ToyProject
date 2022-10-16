package mango.board.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.board.service.BoardService;
import mango.board.service.BoardVO;

@Service("boardService")
public class BoardServiceImpl extends EgovAbstractServiceImpl implements BoardService {
	
	@Resource(name = "boardDAO")
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception{
		return boardDAO.selectBoardList(boardVO);
	}
	
	@Override
	public Integer countBoard(BoardVO boardVO) throws Exception{
		return boardDAO.countBoard(boardVO);
	}
	
	@Override
	public BoardVO selectBoardById(String boardId) throws Exception{
		return boardDAO.selectBoardById(boardId);
	}
	
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception{
		boardDAO.insertBoard(boardVO);
	}
	
	@Override
	public void updateBoard(BoardVO boardVO) throws Exception{
		boardDAO.updateBoard(boardVO);
	}
	
	@Override
	public void deleteBoardById(String boardId) throws Exception{
		boardDAO.deleteBoardById(boardId);
	}

}
