package mango.board.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.board.service.BoardVO;
import mango.common.service.impl.ComAbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends ComAbstractDAO {
	
	// 게시글 리스트
	public List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception{
		return selectList("BoardMapper.selectBoardList", boardVO);
	}
	
	// 게시글 갯수
	public Integer countBoard(BoardVO boardVO) throws Exception{
		return selectOne("BoardMapper.countBoard", boardVO);
	}
	
	// 게시글 상세페이지
	public BoardVO selectBoardById(String boardId) throws Exception{
		return selectOne("BoardMapper.selectBoardById", boardId);
	}
	
	// 게시글 추가
	public void insertBoard(BoardVO boardVO) throws Exception{
		insert("BoardMapper.insertBoard", boardVO);
	}
	
	// 게시글 수정
	public void updateBoard(BoardVO boardVO) throws Exception{
		update("BoardMapper.updateBoard", boardVO);
	}
	
	// 게시글 삭제
	public void deleteBoardById(String boardId) throws Exception{
		delete("BoardMapper.deleteBoardById", boardId);
	}

}
