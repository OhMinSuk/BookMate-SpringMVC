package com.itc.bbs.service;

import java.util.List;

import com.itc.bbs.domain.BoardVO;
import com.itc.bbs.domain.CommentVO;

public interface BoardService {
	public List<BoardVO> getBoardList() throws Exception;
	public BoardVO readBoard(int boardNo);
	public int writeBoard(BoardVO vo) throws Exception;
	public void deleteBoard(int boardNo)throws Exception;
	
	public int getBoardCommentCount(int boardNo) throws Exception;
	public List<CommentVO> getCommentList(int boardNo) throws Exception;
	public int addComment(CommentVO vo) throws Exception;
}
