package com.itc.bbs.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itc.bbs.domain.UserVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "bbs.mapper.adminMapper";
	
	
	@Override
	public List<UserVO> getUserList() throws Exception {
		return sql.selectList(namespace + ".getUserList");
	}
	
}
