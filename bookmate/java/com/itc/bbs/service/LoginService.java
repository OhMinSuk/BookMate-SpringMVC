package com.itc.bbs.service;

import com.itc.bbs.domain.UserVO;

public interface LoginService {
	public UserVO checkLogin(UserVO vo) throws Exception;
}
