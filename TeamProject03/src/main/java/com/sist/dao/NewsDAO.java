package com.sist.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.vo.NewsVO;

@Repository
public class NewsDAO {
	@Autowired
	private NewsMapper mapper;
	
	public List<NewsVO> newsListData(Map map)
	{
		return mapper.newsListData(map);
	}
	
	public int newsCount()
	{
		return mapper.newsCount();
	}
	
}
