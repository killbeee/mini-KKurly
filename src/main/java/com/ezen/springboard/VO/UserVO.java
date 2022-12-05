package com.ezen.springboard.VO;

import java.sql.Date;

public class UserVO {
	private int userNo;
	private String userId;
	private String userPw;
	private String userNm;
	private String userTel;
	private String userGen;
	private String userEmail;
	private String userBd;
	private Date inputDt;
	private String useYn;
	private String userNick;

	private String UserAdr;
	private String User_detail_address;

	@Override
	public String toString() {
		return "UserVO [userNo=" + userNo + ", userId=" + userId + ", userPw=" + userPw + ", userNm=" + userNm
				+ ", userTel=" + userTel + ", userGen=" + userGen + ", userEmail=" + userEmail + ", userBd=" + userBd
				+ ", inputDt=" + inputDt + ", useYn=" + useYn + ", userNick=" + userNick + ", UserAdr=" + UserAdr + "]";
	}

	public String getUserAdr() {
		return UserAdr;
	}

	public void setUserAdr(String userAdr) {
		UserAdr = userAdr;
	}

	public String getUser_detail_address() {
		return User_detail_address;
	}

	public void setUser_detail_address(String user_detail_address) {
		User_detail_address = user_detail_address;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getUserGen() {
		return userGen;
	}

	public void setUserGen(String userGen) {
		this.userGen = userGen;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserBd() {
		return userBd;
	}

	public void setUserBd(String userBd) {
		this.userBd = userBd;
	}

	public Date getInputDt() {
		return inputDt;
	}

	public void setInputDt(Date inputDt) {
		this.inputDt = inputDt;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

}
