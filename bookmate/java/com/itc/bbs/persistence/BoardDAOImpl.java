package com.itc.bbs.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itc.bbs.domain.BoardVO;
import com.itc.bbs.domain.CommentVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "bbs.mapper.boardMapper";
	
	@Override
	public List<BoardVO> getBoardList() throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getList");
	}
	
	@Override
	public BoardVO readBoard(int BoardNo) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".readBoard", BoardNo);
	}
	
	@Override
	public int writeBoard(BoardVO vo) throws Exception {
		return sql.insert(namespace + ".writeBoard", vo);
	}
	
	@Override
	public void deleteBoard(int boardNo) throws Exception {
		sql.delete(namespace + ".deleteBoard", boardNo);
	}
	
	@Override
	public int getBoardCommentCount(int boardNo) throws Exception {
		return sql.selectOne(namespace+".getBoardCommentCount", boardNo);
	}
	
	@Override
	public List<CommentVO> getCommentList(int boardNo) throws Exception {
		return sql.selectList(namespace+".getCommentList", boardNo);
	}
	
	@Override
	public int addComment(CommentVO vo) throws Exception {
		return sql.insert(namespace+".addComment", vo);
	}

}
