package com.itc.bbs.persistence;

import java.util.List;

import com.itc.bbs.domain.UserVO;

public interface AdminDAO {
	public List<UserVO> getUserList() throws Exception;
	
}
