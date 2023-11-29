package com.itc.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.UserVO;
import com.itc.bbs.persistence.LoginDAO;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginDAO dao;
	
	@Override
	public UserVO checkLogin(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.checkLogin(vo);
	}
}
