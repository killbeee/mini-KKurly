package com.ezen.springboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.springboard.VO.OrderVO;
import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.order.OrderService;
import com.ezen.springboard.service.user.UserService;


@Controller
@RequestMapping("/order") // 모든 주소 앞에 /user 붙음! (폴더구조라고 생각하면 편함)
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private UserService userService;
	
	@RequestMapping("/orderList.do")
	public String orderList(Model model) {
		
		List<OrderVO> orderLists = orderService.orderList();
		
		model.addAttribute("orderLists",orderLists);
		return "admin/orderList";
	}
		
	@GetMapping("/orderListDetail.do")
	public String orderListDetail(Model model,@RequestParam("orderNo") int orderNo, @RequestParam("userNo") int userNo) {
		
		//유저vo타입 가지고옴
		UserVO userVo = userService.getUser(userNo);
		
		OrderVO orderVO = orderService.orderListDetail(orderNo);
		
		int canceledOrder = orderService.canceledOrder(orderNo);
		
		if(canceledOrder>0) {
			model.addAttribute("canceled","취소된 구매");
		}else {model.addAttribute("canceled","정상 구매");}
	
		model.addAttribute("orderVO",orderVO);
		model.addAttribute("userVo",userVo);
		return "admin/orderListDetail";
	}
	@RequestMapping("canceledOrderList.do")
	public String canceledOrderListView(Model model) {
		List<OrderVO> orderLists = orderService.canceledOrderListView();
		
		model.addAttribute("orderLists",orderLists);
		return "admin/canceledOrderList";
	}
	
 	
}