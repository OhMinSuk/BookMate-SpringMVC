package com.itc.bbs.persistence;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itc.bbs.domain.BookVO;


@Repository
public class BookDAOImpl implements BookDAO {
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "bbs.mapper.bookMapper";
	
	
	@Override
	public List<BookVO> getBookList(String bookGenre) throws Exception {
		return sql.selectList(namespace + ".getBookList", bookGenre);
	}
	
	@Override
	public List<BookVO> getBestBook() throws Exception {
		return sql.selectList(namespace + ".getBestBook");
	}
	
	@Override
	public List<BookVO> getNewBook() throws Exception {
		return sql.selectList(namespace + ".getNewBook");
	}
	
	@Override
	public BookVO readBook(int bookNo) throws Exception {
		return sql.selectOne(namespace + ".readBook", bookNo);
	}
	
	@Override
	public int addBook(BookVO vo) throws Exception {
		return sql.insert(namespace + ".addBook", vo);
	}
	
	@Override
	public int getLastBookNo() throws Exception {
		return sql.selectOne(namespace + ".getLastBookNo");
	}
	
	@Override
	public List<HashMap<String, String>> getRentChartData() throws Exception {
		return sql.selectList(namespace + ".getRentChartData");
	}
	@Override
	public List<HashMap<String, String>> getGenreChartData() throws Exception {
		return sql.selectList(namespace + ".getGenreChartData");
	}
	
	@Override
	public List<HashMap<String, String>> getGenderChartData() throws Exception {
		return sql.selectList(namespace + ".getGenderChartData");
	}
	
	@Override
	public List<HashMap<String, String>> getDateChartData() throws Exception {
		return sql.selectList(namespace + ".getDateChartData");
	}
	
	
}
