package com.itc.bbs.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.itc.bbs.domain.HopeBookVO;


@Repository
public class HopeBookDAOImpl implements HopeBookDAO {
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "bbs.mapper.hopeBookMapper";
	
	
	@Override
	public int createHopeBook(HopeBookVO vo) throws Exception {
		return sql.insert(namespace + ".createHopeBook", vo);
	}
	@Override
	public List<HopeBookVO> getHopeBookList() throws Exception {
		return sql.selectList(namespace + ".getHopeBookList");
	}
	
}
