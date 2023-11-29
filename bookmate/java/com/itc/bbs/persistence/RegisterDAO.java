package com.itc.bbs.persistence;

import com.itc.bbs.domain.UserVO;

public interface RegisterDAO {
	public int addUser(UserVO vo) throws Exception;
	public int overlapIdCheck(String userId) throws Exception;
}
