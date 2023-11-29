package com.itc.bbs.service;

import java.util.List;

import com.itc.bbs.domain.NoticeVO;

public interface NoticeService {
	public List<NoticeVO> getNoticeList() throws Exception;
	public int writeNotice(NoticeVO vo) throws Exception;
	public void deleteNotice(int noticeNo)throws Exception;
	public NoticeVO readNotice(int noticeNo)throws Exception;
	
}
