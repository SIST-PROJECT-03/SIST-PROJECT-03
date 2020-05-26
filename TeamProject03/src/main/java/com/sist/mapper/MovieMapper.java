package com.sist.mapper;

import java.util.ArrayList;
import java.util.*;


import org.apache.ibatis.annotations.Select;

import com.sist.vo.CelebVO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.MoviePicturesVO;
import com.sist.vo.WatchingTrendVO;

public interface MovieMapper {
	@Select("SELECT * FROM naver_re_movies WHERE movie_id=#{movie_id}")
	public MovieDetailVO getMovieDetailData(int movie_id);
	
	@Select("SELECT * FROM watching_trend WHERE movie_id=#{movie_id}")
	public WatchingTrendVO getWatchingTrend(int movie_id);
	
	@Select("SELECT img FROM movie_re_pictures WHERE movie_id=#{movie_id}")
	public List<String> getMoviePictures(int movie_id);
	
	@Select("SELECT url FROM movie_re_pictures WHERE movie_id=#{movie_id} AND url IS NOT NULL")   
	public List<String> getMovieUrl(int movie_id);
	
	@Select("SELECT num,movie_id,title,grade,opening_date,genre,country,running_time,hit,audience_count,story,poster " 
			+ "from (SELECT rownum as num,naver_re_movies.* from naver_re_movies) "
			+ "WHERE num between #{start} AND #{end}")
	public ArrayList<MovieDetailVO> getMovieList(Map map);
	
	@Select("SELECT CEIL(count(*)/#{count}) FROM naver_re_movies")
	public int getTotalPage(int count);
	
	@Select("SELECT * FROM naver_re_movies WHERE movie_id between 1 AND 10521")
	public ArrayList<MovieDetailVO> getMovieAllList();
}