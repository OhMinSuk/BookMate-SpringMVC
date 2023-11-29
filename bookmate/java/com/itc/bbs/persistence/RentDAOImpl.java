package com.itc.bbs.persistence;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.itc.bbs.domain.RentVO;


@Repository
public class RentDAOImpl implements RentDAO {
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "bbs.mapper.rentMapper";

	@Override
	public int isRentBook(RentVO vo) throws Exception {
		return sql.selectOne(namespace + ".isRentBook", vo);
	}
	
	@Override
	public void rentBook(RentVO vo) throws Exception {
		sql.insert(namespace + ".rentBook", vo);
	}

	@Override
	public List<RentVO> getRentList(int userNo) throws Exception {
		return sql.selectList(namespace+".getRentList", userNo);
	}

	@Override
	public void returnBook(RentVO vo) throws Exception {
		sql.update(namespace+".returnBook", vo);
	}
	
	@Override
	public void extendBook(RentVO vo) throws Exception {
		sql.update(namespace+".extendBook", vo);
	}
	
	@Override
	public List<RentVO> getAllList() throws Exception {
		return sql.selectList(namespace+".getAllList");
	}
}
