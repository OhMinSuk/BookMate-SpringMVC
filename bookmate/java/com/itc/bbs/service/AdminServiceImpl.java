package com.itc.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.UserVO;
import com.itc.bbs.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO dao;
	
	
	@Override
	public List<UserVO> getUserList() throws Exception {
		return dao.getUserList();
	}
	
}
