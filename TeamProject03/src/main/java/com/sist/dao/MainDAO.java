package com.sist.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MainMapper;
import com.sist.vo.*;

import java.util.*;
@Repository
public class MainDAO {

	@Autowired
	private MainMapper mapper;
	
	//유저 취향 정보
	public MemberVO getUserInfo(String email)
	{
		return mapper.getUserInfo(email);
	}
	
	// 추천 2 :  나이  
	public List<MovieVO> ageRecommendation()
	 {
	      return mapper.ageRecommendation();
	 }
	
	// 추천 3 : 성별
	public List<MovieVO> genderRecommendation()
	{
		return mapper.genderRecommendation();
	}
	
	// 추천 4 : 감상포인
	public List<MovieVO> pointRecommendation()
	{
		return mapper.pointRecommendation();
	}
	// 슬라이더 
	public List<MovieVO> bigSliderList()
	{
		return mapper.bigSliderList();
	}
	
/*	public List<MovieGenreVO> selectGenre(int movie_id)
	{
		return mapper.selectGenre(movie_id);
		
	}*/
	
	
}
