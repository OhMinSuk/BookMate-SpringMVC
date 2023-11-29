package com.itc.bbs.service;

import java.util.List;

import com.itc.bbs.domain.HopeBookVO;

public interface HopeBookService {
	public List<HopeBookVO> getHopeBookList() throws Exception;
	public int createHopeBook(HopeBookVO vo) throws Exception;
}
