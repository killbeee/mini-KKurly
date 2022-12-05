package com.ezen.springboard.service.cart;

import java.util.List;

import com.ezen.springboard.VO.CartVO;
import com.ezen.springboard.VO.OrderDetailVO;
import com.ezen.springboard.VO.OrderVO;
import com.ezen.springboard.VO.ProdVO;

public interface CartService {
	ProdVO getProd(int prodNo);
	
	List<CartVO> getCartList(int userNo);
	
	void insertCart(CartVO cartVO);
	
	void deleteItem(int prodNo, int userNo);
	
	void updateItem(int prodNo, int prodQty, int userNo);
	
	String getUserAddr(int userNo);
	
	void setOrderInfo(OrderVO orderVO);
	
	int getOrderNo(int userNo);
	
	void setOrderDetail(OrderDetailVO detailVO);
}
