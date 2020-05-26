package com.sist.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.DetailMapper;
import com.sist.vo.CelebVO;
import com.sist.vo.Naver_JoinVO;

@Repository
public class JoinDAO {
	@Autowired
	DetailMapper mapper;
	public List<Naver_JoinVO> getJoinByMovieId(int movie_id){
		return mapper.getJoinByMovieId(movie_id);
	}
	
	public CelebVO getCastByCastId(int cast_id){
		return mapper.getCastByCastId(cast_id);
	}
}
