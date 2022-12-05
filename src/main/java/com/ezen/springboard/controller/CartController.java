package com.ezen.springboard.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.springboard.VO.CartVO;
import com.ezen.springboard.VO.OrderDetailVO;
import com.ezen.springboard.VO.OrderVO;
import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.cart.CartService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	

	
	@RequestMapping("/cartList.do")
	public String cartList(@RequestParam("tmp") String tmpData, HttpSession session, Model model) throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<Map<String, Object>> listMap = mapper.readValue(tmpData, new TypeReference<List<Map<String, Object>>>(){});
		
		UserVO tmpUser = (UserVO)session.getAttribute("loginUser");
		
		List<ProdVO> coldList = new ArrayList<ProdVO>();
		List<ProdVO> frozenList = new ArrayList<ProdVO>();
		List<ProdVO> normalList = new ArrayList<ProdVO>();
		
		List<Integer> coldQtyList = new ArrayList<Integer>();
		List<Integer> frozenQtyList = new ArrayList<Integer>();
		List<Integer> normalQtyList = new ArrayList<Integer>();
//		
//		System.out.println("cartList.do");
//		try {
//			System.out.println("- " + tmpUser);
//		} catch (Exception e) {
//			
//		}
		
		String cgCd = "";
		String temp = "";
		int prodPrice = 0;
		int totalPrice = 0;
		
		try {
			System.out.println("try");
			for (Map<String, Object> tmp : listMap) {
				/*
				tmp.prodNo  : 상품 번호  
				tmp.prodQty : 구매 수량  
				*/
				//System.out.print("prodNo : " + tmp.get("prodNo") + ", ");
				//System.out.println("prodQty : " + tmp.get("prodQty"));
				CartVO cartVO = new CartVO();
				
				int prodNo = Integer.parseInt(String.valueOf(tmp.get("prodNo")));
				int prodQty = Integer.parseInt(String.valueOf(tmp.get("prodQty")));
				
				ProdVO prod = cartService.getProd(prodNo);
				cgCd = prod.getProdCgcd();
				temp = cgCd.substring(0,3);
				
				prodPrice += prod.getProdPrice();
				if(temp.equals("T01")) {
					normalList.add(prod);
					normalQtyList.add(prodQty);
				} else if (temp.equals("T02")){
					coldList.add(prod);
					coldQtyList.add(prodQty);
				} else {
					frozenList.add(prod);
					frozenQtyList.add(prodQty);
				}	
				
				if (tmpUser != null && tmpUser.getUserId() != "") {
					int userNo = tmpUser.getUserNo();
					cartVO.setProdNo(prodNo);
					cartVO.setQty(prodQty);
					cartVO.setUserNo(userNo);
					cartService.insertCart(cartVO);
				}
			}
			
			// 로그인 확인 
			//UserVO getUserId = session.getAttribute("loginUser");
			//System.out.println(session.getAttribute("loginUser"));
			
//			System.out.println("user check");
			if (tmpUser != null && tmpUser.getUserId() != "") {
//				System.out.println("login");
				
				normalList.clear();
				coldList.clear();
				frozenList.clear();
				normalQtyList.clear();
				coldQtyList.clear();
				frozenQtyList.clear();
				prodPrice = 0;
				
				int userNo = tmpUser.getUserNo();
				List<CartVO> cartList = cartService.getCartList(userNo);
				
				for (CartVO t : cartList) {
					int prodNo = t.getProdNo();
					int prodQty = t.getQty();
					
					ProdVO prod = cartService.getProd(prodNo);
					cgCd = prod.getProdCgcd();
					temp = cgCd.substring(0,3);
					
					prodPrice += prod.getProdPrice();
					if(temp.equals("T01")) {
						normalList.add(prod);
						normalQtyList.add(prodQty);
					} else if (temp.equals("T02")){
						coldList.add(prod);
						coldQtyList.add(prodQty);
					} else {
						frozenList.add(prod);
						frozenQtyList.add(prodQty);
					}
				}
				
			} else {
				System.out.println("non");
			}

			totalPrice = prodPrice;
			
			model.addAttribute("coldList", coldList);
			model.addAttribute("frozenList", frozenList);
			model.addAttribute("normalList", normalList);
			
			model.addAttribute("coldQtyList", coldQtyList);
			model.addAttribute("frozenQtyList", frozenQtyList);
			model.addAttribute("normalQtyList", normalQtyList);
			
			model.addAttribute("prodPrice", prodPrice);
			model.addAttribute("totalPrice", totalPrice);
			
			// 로그인인지 비로그인인지 확인해서 따로 데이터를 전달 
			// 비로그인 : localstorage에서 가져옴 -> 그냥 localstorage 에서 가지고 온다.
			//   로그인 : db에서 가지고 옴        -> 회원 번호를 가지고 장바구니 테이블에서 가지고 온다.
			// Model로? session으로?
			
			// input : prodNo
			// 비로그인 : 로컬 저장소(localstorage)    -> 상품 번호 -> 상품 테이블 -> model
			//   로그인 : 회원 번호 -> 장바구니 테이블 -> 상품 번호 -> 상품 테이블 -> model
			
			// output : 상품 정보 리스트 
			
		} catch (Exception e) {
			System.out.println("try error : " + e);
		}
		
		return "/cart/cartList";
	}
	
	@RequestMapping("/order.do")
	public String order(HttpSession session, @RequestParam("order") String tmpData, Model model) throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
//		
//		Map<String, List<Map<String, Object>>> listMap = mapper.readValue(tmpData, new TypeReference<Map<String, <List<Map<String, Object>>>>>(){});
//		
		Map<String, Object> listMap = mapper.readValue(tmpData, new TypeReference<Map<String, Object>>(){});
		
//		System.out.println(listMap.toString());
//		System.out.println(listMap.get("userNo"));
//		System.out.println(listMap.get("prodInfo"));
		Object tmp = listMap.get("prodInfo");
		String strTmp = String.valueOf(tmp);
		
		List<Map<String, String>> t = mapper.readValue(strTmp, new TypeReference<List<Map<String, String>>>(){});

		List<ProdVO> prodList = new ArrayList<ProdVO>();
		List<Integer> qtyList = new ArrayList<Integer>();
		List<Integer> priceList = new ArrayList<Integer>();
		
		String cgCd = "";
		String temp = "";
		int prodPrice = 0;
		int totalPrice = 0;
		
		for (Map<String, String> tt : t) {
//			System.out.print(tt.get("prodNo") + " ");
//			System.out.println(tt.get("prodQty"));
			CartVO cartVO = new CartVO();
			
			int prodNo = Integer.parseInt(String.valueOf(tt.get("prodNo")));
			int prodQty = Integer.parseInt(String.valueOf(tt.get("prodQty")));
			
			ProdVO prod = cartService.getProd(prodNo);
			cgCd = prod.getProdCgcd();
			temp = cgCd.substring(0,3);
			int price = prod.getProdPrice();
			prodPrice += price;
			
//			prodPrice += prod.getProdPrice();
			priceList.add(price * prodQty);
			prodList.add(prod);
			qtyList.add(prodQty);
			
		}
		
		
		//OrderVO orderVO = new OrderVO();
		UserVO userVO = (UserVO)session.getAttribute("loginUser");
		//System.out.println(userVO)
		// 주소
//		String userAdr = userVO.getUserAdr(); // 안됨 
		int userNo = userVO.getUserNo();
		String userAdr = cartService.getUserAddr(userNo);
		
		
		System.out.println("userAddr: " + userAdr);
		
		System.out.println(prodList.toString());
		//System.out.println(userVO.toString());
		
		model.addAttribute("prodList", prodList);
		model.addAttribute("qtyList", qtyList);
		model.addAttribute("priceList", priceList);
		model.addAttribute("userVO", userVO);
		model.addAttribute("prodPrice", prodPrice);
		model.addAttribute("userAdr", userAdr);
		
		session.setAttribute("prodList", prodList);
		session.setAttribute("qtyList", qtyList);
		session.setAttribute("priceList", priceList);
		
		return "/cart/order";
	}
	
	@PostMapping("/deleteItemCart.do")
	@ResponseBody
	public String deleteItemCart(String prodNo, HttpSession session) {
		UserVO tmpUser = (UserVO)session.getAttribute("loginUser");
		int userNo = tmpUser.getUserNo();
		int prod = Integer.parseInt(prodNo);
		
		cartService.deleteItem(prod, userNo);
		
		return "good";
	}

	@PostMapping("/updateItemCart.do")
	@ResponseBody
	public String updateItemCart(String prodNo, String prodQty, HttpSession session) {
		
		UserVO tmpUser = (UserVO)session.getAttribute("loginUser");
		int userNo = tmpUser.getUserNo();
		int prod = Integer.parseInt(prodNo);
		int qty = Integer.parseInt(prodQty);
		
		cartService.updateItem(prod, qty, userNo);
		
		return "good";
	}
	
	@RequestMapping("/payment.do")
	public String payment(HttpSession session, @RequestParam("resultInput") int price) {
	
		
		OrderVO orderVO = new OrderVO();
		UserVO userVO = (UserVO)session.getAttribute("loginUser");
		//System.out.println(userVO)
		// 주소 
		int userNo = userVO.getUserNo();
		String userNm = userVO.getUserNm();
		String userAdr = cartService.getUserAddr(userNo);
		String userTel = userVO.getUserTel();
		
		orderVO.setUserNo(userNo);
		orderVO.setReceiverNm(userNm);
		orderVO.setAdrNo(userAdr);
		orderVO.setReceiverTel(userTel);
		orderVO.setPayWay("무통장입금");
		orderVO.setOrderStatus("배송 준비");
		String p = Integer.toString(price);
		orderVO.setTotalPrice(p);
		
		//System.out.println(orderVO.toString());klk
		cartService.setOrderInfo(orderVO);
		
		List<ProdVO> prodList = (List<ProdVO>)session.getAttribute("prodList");
		List<Integer> qtyList = (List<Integer>)session.getAttribute("qtyList");
		List<Integer> priceList = (List<Integer>)session.getAttribute("priceList");
		
		
		OrderDetailVO detailVO = new OrderDetailVO();
//		private int orderNo;
//		private String orderDNo;
//		private int prodQty;
//		private String couponNo;
//		private String totalPrice;

		//System.out.println(prodList);
		int orderNo = cartService.getOrderNo(userNo);
		for (int i = 0; i< prodList.size(); i++) {
			detailVO.setOrderNo(orderNo);
			detailVO.setProdNo(prodList.get(i).getProdNo());
			detailVO.setProdQty(qtyList.get(i));
			detailVO.setTotalPrice(Integer.toString(priceList.get(i)));
			//System.out.println("detail: " + detailVO);
			cartService.setOrderDetail(detailVO);
		}

		
		return "/index";
	}
	
}