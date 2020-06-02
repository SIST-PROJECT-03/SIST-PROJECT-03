
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
	public List<MovieVO> ageRecommendation(String user_age)
	 {
	      return mapper.ageRecommendation(user_age);
	 }
	
	// 추천 3 : 성별
	public List<MovieVO> genderRecommendation(String user_gender)
	{
		return mapper.genderRecommendation(user_gender);
	}
	
	// 추천 4 : 감상포인트 
	public List<MovieVO> pointRecommendation(String user_point)
	{
		return mapper.pointRecommendation(user_point);
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
	
	 // 추천 6: 지역
	 public List<MovieVO> locRecomm(String user_loc)
	 {
		 System.out.println(user_loc);
		 return mapper.locRecomm(user_loc);
	 }
	
	// 추천7 :전문가 평점!
	 public List<MovieVO> specialRecomm(String user_genre)
	 {
		 return mapper.specialRecomm(user_genre);
	 }
	 
	 
	 
}
