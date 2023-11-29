package com.itc.bbs.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.BookVO;
import com.itc.bbs.persistence.BookDAO;

@Service
public class BookServiceImpl implements BookService{

	
	@Autowired
	BookDAO dao;
	
	@Override
	public List<BookVO> getBookList(String bookGenre) throws Exception {
		return dao.getBookList(bookGenre);
	}
	
	@Override
	public List<BookVO> getBestBook() throws Exception {
		return dao.getBestBook();
	}
	
	@Override
	public List<BookVO> getNewBook() throws Exception {
		return dao.getNewBook();
	}

	@Override
	public BookVO readBook(int bookNo) throws Exception {
		return dao.readBook(bookNo);
	}

	@Override
	public int addBook(BookVO vo) throws Exception {
		return dao.addBook(vo);
	}
	
	@Override
	public int getLastBookNo() throws Exception {
		return dao.getLastBookNo();
	}

	@Override
	public List<HashMap<String, String>> getRentChartData() throws Exception {
		return dao.getRentChartData();
	}
	
	@Override
	public List<HashMap<String, String>> getGenreChartData() throws Exception {
		return dao.getGenreChartData();
	}
	
	@Override
	public List<HashMap<String, String>> getGenderChartData() throws Exception {
		return dao.getGenderChartData();
	}
	
	@Override
	public List<HashMap<String, String>> getDateChartData() throws Exception {
		return dao.getDateChartData();
	}
	
}
