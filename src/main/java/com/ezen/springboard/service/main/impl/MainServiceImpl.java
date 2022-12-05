package com.ezen.springboard.service.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.VO.UserLikeVO;
import com.ezen.springboard.service.main.MainService;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	MainDAO mainDAO;

	@Override
	public List<ProdVO> getProdCdList(String cd) {
		return mainDAO.getProdCdList(cd);
	}

	@Override
	public List<ProdVO> getProdList(String prodNm) {
		return mainDAO.getProdList(prodNm);
	}

//	@Override
//	public int getProdCnt(String cd) {
//		return mainDAO.getProdCnt(cd);
//	}

	@Override
	public String getCgNm(String cd) {
		return mainDAO.getCgNm(cd);
	}

	@Override
	public ProdVO getProd(int prodNo) {
		return mainDAO.getProd(prodNo);
	}

	@Override
	public void insertLike(int userNo, int prodNo) {
		mainDAO.insertLike(userNo, prodNo);
	}

	@Override
	public List<UserLikeVO> getLikeList(UserLikeVO likeVO) {
		return mainDAO.getLikeList(likeVO);
	}

	@Override
	public void deleteLike(int userNo, int prodNo) {
		mainDAO.deleteLike(userNo, prodNo);
	}

	@Override
	public List<ProdVO> getBestProdList() {
		return mainDAO.getBestProdList();
	}

	@Override
	public List<ProdVO> getTopSaleProdList() {
		return mainDAO.getTopSaleProdList();
	}

	@Override
	public List<ProdVO> getRandomProdList() {
		return mainDAO.getRandomProdList();
	}

	@Override
	public List<ProdVO> getUserLikeList(int userNo) {
		return mainDAO.getUserLikeList(userNo);
	}

}
