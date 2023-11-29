package com.itc.bbs.persistence;



import java.util.List;

import com.itc.bbs.domain.RentVO;

public interface RentDAO {
	public List<RentVO>getRentList(int userNo) throws Exception;
	public int isRentBook(RentVO vo) throws Exception;
	public void rentBook(RentVO vo) throws Exception;
	public void returnBook(RentVO vo)throws Exception;
	public void extendBook(RentVO vo)throws Exception;
	public List<RentVO>getAllList()throws Exception;
}
