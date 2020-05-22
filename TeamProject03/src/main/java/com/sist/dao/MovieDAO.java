package com.sist.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MovieMapper;
import com.sist.vo.MovieDetailVO;

@Repository
public class MovieDAO {
	@Autowired
	private MovieMapper mapper; 
	public MovieDetailVO getMovieDetailData(int movie_id)
	   {
		   return mapper.getMovieDetailData(movie_id);
	   }
}
