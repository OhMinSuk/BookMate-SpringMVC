package com.itc.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.UserVO;
import com.itc.bbs.persistence.RegisterDAO;

@Service
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	RegisterDAO dao;
	
	@Override
	public int addUser(UserVO vo) throws Exception {
		return dao.addUser(vo);
	}
	@Override
	public int overlapIdCheck(String userId) throws Exception {
		return dao.overlapIdCheck(userId);
	}

}
