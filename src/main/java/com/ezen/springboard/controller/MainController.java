package com.ezen.springboard.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.VO.UserLikeVO;
import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.main.MainService;

@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	MainService mainService;

	// 카테고리 선택 시 해당 카테고리 상품 출력
	@RequestMapping("/categori.do")
	public String getProdCdList(@RequestParam("CD") String cd, Model model) {

		System.out.println("=============== 선택한 카테고리 : "+ cd +" ===============");

		List<ProdVO> prodList = mainService.getProdCdList(cd);
		String cgNm = mainService.getCgNm(cd);

		for (ProdVO element : prodList) {
			System.out.println(element);
		}
		
		model.addAttribute("prodList",prodList);
		model.addAttribute("cnt", prodList.size());
		model.addAttribute("cgNm",cgNm);

		return "main/categoriesMain";
	}
	
	
	// 검색시 해당 검색어가 상품 이름에 포함된 상품 출력
	@RequestMapping("/search.do")
	public String getProdList(@RequestParam("prodNm") String prodNm, Model model) {

		System.out.println("=============== 검색어 : "+ prodNm +" ===============");

		List<ProdVO> prodList = mainService.getProdList(prodNm);

		for (ProdVO element : prodList) {
			System.out.println(element);
		}
		
		model.addAttribute("prodList",prodList);
		model.addAttribute("cnt", prodList.size());
		model.addAttribute("cgNm","검색 결과");

		return "main/categoriesMain";
	}
	
	@RequestMapping("/getBestProdList.do")
	public String getBestProdList(Model model) {

		System.out.println("=============== 신상품 리스트 ===============");

		List<ProdVO> prodList = mainService.getBestProdList();

		for (ProdVO element : prodList) {
			System.out.println(element);
		}
		
		model.addAttribute("prodList",prodList);
		model.addAttribute("cnt", prodList.size());
		model.addAttribute("cgNm","신상품");

		return "/main/categoriesMain";
	}
	
	@RequestMapping("/getTopSaleProdList.do")
	public String getTopSaleProdList(Model model) {

		System.out.println("=============== 베스트 상품 리스트 ===============");

		List<ProdVO> prodList = mainService.getTopSaleProdList();

		for (ProdVO element : prodList) {
			System.out.println(element);
		}
		
		model.addAttribute("prodList",prodList);
		model.addAttribute("cnt", prodList.size());
		model.addAttribute("cgNm","베스트");

		return "/main/categoriesMain";
	}
	
	@RequestMapping("/getLikeList.do")
	public String getLikeList(@RequestParam("prodNo") int prodNo,HttpSession session) {
		
		UserVO user = (UserVO) session.getAttribute("loginUser");
		boolean likeCheck = false;
		
		if(user != null) {
			System.out.println("===== Like 목록 확인 =====");
			
			int userNo = user.getUserNo();
			UserLikeVO likeVO = new UserLikeVO();
			likeVO.setProdNo(prodNo);
			likeVO.setUserNo(userNo);
			
			List<UserLikeVO> list = mainService.getLikeList(likeVO);
			
			// 해당 상품을 좋아요 했는지 확인 후 참, 거짓값 저장
			for(int i = 0; i < list.size(); i++) {
				if(list.get(i).getProdNo() == prodNo) {
					likeCheck = true;
				}
			}
		} 
		
		return "redirect:/main/getProdMain.do?prodNo=" + prodNo + "&likeCheck=" + likeCheck ;
	}
	
	// 상품 클릭 시 상품 상세 화면 출력
	@RequestMapping("/getProdMain.do")
	public String getProdMain(@RequestParam("prodNo") int prodNo, 
			@RequestParam(value = "likeCheck") boolean likeCheck , Model model) {
		ProdVO prod = mainService.getProd(prodNo);
		
		String cgCd = prod.getProdCgcd();
		String temp = cgCd.substring(0,3);
		
		if(temp.equals("T01")) {
			temp = "상온";
		} else if (temp.equals("T02")){
			temp = "냉장";
		} else {
			temp = "냉동";
		}
		
		model.addAttribute("prod", prod);
		model.addAttribute("temp",temp);
		model.addAttribute("likeCheck",likeCheck);
		
		return "/main/getProdMain";
	}
	
	// 상세화면에서 하트 클릭 시 좋아요 목록 추가
	@RequestMapping(value = "/insertLike.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String insertLike(@RequestParam("prodNo") String prodNo, HttpSession session,Model model) {
		System.out.println("==================================");
		System.out.println("===== 좋아요 선택한 상품 번호 : "+ prodNo +  " ======");
		
		UserVO user = (UserVO) session.getAttribute("loginUser");
		if(user == null || user.equals("")) {
			System.out.println("===== no user! =====");
			String likeMsg = "로그인하셔야 본 서비스를 이용하실 수 있습니다.";
			return likeMsg;
		} 
		int userNo = user.getUserNo();
		System.out.println("===== 로그인 유저 번호 : " + userNo + " ======");
		mainService.insertLike(userNo, Integer.parseInt(prodNo) );
		return null;
	}
	
	@RequestMapping("/deleteLike.do")
	public void deleteLike(@RequestParam("prodNo") String prodNo, HttpSession session) {
		System.out.println("==================================");
		System.out.println("===== 좋아요 취소한 상품 번호 : "+ prodNo +  " ======");
		
		UserVO user = (UserVO) session.getAttribute("loginUser");
		int userNo = user.getUserNo();
		System.out.println("===== 로그인 유저 번호 : " + userNo + " ======");
		mainService.deleteLike(userNo, Integer.parseInt(prodNo) );
	}
	
	@RequestMapping("/getUserLikeList.do")
	public String getUserLikeList(@RequestParam(value = "userNo", required = false, defaultValue = "0") int userNo, Model model) {
		if(userNo == 0) {
//			System.out.println("로그인해주세요;;");
			model.addAttribute("loginMsg",true);
		} else {
//			model.addAttribute("loginMsg","");
			List<ProdVO> prodList = mainService.getUserLikeList(userNo);
		
			model.addAttribute("prodList",prodList);
			model.addAttribute("cnt", prodList.size());
			model.addAttribute("cgNm","찜한 상품");
		}
		
		return "/main/categoriesMain";
	}
}
