package com.itc.bbs.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.RentVO;
import com.itc.bbs.persistence.RentDAO;

@Service
public class RentServiceImpl implements RentService{

	
	@Autowired
	RentDAO dao;

	@Override
	public int isRentBook(RentVO vo) throws Exception {
		return dao.isRentBook(vo); 
	}
	
	@Override
	public void rentBook(RentVO vo) throws Exception {
		dao.rentBook(vo);
	}

	@Override
	public List<RentVO> getRentList(int userNo) throws Exception {
		return dao.getRentList(userNo);
	}

	@Override
	public void returnBook(RentVO vo) throws Exception {
		dao.returnBook(vo);
	}
	
	@Override
	public void extendBook(RentVO vo) throws Exception {
		dao.extendBook(vo);
	}
	
	@Override
	public List<RentVO> getAllList() throws Exception {
		return dao.getAllList();
	}
}
