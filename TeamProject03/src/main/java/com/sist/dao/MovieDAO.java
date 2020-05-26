package com.sist.dao;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MovieMapper;
import com.sist.vo.MovieDetailVO;
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
	public ArrayList<MovieDetailVO> getMovieList(Map map)
	{
		return mapper.getMovieList(map);
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
	public int getTotalPage(int count)
	{
		return mapper.getTotalPage(count);
	}
	public ArrayList<MovieDetailVO> getMovieAllList()
	{
		return mapper.getMovieAllList();

	}
}
