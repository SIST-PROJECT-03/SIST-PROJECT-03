package com.sist.mapper;



import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;


import com.sist.vo.*;

import java.util.*;
public interface MainMapper {
/*

[ 추천 태그 목록 (순서대로) ]

0) 슬라이더 = 최신순, 인기순, 평점순 Top15     
1) 제작 지역 							  
2) 연령대								   
3) 성별								   
4) 장르								   
5) 감상포인트								
6) 전문가 평점
-------------
7) 사용자유사도 
8) 댓글 분석 

 */
	
	 @Results({
			@Result(property="title",column="title"),
			@Result(property="grade",column="grade"),
			@Result(property="opening_date",column="opening_date"),
			@Result(property="genre",column="genre"),
			@Result(property="country",column="country"),
			@Result(property="running_time",column="running_time"),
			@Result(property="hit",column="hit"),
			@Result(property="audience_count",column="audience_count"),
			@Result(property="story",column="story"),
			@Result(property="poster",column="poster"),
			@Result(property="net.evaluation_point",column="evaluation_point"),
			@Result(property="net.movie_id",column="movie_id"),
			@Result(property="gen.genre",column="genre")
			
		}) 
		
		@Select("SELECT * FROM "
				+"(SELECT nt.movie_id as movie_id,  title, grade, country,opening_date, running_time, poster, genre, evaluation_point "
				+"FROM netizen_evaluation_trend nt, naver_re_movies mv "
				+"WHERE nt.movie_id=mv.movie_id "
				+"ORDER BY evaluation_point DESC) "
				+"WHERE ROWNUM < 15")
		public List<MovieVO> bigSliderList();

	 
	   // 사용자 정보 받아오기
	   @Select("SELECT genre,gender,age,point,loc FROM movie_member WHERE email=#{email}")
	   public MemberVO getUserInfo(String email); 
	   
	   
	   // 추천1) 제작지역
	   
	   // 추천2) 연령대 age 
	   @Select("SELECT age_10,age_20,age_30,age_40,age_50,title,poster "
	         + "FROM netizen_evaluation_trend,naver_re_movies "
	         + "WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum<50 "
	         + "ORDER BY age_40 DESC")
	   public List<MovieVO> ageRecommendation();
	
	   // 추천3) 성별 gender
		@Select("SELECT male_rating,female_rating,title,poster "
				+ "FROM netizen_evaluation_trend,naver_re_movies WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum<50 "
				+ "ORDER BY female_rating DESC")
		public List<MovieVO> genderRecommendation();
	  
	  
		// 추천4) 장르 genre
		/*@Select("SELECT ge.genre FROM movie_genre_mapper ge, naver_re_movies mv "
				+"WHERE ge.movie_id=mv.movie_id AND mv.movie_id=#{movid_id}")
		public List<MovieGenreVO> selectGenre(int movie_id);
		*/
		
		// 추천5) 감상포인트 point
		@Select("SELECT acting_point,story_point,visual_point,ost_point,production_point,title,poster "
				+ "FROM netizen_evaluation_trend,naver_re_movies WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum <50 "
				+ "ORDER BY acting_point DESC")
		public List<MovieVO> pointRecommendation();
	
		// 추천6) 전문가평점 
		
		// 추천7) 사용자 유사도
		
		// 추천8) 형태소 분석 
	

}
