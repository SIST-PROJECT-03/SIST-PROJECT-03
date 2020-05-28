package com.sist.mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import com.sist.vo.*;

import java.util.*;
public interface MainMapper {

	   // sessionScope.email 값 넣어주기
	   @Select("SELECT age FROM movie_member WHERE email=#{sessionScope.email}")
	   public List<MemberVO> getAgeInfo(); 
	   
/*	   //10대
	   @Results({
	      @Result(property="title",column="title"),
	      @Result(property="poster",column="poster"),
	      @Result(property="netvo.movie_id",column="movie_id"),
	      @Result(property="netvo.age_10",column="age_10")
	   })*/
	   // 추천2) 연령대 (지금은 10대라고 가정)
	   @Select("SELECT age_10,title,poster "
	         + "FROM netizen_evaluation_trend,naver_re_movies "
	         + "WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum<50 ORDER BY age_10")
	   public List<MovieVO> ageRecommendation();
	
	  
	   @Results({
		//join시
		//resultmap은 이렇게 받기
		 //변수명, 컬럼명 //like resultMap => annotaion에서는 results
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
	
	
	@Select("SELECT * FROM naver_re_movies")
	public List<MovieVO> mainListData();
	
	// Recommended by female_rating
	@Select("SELECT netizen_evaluation_trend.movie_id,female_rating,title,evaluation_point,poster "
			+ "FROM netizen_evaluation_trend,naver_re_movies WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id AND rownum<40 "
			+ "ORDER BY female_rating")
	public List<MovieVO> ratingByGender();
	
	
	@Select("SELECT * FROM "
			+"(SELECT nt.movie_id as movie_id,  title, grade, country,opening_date, running_time, poster, genre, evaluation_point "
			+"FROM netizen_evaluation_trend nt, naver_re_movies mv "
			+"WHERE nt.movie_id=mv.movie_id "
			+"ORDER BY evaluation_point DESC) "
			+"WHERE ROWNUM < 15")
	public List<MovieVO> bigSliderList();
	
	/*@Select("SELECT ge.genre FROM movie_genre_mapper ge, naver_re_movies mv "
			+"WHERE ge.movie_id=mv.movie_id AND mv.movie_id=#{movid_id}")
	public List<MovieGenreVO> selectGenre(int movie_id);
	*/
	
	
}
