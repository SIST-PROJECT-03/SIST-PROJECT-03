
package com.sist.mapper;



import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;


import com.sist.vo.*;

import java.util.*;
public interface MainMapper {
/*

[ 추천 태그 목록 (순서대로) ]

0) 슬라이더  v   
1) 제작 지역 							  
2) 연령대	   v						   
3) 성별	   v							   
4) 장르	   v						   
5) 감상포인트 v								
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
			@Result(property="gen.genre",column="genre"),
			@Result(property="sps.score",column="score")
			
		}) 
		
		@Select("SELECT * FROM "
				+"(SELECT nt.movie_id as movie_id,  title, grade, country,opening_date, running_time, poster, genre, evaluation_point "
				+"FROM netizen_evaluation_trend nt, naver_re_movies mv "
				+"WHERE nt.movie_id=mv.movie_id "
				+"ORDER BY evaluation_point DESC) "
				+"WHERE ROWNUM < 15")
		public List<MovieVO> bigSliderList();
 
	   
	   // 추천1) 제작지역

	   // 추천2) 연령대 age 
	   @Select("SELECT age_10,age_20,age_30,age_40,age_50,title,poster "
	         + "FROM netizen_evaluation_trend,naver_re_movies "
	         + "WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum<50 "
	         + "ORDER BY age_50 DESC")
	   public List<MovieVO> ageRecommendation(String user_age);
	
	   // 추천3) 성별 gender
		@Select("SELECT male_rating,female_rating,title,poster "
				+ "FROM netizen_evaluation_trend,naver_re_movies WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum<50 "
				+ "ORDER BY #{user_gender} DESC")
		public List<MovieVO> genderRecommendation(String user_gender);
	  
	  
		// 추천4) 장르 genre + 나이 최신 정렬 
		@Select("SELECT * FROM "
		          +"(SELECT title , poster, genre, age_10 "
		          +"FROM naver_re_movies nm, netizen_evaluation_trend nt "
		          +"WHERE nm.movie_id=nt.movie_id AND genre LIKE '%'||#{user_genre}||'%' ORDER BY opening_date DESC) "
		          +"WHERE ROWNUM < 50 ")
		public List<MovieVO> genreRecomm(String user_genre);
		
		// 추천5) 감상포인트 point
		@Select("SELECT acting_point,story_point,visual_point,ost_point,production_point,title,poster "
				+ "FROM netizen_evaluation_trend,naver_re_movies WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum <50 "
				+ "ORDER BY #{user_point} DESC")
		public List<MovieVO> pointRecommendation(String user_point);
	
		
		// 추천6) 선호지역 
		 @Select("SELECT * FROM "
		    		+"(SELECT nm.movie_id, title, genre, opening_date, poster FROM naver_re_movies nm, netizen_evaluation_trend nt "
		    		+"WHERE nm.movie_id=nt.movie_id AND country LIKE '%'||#{user_loc}||'%' ORDER BY opening_date DESC) " 
		    		+"WHERE ROWNUM < 50 ")
		    public List<MovieVO> locRecomm(String user_loc);
	   
		
		// 추천7) 전문가 평점
		 //장르 + 전문가
		    @Select("SELECT * FROM "
		    		+"(SELECT title, genre, opening_date, poster, ROUND(AVG(sps.score), 2) score "
		    		+"FROM naver_re_movies nm, specialpoint sps " 
		    		+"WHERE nm.movie_id=sps.movie_id AND genre LIKE '%'||#{user_genre}||'%' GROUP BY title, genre, opening_date, poster ORDER BY opening_date DESC) " 
		    		+"WHERE ROWNUM < 50 ")
		    public List<MovieVO> specialRecomm(String user_genre); 
		 
		 
		 
	   

	

}
