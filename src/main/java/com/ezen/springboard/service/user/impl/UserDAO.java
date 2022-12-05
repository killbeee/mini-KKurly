package com.ezen.springboard.service.user.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.UserVO;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void updateUser(Map<String, Object> paramMap) {

		mybatis.update("UserDAO.updateUser", paramMap);
	}

	public void deleteUser(int no) {
		mybatis.delete("UserDAO.deleteUser", no);
	}

	public int idCheck(String userId) {
		return mybatis.selectOne("UserDAO.idCheck", userId);
	}

	public int join(UserVO userVO) {
		mybatis.insert("UserDAO.join", userVO);
		return mybatis.insert("UserDAO.joinAdr", userVO);
	}

	public UserVO login(UserVO userVO) {
		return mybatis.selectOne("UserDAO.login", userVO);
	}

	public List<UserVO> manageUser(Map<String, String> paramMap) {
		return mybatis.selectList("UserDAO.manageUser", paramMap);
	}

	public UserVO getUser(int userNo) {
		return mybatis.selectOne("UserDAO.getUser", userNo);
	}

	public UserVO findId(UserVO userVO) {
		return mybatis.selectOne("UserDAO.findId", userVO);
	}

	public UserVO findPw(UserVO userVO) {
		return mybatis.selectOne("UserDAO.findPw", userVO);
	}

	public void userUpdate(UserVO userVO) {
		mybatis.update("UserDAO.userUpdate", userVO);
	}


}
