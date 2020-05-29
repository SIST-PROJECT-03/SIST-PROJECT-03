package com.sist.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.NewsMapper;
import com.sist.vo.NewsReviewVO;
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
	
	public int newsTotalListPage()
	{
		return mapper.newsTotalListPage();
	}
	
	public int newsTotalGridPage()
	{
		return mapper.newsTotalGridPage();
	}
	
	public List<NewsVO> mainNewsList()
	{
		return mapper.mainNewsList();
	}
	public NewsVO newsDetailData(int no)
	{
		return mapper.newsDetailData(no);
	}
	
	public List<NewsVO> newsGirdListData(Map map)
	{
		return mapper.newsGirdListData(map);
	}
	
	public List<NewsReviewVO> newsReviewData(int no)
	{
		return mapper.newsReviewData(no);
	}
	
	public void newsReviewInsert(NewsReviewVO vo)
	{
		mapper.newsReviewInsert(vo);
	}
	
	public int newsTotalReview(int no)
	{
		return mapper.newsTotalReview(no);
	}
	
	public NewsReviewVO newsReplyReplySelect(int pno)
	{
		return mapper.newsReplyReplySelect(pno);
	}
	
	public void newsReplyReplyDepthIncrement(int no)
	{
		mapper.newsReplyReplyDepthIncrement(no);
	}
	
	public void newsReplyReplyInsert(NewsReviewVO vo)
	{
		mapper.newsReplyReplyInsert(vo);
	}
	
	public void newsReviewUpdate(NewsReviewVO vo)
	{
		mapper.newsReviewUpdate(vo);
	}
	
	public void newsReplyDepthDecrement(int pno)
	{
		mapper.newsReplyDepthDecrement(pno);
	}
	
	public void newsReplyReplyDelete(int no)
	{
		mapper.newsReplyReplyDelete(no);
	}
	
	public void newsReplyReplyDeleteMsg(NewsReviewVO vo)
	{
		mapper.newsReplyReplyDeleteMsg(vo);
	}
	
}
