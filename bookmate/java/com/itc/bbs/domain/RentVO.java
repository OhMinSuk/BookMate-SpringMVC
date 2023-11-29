package com.itc.bbs.domain;


import java.util.Date;

public class RentVO {
	private int rentNo;
	private int bookNo;
	private int userNo;
	private String bookName;
	private String userName;
	private Date rentStartDate;
	private Date rentEndDate;
	private int rentStatus;
	private int rentExtend;
	
	public int getRentNo() {
		return rentNo;
	}
	public void setRentNo(int rentNo) {
		this.rentNo = rentNo;
	}
	public int getBookNo() {
		return bookNo;
	}
	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public Date getRentStartDate() {
		return rentStartDate;
	}
	public void setRentStartDate(Date rentStartDate) {
		this.rentStartDate = rentStartDate;
	}
	public Date getRentEndDate() {
		return rentEndDate;
	}
	public void setRentEndDate(Date rentEndDate) {
		this.rentEndDate = rentEndDate;
	}
	public int getRentStatus() {
		return rentStatus;
	}
	public void setRentStatus(int rentStatus) {
		this.rentStatus = rentStatus;
	}
	public int getRentExtend() {
		return rentExtend;
	}
	public void setRentExtend(int rentExtend) {
		this.rentExtend = rentExtend;
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "RentVO [rentNo=" + rentNo + ", bookNo=" + bookNo + ", userNo=" + userNo + ", bookName=" + bookName
				+ ", rentStartDate=" + rentStartDate + ", rentEndDate=" + rentEndDate + ", rentStatus=" + rentStatus
				+ ", rentExtend=" + rentExtend + "]";
	}
	
	
	
}
