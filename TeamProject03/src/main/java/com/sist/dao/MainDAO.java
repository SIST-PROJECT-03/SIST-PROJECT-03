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
	
	public List<MovieVO> ageRecommendation()
	 {
	      return mapper.ageRecommendation();
	 }
	
	
	public List<MovieVO> bigSliderList()
	{
		return mapper.bigSliderList();
	}
	
/*	public List<MovieGenreVO> selectGenre(int movie_id)
	{
		return mapper.selectGenre(movie_id);
		
	}*/
	
	
}
