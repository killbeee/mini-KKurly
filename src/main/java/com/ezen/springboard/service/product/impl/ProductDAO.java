package com.ezen.springboard.service.product.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.CateVO;
import com.ezen.springboard.VO.ProdFileVO;
import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.VO.UserVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public int prodNameCheck(String prodNm) {
		return mybatis.selectOne("ProductDAO.prodNameCheck", prodNm);
	}

	public List<ProdVO> searchProduct(Map<String, String> paramMap) {
		return mybatis.selectList("ProductDAO.searchProduct", paramMap);
	}
	
	
	
	public void prodInsert(ProdVO prodVO, ProdFileVO prodFile) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("prodVO", prodVO);
		
		if(prodFile.getProdFilePath() != null &&
			!prodFile.getProdFilePath().equals("")) {
			paramMap.put("prodFile", prodFile);
		}
		
		mybatis.insert("ProductDAO.prodInsert", paramMap);
	}

	public ProdVO prodDetail(int prodNo) {
		return mybatis.selectOne("ProductDAO.prodDetail", prodNo);
	}
	public List<CateVO> prodInsert2() {
		
		return mybatis.selectList("ProductDAO.prodInsert2");
	}
	public void prodDelete(int prodNo) {
		mybatis.delete("ProductDAO.prodDelete",prodNo);
	}

}
