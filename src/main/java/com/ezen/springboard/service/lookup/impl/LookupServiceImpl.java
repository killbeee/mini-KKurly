package com.ezen.springboard.service.lookup.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.LookupVO;
import com.ezen.springboard.service.lookup.LookupService;

@Service
public class LookupServiceImpl implements LookupService{
	@Autowired
	private LookupDAO lookupDAO;

	@Override
	public List<LookupVO> getLookupList(Map<String, String> paramMap) {
		return lookupDAO.getLookupList(paramMap);
	}

	@Override
	public int getLookupTotalCnt(Map<String, String> paramMap) {	
		return 0;
	}
}
