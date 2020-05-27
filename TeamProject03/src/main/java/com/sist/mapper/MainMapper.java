package com.sist.mapper;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.MovieVO;

import java.util.*;
public interface MainMapper {

	@Select("SELECT * FROM naver_re_movies")
	public List<MovieVO> mainListData();
	
	// Recommended by female_rating
	@Select("SELECT netizen_evaluation_trend.movie_id,female_rating,title,evaluation_point,poster "
			+ "FROM netizen_evaluation_trend,naver_re_movies WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum<40 "
			+ "ORDER BY female_rating")
	public List<MovieVO> ratingByGender();
}
