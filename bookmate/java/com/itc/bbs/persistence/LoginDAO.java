package com.itc.bbs.persistence;

import com.itc.bbs.domain.UserVO;

public interface LoginDAO {
	public UserVO checkLogin(UserVO vo) throws Exception;
}
