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

	
	// 추천 2 :  나이  
	public List<MovieVO> ageRecommendation()
	 {
	      return mapper.ageRecommendation();
	 }
	
	// 추천 3 : 성별
	public List<MovieVO> genderRecommendation(String gender)
	{
		return mapper.genderRecommendation(gender);
	}
	
	// 추천 4 : 감상포인
	public List<MovieVO> pointRecommendation(String point)
	{
		return mapper.pointRecommendation(point);
	}
	// 슬라이더 
	public List<MovieVO> bigSliderList()
	{
		return mapper.bigSliderList();
	}
	
	// 추천 5 : 장르  
	 public List<MovieVO> genreRecomm(String user_genre)
	 {
	     System.out.println(user_genre);
	     return mapper.genreRecomm(user_genre);
	 }
	
	
}
