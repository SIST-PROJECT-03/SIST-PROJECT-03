package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

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
	
}
