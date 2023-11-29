package com.itc.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.itc.bbs.domain.HopeBookVO;
import com.itc.bbs.persistence.HopeBookDAO;

@Service
public class HopeBookServiceImpl implements HopeBookService{

	@Autowired
	HopeBookDAO dao;
	
	@Override
	public List<HopeBookVO> getHopeBookList() throws Exception {
		return dao.getHopeBookList();
	}
	
	@Override
	public int createHopeBook(HopeBookVO vo) throws Exception {
		return dao.createHopeBook(vo);
	}
	
}
