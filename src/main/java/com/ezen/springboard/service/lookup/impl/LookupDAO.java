package com.ezen.springboard.service.lookup.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.CateVO;
import com.ezen.springboard.VO.LookupVO;

@Repository
public class LookupDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<LookupVO> getLookupList(Map<String, String> paramMap) {
		return null;
	}
}
