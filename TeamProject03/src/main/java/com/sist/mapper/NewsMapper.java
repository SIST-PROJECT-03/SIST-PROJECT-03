package com.sist.mapper;

import org.apache.ibatis.annotations.Select;
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
	
	@Select("SELECT CEIL(COUNT(*)/20.0) FROM movie_news")
	public int newsTotalPage();
	
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
}
