package com.ezen.springboard.service.cart.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.CartVO;
import com.ezen.springboard.VO.OrderDetailVO;
import com.ezen.springboard.VO.OrderVO;
import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.cart.CartService;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDAO cartDAO;
	
	@Override
	public ProdVO getProd(int prodNo) {
		return cartDAO.getProd(prodNo);
	}
	
	@Override
	public List<CartVO> getCartList(int userNo) {
		return cartDAO.getCartList(userNo);
	}
	
	@Override
	public void insertCart(CartVO cartVO) {
		cartDAO.insertCart(cartVO);
	}
	
	@Override
	public void deleteItem(int prodNo, int userNo) {
		cartDAO.deleteItem(prodNo, userNo);
	}
	
	@Override
	public void updateItem(int prodNo, int prodQty, int userNo) {
		cartDAO.updateItem(prodNo, prodQty, userNo);
	}
	
	@Override
	public String getUserAddr(int userNo) {
		return cartDAO.getUserAddr(userNo);
	}
	
	@Override
	public void setOrderInfo(OrderVO orderVO) {
		cartDAO.setOrderInfo(orderVO);
	}
	
	@Override
	public int getOrderNo(int userNo) {
		return cartDAO.getOrderNo(userNo);
	}
	
	@Override
	public void setOrderDetail(OrderDetailVO detailVO) {
		cartDAO.setOrderDetail(detailVO);
	}
}
