package com.ezen.springboard.service.user;

import java.util.List;
import java.util.Map;

import com.ezen.springboard.VO.UserVO;

public interface UserService {
	public UserVO getUser(int userNo);

	List<UserVO> manageUser(Map<String, String> paramMap);

	void updateUser(Map<String, Object> paramMap);

	void deleteUser(int no);

	// id중복체크
	int idCheck(String userId);

	// 회원가입
	int join(UserVO userVO);

	// 로그인
	UserVO login(UserVO userVO);

	// id 찾기
	UserVO findId(UserVO userVO);

	// PW 찾기
	UserVO findPw(UserVO userVO);
	
	// 정보 수정
	public void userUpdate(UserVO userVO);
	
}
