package com.ezen.springboard.VO;

import java.sql.Date;

public class ProdFileVO {
	private int prodNo;
	private int prodFileNo;
	//실제로 서버에 업로드될 파일의 이름
	//yyyyMMddhhmmss_파일명.확장자
	//동일한 파일명의 파일을 업로드하면 나중에 업로드된 파일로
	//덮어써지기 때문에 동일한 파일명의 파일을 분리하기 위해 설정
	private String prodFileNm;
	//파일명.확장자 -> 화면에 기존 파일명으로 표출하기 위한 컬럼
	private String prodOriginFileNm;
	//실제 운영되는 사이트들은 WEB서버와 WAS가 분리되어있다.
	//파일업로드는 거의 대부분 WAS에서 처리
	//WAS의 파일업로드 경로를 모를 경우 파일을 찾지 못하는 경우도 발생할 수 있다.
	private String prodFilePath;
	private Date prodFileRegdate;
	//미리보기 기능을 만들 때 이미지는 그 파일자체를 보여주고
	//이미지가 아닌 파일들은 문서모양의 아이콘을 띄우려고 만든 컬럼
	private String prodFileCate;
	private String prodFileStatus;
	private String newFileNm;
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public int getProdFileNo() {
		return prodFileNo;
	}
	public void setProdFileNo(int prodFileNo) {
		this.prodFileNo = prodFileNo;
	}
	public String getProdFileNm() {
		return prodFileNm;
	}
	public void setProdFileNm(String prodFileNm) {
		this.prodFileNm = prodFileNm;
	}
	public String getProdOriginFileNm() {
		return prodOriginFileNm;
	}
	public void setProdOriginFileNm(String prodOriginFileNm) {
		this.prodOriginFileNm = prodOriginFileNm;
	}
	public String getProdFilePath() {
		return prodFilePath;
	}
	public void setProdFilePath(String prodFilePath) {
		this.prodFilePath = prodFilePath;
	}
	public Date getProdFileRegdate() {
		return prodFileRegdate;
	}
	public void setProdFileRegdate(Date prodFileRegdate) {
		this.prodFileRegdate = prodFileRegdate;
	}
	public String getProdFileCate() {
		return prodFileCate;
	}
	public void setProdFileCate(String prodFileCate) {
		this.prodFileCate = prodFileCate;
	}
	public String getProdFileStatus() {
		return prodFileStatus;
	}
	public void setProdFileStatus(String prodFileStatus) {
		this.prodFileStatus = prodFileStatus;
	}
	public String getNewFileNm() {
		return newFileNm;
	}
	public void setNewFileNm(String newFileNm) {
		this.newFileNm = newFileNm;
	}
	@Override
	public String toString() {
		return "ProdFileVO [prodNo=" + prodNo + ", prodFileNo=" + prodFileNo + ", prodFileNm=" + prodFileNm
				+ ", prodOriginFileNm=" + prodOriginFileNm + ", prodFilePath=" + prodFilePath + ", prodFileRegdate="
				+ prodFileRegdate + ", prodFileCate=" + prodFileCate + ", prodFileStatus=" + prodFileStatus
				+ ", newFileNm=" + newFileNm + "]";
	}
}