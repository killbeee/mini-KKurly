package com.ezen.springboard.service.lookup;

import java.util.List;
import java.util.Map;

import com.ezen.springboard.VO.LookupVO;

public interface LookupService {

	//상품 목록 조회
	List<LookupVO> getLookupList(Map<String, String> paramMap);

	//상품 게시글 총 개수 조회
	int getLookupTotalCnt(Map<String, String> paramMap);
	
}



