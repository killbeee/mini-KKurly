package com.ezen.springboard.VO;

import java.sql.Date;

public class OrderVO {
	private int orderNo;
	private int userNo;
	private Date orderDt;
	private String adrNo;
	private String receiverNm;
	private String receiverTel;
	private String payWay;
	private String orderStatus;
	private String totalPrice;
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public Date getOrderDt() {
		return orderDt;
	}
	public void setOrderDt(Date orderDt) {
		this.orderDt = orderDt;
	}
	public String getAdrNo() {
		return adrNo;
	}
	public void setAdrNo(String adrNo) {
		this.adrNo = adrNo;
	}
	public String getReceiverNm() {
		return receiverNm;
	}
	public void setReceiverNm(String receiverNm) {
		this.receiverNm = receiverNm;
	}
	public String getReceiverTel() {
		return receiverTel;
	}
	public void setReceiverTel(String receiverTel) {
		this.receiverTel = receiverTel;
	}
	public String getPayWay() {
		return payWay;
	}
	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	@Override
	public String toString() {
		return "OrderVO [orderNo=" + orderNo + ", userNo=" + userNo + ", orderDt=" + orderDt + ", adrNo=" + adrNo
				+ ", receiverNm=" + receiverNm + ", receiverTel=" + receiverTel + ", payWay=" + payWay
				+ ", orderStatus=" + orderStatus + ", totalPrice=" + totalPrice + "]";
	}
	
}
