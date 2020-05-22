package com.sist.mapper;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.MovieVO;

import java.util.*;
public interface MainMapper {

	
	@Select("SELECT * FROM naver_re_movies")
	public List<MovieVO> mainListData();
}
