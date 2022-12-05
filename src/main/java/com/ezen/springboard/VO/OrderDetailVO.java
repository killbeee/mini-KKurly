package com.ezen.springboard.VO;

public class OrderDetailVO {

	private int orderNo;
	private String orderDNo;
	
	private int prodNo;
	private int prodQty;
	private String couponNo;
	private String totalPrice;
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getOrderDNo() {
		return orderDNo;
	}
	public void setOrderDNo(String orderDNo) {
		this.orderDNo = orderDNo;
	}
	public int getProdQty() {
		return prodQty;
	}
	public void setProdQty(int prodQty) {
		this.prodQty = prodQty;
	}
	public String getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(String couponNo) {
		this.couponNo = couponNo;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	@Override
	public String toString() {
		return "OrderDetailVO [orderNo=" + orderNo + ", orderDNo=" + orderDNo + ", prodNo=" + prodNo + ", prodQty="
				+ prodQty + ", couponNo=" + couponNo + ", totalPrice=" + totalPrice + "]";
	}
	
	
	
}
