package com.itc.bbs.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.itc.bbs.domain.NoticeVO;


@Repository
public class NoticeDAOImpl implements NoticeDAO {
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "bbs.mapper.noticeMapper";
	
	
	@Override
	public List<NoticeVO> getNoticeList() throws Exception {
		return sql.selectList(namespace + ".getNoticeList");
	}
	
	@Override
	public int writeNotice(NoticeVO vo) throws Exception {
		return sql.insert(namespace + ".writeNotice", vo);
	}
	
	@Override
	public void deleteNotice(int noticeNo) throws Exception {
		sql.delete(namespace + ".deleteNotice", noticeNo);
	}
	
	@Override
	public NoticeVO readNotice(int noticeNo) throws Exception {
		return sql.selectOne(namespace + ".readNotice", noticeNo);
	}
	
}
