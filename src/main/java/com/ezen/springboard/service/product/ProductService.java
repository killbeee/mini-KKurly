package com.ezen.springboard.service.product;

import java.util.List;
import java.util.Map;

import com.ezen.springboard.VO.CateVO;
import com.ezen.springboard.VO.ProdFileVO;
import com.ezen.springboard.VO.ProdVO;

public interface ProductService {
	boolean prodNameCheck(String prodNm);
	List<ProdVO> searchProduct(Map<String, String> paramMap);
	void prodInsert(ProdVO prodVO, ProdFileVO prodFile);
	ProdVO prodDetail(int prodNo);
	List<CateVO> prodInsert2();
	void prodDelete(int prodNo);
}
