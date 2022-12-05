package com.ezen.springboard.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.user.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/user") // 모든 주소 앞에 /user 붙음! (폴더구조라고 생각하면 편함)
public class UserController {
	@Autowired
	private UserService userService;

	// 게시글 목록 화면으로 이동
	@RequestMapping("/manageUser.do")
	public String manageUser(Model model, @RequestParam Map<String, String> paramMap) {
		List<UserVO> userList = userService.manageUser(paramMap);

		model.addAttribute("userList", userList);

		if (paramMap.get("searchCondition") != null && !paramMap.get("searchCondition").equals(""))
			model.addAttribute("searchCondition", paramMap.get("searchCondition"));

		if (paramMap.get("searchKeyword") != null && !paramMap.get("searchKeyword").equals(""))
			model.addAttribute("searchKeyword", paramMap.get("searchKeyword"));

		return "admin/manageUser";
	}

	// 유저 상세 조회
	@RequestMapping("/manageUserDetail.do")
	public String getUser(@RequestParam("userNo") int userNo, Model model) {
		UserVO user = userService.getUser(userNo);

		model.addAttribute("user", user);

		return "admin/manageUserDetail";
	}

	// 유저 정보 수정
	@GetMapping("updateUser.do")
	public String updateUserView(@RequestParam("userNo") int userNo, Model model) {
		UserVO user = userService.getUser(userNo);

		model.addAttribute("user", user);

		return "admin/updateUser";
	}

	@PostMapping("updateUser.do")
	public String updateUser(@RequestParam("userNo") int no, UserVO user) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("userNo", no);
		paramMap.put("userVO", user);
		userService.updateUser(paramMap);

		return "redirect:manageUser.do";
	}

	@GetMapping("deleteUser.do")
	public String deleteUser(@RequestParam("userNo") int no) {
		userService.deleteUser(no);
		return "redirect:manageUser.do";
	}

	// get방식은 해당 화면으로 이동
	@GetMapping("/join.do")
	public String joinView() {
		return "user/join";
	}

	@GetMapping("/findId.do")
	public String findIdView() {
		return "user/findId";
	}

	@GetMapping("/findPw.do")
	public String findPwView() {
		return "user/findPw";
	}

	@GetMapping("/idSearch.do")
	public String idSearchView() {
		return "user/idSearch";
	}

	@GetMapping("/pwSearch.do")
	public String pwSearchView() {
		return "user/pwSearch";
	}

	@GetMapping("/mypage.do")
	public String mypageView() {
		return "user/mypage";
	}

	@GetMapping("/mypage_qna.do")
	public String qnaView() {
		return "user/mypage_qna";
	}

	@GetMapping("/mypage_address.do")
	public String addressView() {
		return "user/mypage_address";
	}

	@GetMapping("/mypage_update.do")
	public String updateView() {
		return "user/mypage_update";
	}
	
	@GetMapping("/mypage_update_detail.do")
	public String updateDetialView() {
		return "user/mypage_update_detail";
	}

	// post방식은 해당 로직 처리
	// 회원가입 진행
	@PostMapping(value = "/join.do", produces = "application/text; charset=UTF-8")
	public String join(UserVO userVO, Model model) {

		String userSub = userVO.getUser_detail_address();
		userVO.setUserAdr(userVO.getUserAdr() + " " + userSub);
		System.out.println(userVO);
		int joinResult = userService.join(userVO);

		if (joinResult == 0) {
			model.addAttribute("joinMsg", "회원가입에 실패하셨습니다. 관리자에게 문의해주세요.");
			return "user/join";
		}

		model.addAttribute("joinMsg", "회원가입에 성공했습니다. 로그인해주세요.");
		return "user/login";
	}

	@PostMapping(value = "/test.do", produces = "application/text; charset=UTF8")
	@ResponseBody
	public String test(@RequestParam("id") String id) throws JsonProcessingException {
		System.out.println(id);

		// json형태의 문자열을 만들어서 리턴한다.
		// 요청에 대한 응답으로 갈 데이터를 json 형태로 변경 => json 문자열로 변경
		ObjectMapper mapper = new ObjectMapper();

		Map<String, Object> jsonMap = new HashMap<>();

		jsonMap.put("test", 123);
		jsonMap.put("firstName", "길동");
		jsonMap.put("lastName", "홍");

		UserVO user = new UserVO();
		user.setUserId("aaa");
		user.setUserPw("1234");
		user.setUserNm("bbb");

		jsonMap.put("user", user);

		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(jsonMap);

		return json;

	}

	@PostMapping("/idCheck.do")
	@ResponseBody
	public String idCheck(UserVO userVO) throws JsonProcessingException {
		String returnStr = "";

		int idCnt = userService.idCheck(userVO.getUserId());

		if (idCnt > 0) {
			returnStr = "duplicatedId";
		} else {
			returnStr = "idOk";
		}

		return returnStr;
	}

	// 로그인 화면으로 이동
	@GetMapping("/login.do")
	public String loginView() {
		return "user/login";
	}

	// 로그인 처리
	@PostMapping("/login.do")
	@ResponseBody
	// HttpSession: 현재 WAS에 접속한 유저의 세션정보를 담고있는 객체
	// 세션에서 사용할 데이터를 담아줄 수 있다.
	public String login(UserVO userVO, HttpSession session) {
		// 1. 아이디 체크
		int idCheck = userService.idCheck(userVO.getUserId());

		if (idCheck < 1) {
			return "idFail";
		} else {
			UserVO loginUser = userService.login(userVO);

			// 2. 비밀번호 체크
			if (loginUser == null) {
				return "pwFail";
			}

			// 3. 로그인 성공
			// 세션에 로그인한 유저의 정보를 담아서 관리
			session.setAttribute("loginUser", loginUser);
			return "loginSuccess";
		}
	}

	@GetMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// id 찾기
	@PostMapping("/findId.do")
	@ResponseBody
	public String findId(UserVO userVO, HttpSession session) {
		// 1. 이름 체크
		int nmCheck = userService.idCheck(userVO.getUserNm());

		if (nmCheck < 1) {
			return "nmFail";
		} else {
			UserVO findIdUser = userService.findId(userVO);

			// 2. 이메일 체크
			if (findIdUser == null) {
				return "emailFail";
			}

			session.setAttribute("findIdUser", findIdUser);
			return "findIdSuccess";
		}
	}

	// pw 찾기
	@PostMapping("/findPw.do")
	@ResponseBody
	public String findPw(UserVO userVO, HttpSession session) {
		// 1. 아이디 체크
		int idCheck = userService.idCheck(userVO.getUserId());

		if (idCheck < 1) {
			return "idFail";
		} else {
			UserVO findPwUser = userService.findPw(userVO);

			// 2. 이름 체크
			if (findPwUser == null) {
				return "nmFail";
			}

			session.setAttribute("findPwUser", findPwUser);
			return "findPwSuccess";
		}
	}
	
	// 정보 수정
	@RequestMapping("/mypage_update_detail.do")
	public String userUpdate(UserVO userVO) {
		System.out.println(userVO);
		userService.userUpdate(userVO);

		return "/user/mypage";
	}
	
}