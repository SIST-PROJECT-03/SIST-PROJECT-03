package com.sist.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import com.sist.vo.*;
import java.util.*;
public interface NewsMapper {
	@Select("SELECT news_id,title,subject,thumbnail,regdate,num "
			+ "FROM (SELECT news_id,title,subject,thumbnail,regdate,rownum as num "
			+ "FROM (SELECT news_id,title,subject,thumbnail,regdate "
			+ "FROM movie_news ORDER BY news_id ASC))"
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<NewsVO> newsListData(Map map);
	
	@Select("SELECT COUNT(*) FROM movie_news")
	public int newsCount();
	
	@Select("SELECT CEIL(COUNT(*)/5.0) FROM movie_news")
	public int newsTotalListPage();
	
	@Select("SELECT CEIL(COUNT(*)/18.0) FROM movie_news")
	public int newsTotalGridPage();
	
	@Select("SELECT news_id,title,subject,thumbnail,regdate,num "
			+ "FROM (SELECT news_id,title,subject,thumbnail,regdate,rownum as num "
			+ "FROM (SELECT news_id,title,subject,thumbnail,regdate "
			+ "FROM movie_news ORDER BY news_id ASC))"
			+ "WHERE num BETWEEN 1 AND 4")
	public List<NewsVO> mainNewsList();
	
	@Select("SELECT news_id,title,regdate,content,author "
			+ "FROM movie_news "
			+ "WHERE news_id=#{no}")
	public NewsVO newsDetailData(int no);
	
	@Select("SELECT news_id,title,subject,thumbnail,regdate,num "
			+ "FROM (SELECT news_id,title,subject,thumbnail,regdate,rownum as num "
			+ "FROM (SELECT news_id,title,subject,thumbnail,regdate "
			+ "FROM movie_news ORDER BY news_id ASC))"
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<NewsVO> newsGirdListData(Map map);
	
	
	@Select("SELECT COUNT(*) FROM news_review WHERE news_no=#{no}")
	public int newsTotalReview(int no);
	
	@Select("SELECT no,news_no,email,msg,regdate FROM news_review "
			+ "WHERE news_no=#{no} "
			+ "ORDER BY group_id DESC , group_step ASC")
	public List<NewsReviewVO> newsReviewData(int no);
	
	@SelectKey(keyProperty="no",resultType=int.class,before=true,
			statement="SELECT NVL(MAX(no)+1,1) as no FROM news_review")
	@Insert("INSERT INTO news_review VALUES("
			+ "#{no},#{news_no},#{email},#{msg},SYSDATE,"
			+ "(SELECT NVL(MAX(group_id)+1,1) FROM news_review),"
			+ "0,0,0,0)")
	public void newsReviewInsert(NewsReviewVO vo);
}
