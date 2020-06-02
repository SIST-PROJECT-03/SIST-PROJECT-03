
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

	public List<MovieVO> ageRecommendation(Map map)
	 {
	      return mapper.ageRecommendation(map);
	 }
	
	public List<MovieVO> genderRecommendation(Map map)
	{
		return mapper.genderRecommendation(map);
	}
 
	public List<MovieVO> pointRecommendation(Map map)
	{
		return mapper.pointRecommendation(map);
	}

	public List<MovieVO> bigSliderList()
	{
		return mapper.bigSliderList();
	}
 
	 public List<MovieVO> genreRecomm(String user_genre)
	 {
	     System.out.println(user_genre);
	     return mapper.genreRecomm(user_genre);
	 }
	
	 public List<MovieVO> locRecomm(String user_loc)
	 {
		 System.out.println(user_loc);
		 return mapper.locRecomm(user_loc);
	 }
	
	 public List<MovieVO> specialRecomm(String user_genre)
	 {
		 return mapper.specialRecomm(user_genre);
	 }
	 
	 
	 
}
