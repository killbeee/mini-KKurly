package com.ezen.springboard.service.main;

import java.util.List;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.VO.UserLikeVO;

public interface MainService {


	List<ProdVO> getProdCdList(String cd);
	
	List<ProdVO> getProdList(String prodNm);
	
	List<ProdVO> getBestProdList();
	
	List<ProdVO> getTopSaleProdList();
	
	List<ProdVO> getRandomProdList();
	
//	int getProdCnt(String cd);
	
	String getCgNm (String cd);
	
	ProdVO getProd(int prodNo);
	
	void insertLike(int userNo, int prodNo);

	List<UserLikeVO> getLikeList(UserLikeVO likeVO);
	
	void deleteLike(int userNo, int prodNo);
	
	List<ProdVO> getUserLikeList(int userNo);
}
