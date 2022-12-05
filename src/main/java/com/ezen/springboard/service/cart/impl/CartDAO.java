package com.ezen.springboard.service.cart.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.CartVO;
import com.ezen.springboard.VO.OrderDetailVO;
import com.ezen.springboard.VO.OrderVO;
import com.ezen.springboard.VO.ProdVO;

@Repository
public class CartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProdVO getProd(int prodNo) {
		return mybatis.selectOne("CartDAO.getProd",prodNo);
	}
	
	public List<CartVO> getCartList(int userNo) {
		return mybatis.selectList("CartDAO.getCartList", userNo);
	}
	
	public void insertCart(CartVO cartVO) {
		
		mybatis.selectOne("CartDAO.insertCart", cartVO);
	}
	
	public void deleteItem(int prodNo, int userNo) {
		Map<String, Integer> pMap = new HashMap<String, Integer>();
		pMap.put("prodNo", prodNo);
		pMap.put("userNo", userNo);
		mybatis.delete("CartDAO.deleteItem", pMap);
	}
	
	public void updateItem(int prodNo, int prodQty, int userNo) {
		Map<String, Integer> pMap = new HashMap<String, Integer>();
		pMap.put("prodNo", prodNo);
		pMap.put("prodQty", prodQty);
		pMap.put("userNo", userNo);
		mybatis.update("CartDAO.updateItem", pMap);
	}
	
	public String getUserAddr(int userNo) {
		return mybatis.selectOne("CartDAO.getUserAddr", userNo);
	}
	
	public void setOrderInfo(OrderVO orderVO) {
		mybatis.insert("CartDAO.setOrderInfo", orderVO);
	}
	
	public int getOrderNo(int userNo) {
		return mybatis.selectOne("CartDAO.getOrderNo", userNo);
	}
	
	public void setOrderDetail(OrderDetailVO detailVO) {
		mybatis.insert("CartDAO.setOrderDetail", detailVO);
	}
}
