package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.CelebVO;
import com.sist.vo.GenreVO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.MovieJoinVO;
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
	
	@Select("SELECT * FROM cast WHERE cast_id in (Select cast_id from naver_join WHERE movie_id=#{movie_id} and role = '감독')")
	public CelebVO getDirectorData(int movie_id);
	
	@Select("SELECT * FROM cast WHERE cast_id in (Select cast_id from naver_join WHERE movie_id=#{movie_id} and role = '배우')")
	public List<CelebVO> getActorData(int movie_id);
	
	@Select("SELECT genre FROM movie_genre_mapper WHERE movie_id=#{movie_id}")
	public List<String> getGenreData(int movie_id);
	
}
