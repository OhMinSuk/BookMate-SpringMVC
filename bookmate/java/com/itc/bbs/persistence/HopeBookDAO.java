package com.itc.bbs.persistence;

import java.util.List;

import com.itc.bbs.domain.HopeBookVO;

public interface HopeBookDAO {
	
	public List<HopeBookVO> getHopeBookList() throws Exception;
	public int createHopeBook(HopeBookVO vo) throws Exception;
	
}
