package com.ezen.springboard.service.cate;

import java.util.List;
import java.util.Map;

import com.ezen.springboard.VO.CateVO;

public interface CateService {
	//상위 카테고리 조회
	List<CateVO> getCateList(Map<String, String> paramMap);
	//하위 카테고리 조회(상세)
	
	//카테고리 추가(하위 카테고리가 추가되는 것임)
	void insertCate(CateVO cateVO);
	
	//카테고리 수정
	void updateCate();
	
	//카테고리 삭제 
	void deleteCate(int cataNo);




}


