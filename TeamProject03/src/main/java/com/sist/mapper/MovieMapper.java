package com.sist.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.CelebVO;
import com.sist.vo.MovieDetailVO;

public interface MovieMapper {
	@Select("SELECT * FROM naver_re_movies WHERE movie_id=#{movie_id}")
	public MovieDetailVO getMovieDetailData(int movie_id);
	
	
	@Select("SELECT num,movie_id,title,grade,opening_date,genre,country,running_time,hit,audience_count,story,poster " 
			+ "from (SELECT rownum as num,naver_re_movies.* from naver_re_movies) "
			+ "WHERE num between #{start} AND #{end}")
	public ArrayList<MovieDetailVO> getMovieList(Map map);	
}