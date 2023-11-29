package com.itc.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.itc.bbs.domain.NoticeVO;
import com.itc.bbs.persistence.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService{

	
	@Autowired
	NoticeDAO dao;
	
	@Override
	public List<NoticeVO> getNoticeList() throws Exception {
		return dao.getNoticeList();
	}
	
	@Override
	public int writeNotice(NoticeVO vo) throws Exception {
		return dao.writeNotice(vo);
	}
	
	@Override
	public void deleteNotice(int noticeNo) throws Exception {
		dao.deleteNotice(noticeNo);
	}
	
	@Override
	public NoticeVO readNotice(int noticeNo) throws Exception {
		return dao.readNotice(noticeNo);
	}
	
}
