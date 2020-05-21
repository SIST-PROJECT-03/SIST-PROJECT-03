package com.sist.mapper;

import org.apache.ibatis.annotations.Select;

import com.sist.dao.MovieDetailVO;

public interface MovieMapper {
	@Select("SELECT * FROM naver_re_movies WHERE movie_id=#{movie_id}")
	public MovieDetailVO getMovieDetailData(int movie_id);
	
	
}
