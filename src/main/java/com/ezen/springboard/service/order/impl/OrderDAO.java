package com.ezen.springboard.service.order.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.OrderVO;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<OrderVO> orderList( ) {		
		return mybatis.selectList("OrderDAO.orderList");
	}
	public OrderVO orderListDetail(int orderNo) {
		return mybatis.selectOne("OrderDAO.orderListDetail",orderNo);
	}
	
	  public int canceledOrder(int orderNo) { return
	  mybatis.selectOne("OrderDAO.canceledOrder",orderNo);
	}
	public List<OrderVO> canceledOrderListView(){
		return mybatis.selectList("OrderDAO.canceledOrderListView");

	}
	 

}
