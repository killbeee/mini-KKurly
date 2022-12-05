package com.ezen.springboard.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.springboard.VO.Criteria;
import com.ezen.springboard.VO.LookupVO;
import com.ezen.springboard.VO.PageVO;
import com.ezen.springboard.service.lookup.LookupService;

@Controller
@RequestMapping("/lookup")
public class LookupController {
	@Autowired
	private LookupService lookupService;
	
	//상품 목록 화면으로 이동
	@RequestMapping("/getLookupList.do")
	public String getLookupList(Model model, @RequestParam Map<String, String> paramMap, Criteria cri) {
		List<LookupVO> lookupList = lookupService.getLookupList(paramMap);
		
		model.addAttribute("lookupList", lookupList);
		
		if(paramMap.get("searchCondition") != null && !paramMap.get("searchCondition").equals(""))
			model.addAttribute("searchCondition", paramMap.get("searchCondition"));
		
		if(paramMap.get("searchKeyword") != null && !paramMap.get("searchKeyword").equals(""))
			model.addAttribute("searchKeyword", paramMap.get("searchKeyword"));
		
		int total = lookupService.getLookupTotalCnt(paramMap);
		
		System.out.println(total);
		model.addAttribute("pageVO", new PageVO(cri, total));
		
		return "board/getLookupList";
		
	}
}

	


