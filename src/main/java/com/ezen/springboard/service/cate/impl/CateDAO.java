package com.ezen.springboard.service.cate.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.CateVO;
import com.ezen.springboard.VO.ProdFileVO;

@Repository
public class CateDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	//리스트 조회
	public List<CateVO> getCateList(Map<String, String> paramMap) {
		return null;
	}
	//등록
	public void insertCate(CateVO cateVO) {
		mybatis.insert("CateDAO.insertCate", cateVO);
		
	}
	//수정
	public void updateCate(CateVO cateVO, List<ProdFileVO> uFileList) {
		mybatis.update("CateDAO.updateCate",cateVO);
		
	}
	
}
