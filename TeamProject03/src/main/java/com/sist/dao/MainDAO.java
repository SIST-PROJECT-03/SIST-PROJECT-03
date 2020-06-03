
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
	
	 public List<MovieVO> locRecomm(Map map)
	 {
		 System.out.println(map);
		 return mapper.locRecomm(map);
	 }
	
	 public List<MovieVO> specialRecomm(Map map)
	 {
		 return mapper.specialRecomm(map);
	 }
	 
	 
	 
}
