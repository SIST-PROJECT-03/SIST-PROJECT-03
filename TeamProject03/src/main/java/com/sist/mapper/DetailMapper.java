package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.CelebVO;
import com.sist.vo.Naver_JoinVO;

public interface DetailMapper {
	@Select("SELECT * FROM naver_join WHERE movie_id = #{movie_id}")
	public List<Naver_JoinVO> getJoinByMovieId(int movie_id);
	
	@Select("SELECT * FROM cast WHERE cast_id = #{cast_id}")
	public CelebVO getCastByCastId(int cast_id);
}
