package com.ezen.springboard.VO;

import java.sql.Date;

public class CartVO {
	private int cartNo;
	private int qty;
	private int prodNo;
	private int userNo;
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	@Override
	public String toString() {
		return "CartVO [cartNo=" + cartNo + ", qty=" + qty + ", prodNo=" + prodNo + ", userNo=" + userNo + "]";
	}
	
	
}
