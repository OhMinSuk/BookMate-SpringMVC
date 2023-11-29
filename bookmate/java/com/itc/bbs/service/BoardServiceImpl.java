package com.itc.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.BoardVO;
import com.itc.bbs.domain.CommentVO;
import com.itc.bbs.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDAO dao;
	
	
	@Override
	public List<BoardVO> getBoardList() throws Exception {
		// TODO Auto-generated method stub
		return dao.getBoardList();
	}
	
	@Override
	public BoardVO readBoard(int boardNo) {
		// TODO Auto-generated method stub
		return dao.readBoard(boardNo);
	}
	
	@Override
	public int writeBoard(BoardVO vo) throws Exception {
		return dao.writeBoard(vo);
	}
	
	@Override
	public void deleteBoard(int boardNo) throws Exception {
		dao.deleteBoard(boardNo);
	}
	
	@Override
	public int getBoardCommentCount(int boardNo) throws Exception {
		return dao.getBoardCommentCount(boardNo);
	}
	
	@Override
	public List<CommentVO> getCommentList(int boardNo) throws Exception{
		return dao.getCommentList(boardNo);
	}
	
	@Override
	public int addComment(CommentVO vo) throws Exception {
		return dao.addComment(vo);
	}
}
