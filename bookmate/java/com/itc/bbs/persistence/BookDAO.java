package com.itc.bbs.persistence;

import java.util.HashMap;
import java.util.List;

import com.itc.bbs.domain.BookVO;

public interface BookDAO {
	
	public List<BookVO> getBookList(String bookGenre) throws Exception;
	public List<BookVO> getBestBook() throws Exception;
	public List<BookVO> getNewBook() throws Exception;
	public int getLastBookNo() throws Exception;
	public List<HashMap<String, String>> getRentChartData() throws Exception;
	public List<HashMap<String, String>> getGenreChartData() throws Exception;
	public List<HashMap<String, String>> getGenderChartData() throws Exception;
	public List<HashMap<String, String>> getDateChartData() throws Exception;
	public BookVO readBook(int bookNo)throws Exception;
	public int addBook(BookVO vo)throws Exception;
	
}
