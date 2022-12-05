package com.ezen.springboard.VO;

public class UserLikeVO {
	private int userNo;
	private int prodNo;

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	@Override
	public String toString() {
		return "UserLikeVO [userNo=" + userNo + ", prodNo=" + prodNo + "]";
	}
}
