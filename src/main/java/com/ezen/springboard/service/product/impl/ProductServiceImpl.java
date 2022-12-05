package com.ezen.springboard.service.product.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.CateVO;
import com.ezen.springboard.VO.ProdFileVO;
import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.product.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;

	@Override
	public boolean prodNameCheck(String prodNm) {
		int cnt = productDAO.prodNameCheck(prodNm);
		
		if(cnt > 0) {
			return false;
		} else return true;
	}


	@Override
	public List<ProdVO> searchProduct(Map<String, String> paramMap) {

		return  productDAO.searchProduct(paramMap);
	}

	@Override
	public void prodInsert(ProdVO prodVO, ProdFileVO prodFile) {
	productDAO.prodInsert(prodVO, prodFile);
	}


	@Override
	public ProdVO prodDetail(int prodNo) {
		
		return productDAO.prodDetail(prodNo);
	}


	@Override
	public List<CateVO> prodInsert2() {
		
		return productDAO.prodInsert2();
	}


	@Override
	public void prodDelete(int prodNo) {
		productDAO.prodDelete(prodNo);
	}







}
