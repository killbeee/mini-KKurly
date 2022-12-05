package com.ezen.springboard.service.user.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.user.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public List<UserVO> manageUser(Map<String, String> paramMap) {
		return userDAO.manageUser(paramMap);
	}

	@Override
	public void updateUser(Map<String, Object> paramMap) {

		userDAO.updateUser(paramMap);
	}

	@Override
	public void deleteUser(int no) {
		userDAO.deleteUser(no);
	}

	@Override
	public UserVO getUser(int userNo) {

		return userDAO.getUser(userNo);
	}

	@Override
	public UserVO findId(UserVO userVO) {
		return userDAO.findId(userVO);
	}

	@Override
	public UserVO findPw(UserVO userVO) {
		return userDAO.findPw(userVO);
	}

	@Override
	public int idCheck(String userId) {
		return userDAO.idCheck(userId);
	}

	@Override
	public int join(UserVO userVO) {
		return userDAO.join(userVO);
	}

	@Override
	public UserVO login(UserVO userVO) {
		return userDAO.login(userVO);
	}

	@Override
	public void userUpdate(UserVO userVO) {
		userDAO.userUpdate(userVO);
	}



}
