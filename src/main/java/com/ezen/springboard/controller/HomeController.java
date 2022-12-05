package com.ezen.springboard.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.VO.UserLikeVO;
import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.main.MainService;

@Controller
public class HomeController {
	@Autowired
	MainService mainService;
	
	@RequestMapping("/")
	public String home(Model model,HttpSession session) {
		
		List<ProdVO> list = mainService.getRandomProdList();
		model.addAttribute("prodList",list);
		
		UserVO user = (UserVO) session.getAttribute("loginUser");
		System.out.println(user);
		boolean sysCheck = false;
		
		if(user != null) {
			if(user.getUserId().equals("system")) {
				sysCheck = true;
				/* model.addAttribute("sysCheck",sysCheck); */
				System.out.println("운영자 로그인");
			}
		}
		model.addAttribute("sysCheck",sysCheck);	
		
		return "/index";
	}
}
