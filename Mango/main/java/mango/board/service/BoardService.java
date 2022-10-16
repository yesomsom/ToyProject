package mango.board.service;

import java.util.List;

public interface BoardService {
	
	List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception;
	Integer countBoard(BoardVO boardVO) throws Exception;
	BoardVO selectBoardById(String boardId) throws Exception;
	void insertBoard(BoardVO boardVO) throws Exception;
	void updateBoard(BoardVO boardVO) throws Exception;
	void deleteBoardById(String boardId) throws Exception;

}
