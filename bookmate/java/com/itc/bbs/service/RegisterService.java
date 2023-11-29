package com.itc.bbs.service;

import com.itc.bbs.domain.UserVO;

public interface RegisterService {
	public int addUser(UserVO vo) throws Exception;
	public int overlapIdCheck(String userId) throws Exception;
}
