package com.sist.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.NewsDAO;
import com.sist.vo.*;
import java.util.*;

@Controller
public class NewsController {
	@Autowired
	private NewsDAO dao;
	
	@RequestMapping("newsList.do")
	public String news_list(Model model,String page)
	{
		if(page==null)
			page="1";
		int totalpage=dao.newsTotalPage();
		int curpage=Integer.parseInt(page);
		int block=5;
		int curBlock=curpage%block==0?curpage/block:(curpage/block)+1;
		int start=(curpage-1)*block+1;
		int end=start+(block-1);
		
		
		HashMap map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<NewsVO> list=dao.newsListData(map);
		int count=dao.newsCount();
		
		model.addAttribute("count",count);
		model.addAttribute("startpage",start);
		model.addAttribute("endpage",end);
		model.addAttribute("list",list);
		return "project/news/newsList";
	}
	
	@RequestMapping("newsDetail.do")
	public String news_detail(Model model,int no)
	{
		NewsVO vo=dao.newsDetailData(no);
		StringTokenizer st=new StringTokenizer(vo.getContent(),".");
		
		vo.setContent("<p>"+vo.getContent()+"</p>");
		System.out.println(vo.getContent());
		model.addAttribute("vo",vo);
		return "project/news/newsDetail";
	}
	
	@RequestMapping("newsGrid.do")
	public String news_grid(Model model,String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=18;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=(rowSize*curpage);
		
		HashMap map=new HashMap();
		
		map.put("start", start);
		map.put("end", end);
		
		List<NewsVO> list=dao.newsGirdListData(map);
		int count=dao.newsCount();
		
		for(NewsVO vo:list)
		{
			String temp=vo.getSubject();
			temp=temp.substring(0, 70);
			
			String temp2=vo.getTitle();
			temp2=temp2.substring(0,15);
			vo.setSubject(temp+"...");
			vo.setTitle(temp2+"...");
			System.out.println(vo.getRegdate());
		}
		
		
		
		model.addAttribute("count",count);
		model.addAttribute("list",list);
		return "project/news/newsGrid";
	}
}
