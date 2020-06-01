package com.sist.dao;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MovieMapper;
import com.sist.vo.CelebVO;
import com.sist.vo.GenreVO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.MovieJoinVO;
import com.sist.vo.MoviePicturesVO;
import com.sist.vo.WatchingTrendVO;

@Repository
public class MovieDAO {
	@Autowired
	private MovieMapper mapper; 
	
	public MovieDetailVO getMovieDetailData(int movie_id)
	{
	   return mapper.getMovieDetailData(movie_id);
	}

	public WatchingTrendVO getWatchingTrend(int movie_id)
	{
		return mapper.getWatchingTrend(movie_id);
	}
	public List<String> getMoviePictures(int movie_id)
	{
		return mapper.getMoviePictures(movie_id);
	}
	public List<String> getMovieUrl(int movie_id)
	{
		return mapper.getMovieUrl(movie_id);
	}
	public CelebVO getDirectorData(int movie_id){
		return mapper.getDirectorData(movie_id);
	}
	
	public List<CelebVO> getActorData(int movie_id){
		return mapper.getActorData(movie_id);
	}
	
	public List<String> getGenreData(int movie_id){
		return mapper.getGenreData(movie_id);
	}
	
	public List<MovieDetailVO> getMovieList(Map map){
		return mapper.getMovieList(map);
	}
	
	public int getTotalPage(Map map){
		return mapper.getTotalPage(map);
	}
	
	
}
