package com.ezen.springboard.service.user;

import java.util.List;
import java.util.Map;

import com.ezen.springboard.VO.LookupVO;

public interface LookupService {
	//상품 목록 조회
	List<LookupVO> getLookupList(Map<String, String>paramMap);
	
}
