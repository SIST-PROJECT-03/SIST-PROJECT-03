package com.sist.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.sist.vo.AudienceEvaluationTrendVO;
import com.sist.vo.CelebVO;
import com.sist.vo.GenreVO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.MovieJoinVO;
import com.sist.vo.MoviePicturesVO;
import com.sist.vo.MovieReviewVO;
import com.sist.vo.NetizenEvaluationTrendVO;
import com.sist.vo.NewsReviewVO;
import com.sist.vo.SpecialPointVO;
import com.sist.vo.WatchingTrendVO;

public interface MovieMapper {
	
	@Results({
		@Result(property="title",column="title"),
		@Result(property="grade",column="grade"),
		@Result(property="genre",column="genre"),
		@Result(property="country",column="country"),
		@Result(property="running_time",column="running_time"),
		@Result(property="poster",column="poster"),
		@Result(property="wvo.evaluation_point",column="evaluation_point"),
		@Result(property="movie_id",column="movie_id")
	})
/*	@Select("SELECT num, title, grade, genre, country,running_time, poster, evaluation_point,opening_date, "
			+"FROM(SELECT rownum as num, title, grade, genre, country, running_time, poster, evaluation_point, opening_date FROM naver_re_movies,netizen_evaluation_trend "
			+"WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id "
			+"AND genre LIKE '%'||#{genre}||'%' AND country LIKE '%'||#{country}||'%' AND grade LIKE '%'||#{grade}||'%') "
			+"WHERE num BETWEEN #{start} AND #{end} ORDER BY ${range} DESC")
		//genre, country, grade, start, end, range
		 
*/	
	
	@Select("SELECT movie_id,num, title, grade, genre, country,running_time, poster, evaluation_point,opening_date ,age_10, age_20, age_30, age_40, age_50, production_point, acting_point, story_point, visual_point, ost_point, female_rating, male_rating "
			+"FROM(SELECT naver_re_movies.movie_id as movie_id,rownum as num, title, grade, genre, country, running_time, poster, evaluation_point, opening_date, age_10, age_20, age_30, age_40, age_50, production_point, acting_point, story_point, visual_point, ost_point, female_rating, male_rating "
			+"FROM naver_re_movies,netizen_evaluation_trend "
			+"WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id "
			+"AND genre LIKE '%'||#{genre}||'%' AND country LIKE '%'||#{country}||'%' AND grade LIKE '%'||#{grade}||'%') "
			+"WHERE num BETWEEN #{start} AND #{end} ORDER BY ${range} DESC")
		//genre, country, grade, start, end, range
	public List<MovieDetailVO> getMovieList(Map map);
	
	@Select("SELECT * FROM naver_re_movies WHERE movie_id=#{movie_id}")
	public MovieDetailVO getMovieDetailData(int movie_id);
	
	@Select("SELECT * FROM watching_trend WHERE movie_id=#{movie_id}")
	public WatchingTrendVO getWatchingTrend(int movie_id);
	
	@Select("SELECT img FROM movie_re_pictures WHERE movie_id=#{movie_id}")
	public List<String> getMoviePictures(int movie_id);
	
	@Select("SELECT url FROM movie_re_pictures WHERE movie_id=#{movie_id} AND url IS NOT NULL")   
	public List<String> getMovieUrl(int movie_id);
	
	@Select("SELECT * FROM cast WHERE cast_id in (Select cast_id from naver_join WHERE movie_id=#{movie_id} and role = '감독')")
	public CelebVO getDirectorData(int movie_id);
	
	@Select("SELECT * FROM cast WHERE cast_id in (Select cast_id from naver_join WHERE movie_id=#{movie_id} and role = '배우')")
	public List<CelebVO> getActorData(int movie_id);
	
	@Select("SELECT genre FROM movie_genre_mapper WHERE movie_id=#{movie_id}")
	public List<String> getGenreData(int movie_id);
	

	@Select("SELECT CEIL(count(*)/${rowSize}) "
			+"FROM(SELECT rownum as num, title, grade, genre, country, running_time, poster, evaluation_point FROM naver_re_movies,netizen_evaluation_trend "
			+"WHERE netizen_evaluation_trend.movie_id=naver_re_movies.movie_id "
			+"AND genre LIKE '%'||#{genre}||'%' AND country LIKE '%'||#{country}||'%' AND grade LIKE '%'||#{grade}||'%')")
	//genre, country, grade, start, end, range, rowSize
	public int getTotalPage(Map map);
	
	@Select("SELECT * FROM movie_reviews "
			+ "WHERE movie_id=#{movie_id}  order by no desc")
	public List<MovieReviewVO> movieReviewData(int movie_id);
	
	@SelectKey(keyProperty="no",resultType=int.class,before=true,
			statement="SELECT NVL(MAX(no)+1,1) as no FROM movie_reviews")
	@Insert("INSERT INTO movie_reviews VALUES(#{no},#{movie_id},#{email},#{msg},SYSDATE,#{nick})")
	public void movieReviewInsert(MovieReviewVO vo);
	
	@Update("UPDATE movie_reviews SET "
			+ "msg=#{msg} "
			+ "WHERE no=#{no}")
	public void movieReviewUpdate(MovieReviewVO vo);
	
	@Select("SELECT * "
			+ "FROM movie_reviews "
			+ "WHERE no=#{pno}")
	public MovieReviewVO movieReviewSelect(int pno);
	
	@Delete("DELETE FROM movie_reviews WHERE no=#{no}")
	public void movieReviewDelete(int no);
	
	@Select("SELECT COUNT(*) FROM movie_reviews WHERE movie_id=#{movie_id}")
	public int movieTotalReview(int movie_id);
	
	@Select("SELECT * FROM Audience_Evaluation_Trend WHERE movie_id=#{movie_id}")
	public AudienceEvaluationTrendVO getAudienceEvaluationTrend(int movie_id);
	
	
	@Select("SELECT * FROM Netizen_Evaluation_Trend WHERE movie_id=#{movie_id}")
	public NetizenEvaluationTrendVO getNetizenEvaluationTrend(int movie_id);
}
