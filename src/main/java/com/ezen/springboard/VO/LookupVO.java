package com.ezen.springboard.VO;

import java.sql.Date;

public class LookupVO {
	private int prodNo;			//상품번호
	private String prodCgcd;	//상품 분류 코드
	private String prodNm;		//상품 이름
	private int prodPrice;		//상품 가격
	private int prodQty;		//상품 처음 재고
	private String prodUnit;	//판매단위
	private String prodVol;		//중량 및 용량
	private String inputDt;		//입력일
	private String updateDt;	//수정일
	private int saleQty;		//판매수량
	private String useYn;		//사용유무
	
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public String getProdCgcd() {
		return prodCgcd;
	}
	public void setProdCgcd(String prodCgcd) {
		this.prodCgcd = prodCgcd;
	}
	public String getProdNm() {
		return prodNm;
	}
	public void setProdNm(String prodNm) {
		this.prodNm = prodNm;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public int getProdQty() {
		return prodQty;
	}
	public void setProdQty(int prodQty) {
		this.prodQty = prodQty;
	}
	public String getProdUnit() {
		return prodUnit;
	}
	public void setProdUnit(String prodUnit) {
		this.prodUnit = prodUnit;
	}
	public String getProdVol() {
		return prodVol;
	}
	public void setProdVol(String prodVol) {
		this.prodVol = prodVol;
	}
	public String getInputDt() {
		return inputDt;
	}
	public void setInputDt(String inputDt) {
		this.inputDt = inputDt;
	}
	public String getUpdateDt() {
		return updateDt;
	}
	public void setUpdateDt(String updateDt) {
		this.updateDt = updateDt;
	}
	public int getSaleQty() {
		return saleQty;
	}
	public void setSaleQty(int saleQty) {
		this.saleQty = saleQty;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	
	@Override
	public String toString() {
		return "LookupVO [prodNo=" + prodNo + ", prodCgcd=" + prodCgcd + ", prodNm=" + prodNm + ", prodPrice="
				+ prodPrice + ", prodQty=" + prodQty + ", prodUnit=" + prodUnit + ", prodVol=" + prodVol + ", inputDt="
				+ inputDt + ", updateDt=" + updateDt + ", saleQty=" + saleQty + ", useYn=" + useYn + "]";
	}
	
	
}