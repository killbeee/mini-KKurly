package com.ezen.springboard.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ezen.springboard.VO.CateVO;
import com.ezen.springboard.VO.ProdFileVO;
import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.product.ProductService;

import common.FileUtils;

@Controller
@RequestMapping("/product") // 모든 주소 앞에 /user 붙음! (폴더구조라고 생각하면 편함)
public class ProductController {
	@Autowired
	private ProductService prodService;
	
	//상품 목록 및 검색
	@RequestMapping("/searchProduct.do")
	public String searchProduct(Model model, @RequestParam Map<String, String> paramMap) {
		List<ProdVO> prodList = prodService.searchProduct(paramMap);
		
		model.addAttribute("prodList", prodList);
		
		if(paramMap.get("searchCondition") != null && !paramMap.get("searchCondition").equals(""))
			model.addAttribute("searchCondition", paramMap.get("searchCondition"));
		
		if(paramMap.get("searchKeyword") != null && !paramMap.get("searchKeyword").equals(""))
			model.addAttribute("searchKeyword", paramMap.get("searchKeyword"));
		
		return "admin/searchProduct";
	}
	
	//post 방식은 해당 로직 처리
	@PostMapping("/prodNameCheck.do")
	@ResponseBody
	public boolean prodNameCheck(@RequestParam("prodNm") String prodNm) {
		boolean check = prodService.prodNameCheck(prodNm);
		
		if(check) {
			System.out.println("사용가능한 상품명 입니다.");
		}else System.out.println("사용불가능한 상품명 입니다.");
		
		return check;
	}
//	@PostMapping("/prodInsert.do")
//	public String prodInsert(ProdVO prodVO) {
//		prodService.prodInsert(prodVO);
//		return "admin/prodInsert";
//	}
	
	
//	prodService.prodInsert(prodVO);

	//새 상품 등록
	@PostMapping("/prodInsert.do")
	public String prodInsert(ProdVO prodVO, MultipartFile uploadFiles,
			HttpServletRequest request) throws IOException {
		ProdFileVO prodFile = new ProdFileVO();
		
		//getOriginalFileName() : 업로드한 파일의 파일명 
		if(!uploadFiles.getOriginalFilename().equals("") &&
			uploadFiles.getOriginalFilename() != null) {
//			String attachPath = request.getSession().getServletContext().getRealPath("/") 
//					+ "/upload/";
			String attachPath = request.getSession().getServletContext().getRealPath("/") 
					+ "/upload/";

			
			
			File directory = new File(attachPath);
			
			//해당 폴더가 존재하지 않으면 폴더 생성
			if(!directory.exists()) {
				directory.mkdir();
			}
			
			//multipartFile 배열에서 파일들을 꺼내 DB 형식에 맞게 변경한다.
			
			prodFile = FileUtils.parseFileInfo(uploadFiles, attachPath);
		}

		prodService.prodInsert(prodVO, prodFile);
		
		//등록 후 게시글 목록으로 이동
		return "redirect:searchProduct.do";
	}	
	
	//관리자 페이지 체크용 임시파일
	@GetMapping("/prodInsert.do")
	public String prodInsert2(Model model) {
		List<CateVO> cateVO = prodService.prodInsert2();
		
		model.addAttribute("cateVO",cateVO);
		return "admin/prodInsert";
	}
	//한건 조회
	@GetMapping("searchProductDetail.do")
	public String prodDetail(int prodNo,Model model) {
			ProdVO prodVO= prodService.prodDetail(prodNo);
			
			model.addAttribute("prodVO",prodVO);
		return "admin/searchProductDetail";
	}
	@GetMapping("prodDelete.do")
	public String prodDelete(int prodNo) {
		
		prodService.prodDelete(prodNo);
		
		return "redirect:searchProduct.do";
	}

}
