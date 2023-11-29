package com.itc.bbs.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itc.bbs.domain.UserVO;

@Repository
public class RegisterDAOImpl implements RegisterDAO {
	
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "bbs.mapper.registerMapper";
	
	@Override
	public int addUser(UserVO vo) throws Exception {
		return sql.insert(namespace+".addUser", vo);
	}
	
	@Override
	public int overlapIdCheck(String userId) throws Exception {
		return sql.selectOne(namespace + ".overlapIdCheck", userId);
	}
}
