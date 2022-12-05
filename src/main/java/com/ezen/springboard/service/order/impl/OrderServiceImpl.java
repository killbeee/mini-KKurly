package com.ezen.springboard.service.order.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.OrderVO;
import com.ezen.springboard.service.order.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public List<OrderVO> orderList() {
		
		return orderDAO.orderList();
	}

	@Override
	public OrderVO orderListDetail(int orderNo) {

		return orderDAO.orderListDetail(orderNo);
	}

	 @Override public int canceledOrder(int orderNo) {
	
		 return orderDAO.canceledOrder(orderNo); 
	 }

	@Override
	public List<OrderVO> canceledOrderListView() {
		
		return orderDAO.canceledOrderListView();
	}

	
}
