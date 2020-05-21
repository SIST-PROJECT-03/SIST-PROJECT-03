package com.sist.dao;

import org.apache.ibatis.annotations.Select;
import com.sist.vo.*;
import java.util.*;
public interface NewsMapper {
	@Select("SELECT news_id,title,subject,thumbnail,num "
			+ "FROM (SELECT news_id,title,subject,thumbnail,rownum as num "
			+ "FROM (SELECT news_id,title,subject,thumbnail "
			+ "FROM movie_news ORDER BY news_id ASC))"
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<NewsVO> newsListData(Map map);
	
	@Select("SELECT COUNT(*) FROM movie_news")
	public int newsCount();
}
