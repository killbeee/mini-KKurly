package com.ezen.springboard.VO;

import java.sql.Date;

public class CateVO {
	private int cdNo;		//카테고리 내 코드 번호
	private String cd;		//카테고리 내 코드
	private String pCd;		//카테고리 내 상위코드(상품 분류 번호)
	private String cdNm;	//카테고리 내 코드 이름
	private String cdGroup;	//카테고리 내 코드 집합 이름
	private String useYn;	//카테고리 삭제여부
	
	public int getCdNo() {
		return cdNo;
	}
	public void setCdNo(int cdNo) {
		this.cdNo = cdNo;
	}
	public String getCd() {
		return cd;
	}
	public void setCd(String cd) {
		this.cd = cd;
	}
	public String getpCd() {
		return pCd;
	}
	public void setpCd(String pCd) {
		this.pCd = pCd;
	}
	public String getCdNm() {
		return cdNm;
	}
	public void setCdNm(String cdNm) {
		this.cdNm = cdNm;
	}
	public String getCdGroup() {
		return cdGroup;
	}
	public void setCdGroup(String cdGroup) {
		this.cdGroup = cdGroup;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	
	@Override
	public String toString() {
		return "CateVO [cdNo=" + cdNo + ", cd=" + cd + ", pCd=" + pCd + ", cdNm=" + cdNm + ", cdGroup=" + cdGroup
				+ ", useYn=" + useYn + "]";
	}
	
	
	
}