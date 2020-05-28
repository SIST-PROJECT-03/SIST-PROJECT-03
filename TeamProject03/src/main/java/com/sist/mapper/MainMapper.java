package com.sist.mapper;


import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;

import java.util.*;
public interface MainMapper {


	// 추천1) 인기순 <- 모든 연령대 산술평균 평점 높은 순

	
	// sessionScope.email 값 넣어주기
	@Select("SELECT age FROM movie_member WHERE email=#{sessionScope.email}")
	public List<MemberVO> getAgeInfo(); 
	
	//10대
	@Results({
		@Result(property="title",column="title"),
		@Result(property="poster",column="poster"),
		@Result(property="netvo.movie_id",column="movie_id"),
		@Result(property="netvo.age_10",column="age_10")
	})
	// 추천2) 연령대 (지금은 10대라고 가정)
	@Select("SELECT age_10,title,poster "
			+ "FROM netizen_evaluation_trend,naver_re_movies "
			+ "WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum<50 ORDER BY age_10")
	public List<MovieVO> ageRecommendation();
	
}
