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
		int totalpage=dao.newsTotalListPage();
		int curpage=Integer.parseInt(page);
		//한 페이지당 가져오는 데이터수
		int rowSize=5;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=(rowSize*curpage);
		
		//블록 페이징
		int block=5;
		int startblock;
		int endblock;
		if(curpage%block==0){
			startblock=(curpage/block)*block-(block-1);
			endblock=(curpage/block)*block;
		}
		else{
			startblock=(curpage/block)*block+1;
			endblock=(curpage/block+1)*block;
		}
		
		HashMap map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<NewsVO> list=dao.newsListData(map);
		int count=dao.newsCount();
		
		model.addAttribute("count",count);
		model.addAttribute("startblock",startblock);
		model.addAttribute("endblock",endblock);
		model.addAttribute("curpage",curpage);
		model.addAttribute("totalpage",totalpage);
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
		int totalpage=dao.newsTotalGridPage();
		//한 페이지당 가져오는 데이터수
		int rowSize=18;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=(rowSize*curpage);
		
		//블록 페이징
		int block=5;
		int startblock;
		int endblock;
		if(curpage%block==0){
			startblock=(curpage/block)*block-(block-1);
			endblock=(curpage/block)*block;
		}
		else{
			startblock=(curpage/block)*block+1;
			endblock=(curpage/block+1)*block;
		}
		
		HashMap map=new HashMap();
		
		map.put("start", start);
		map.put("end", end);
		
		List<NewsVO> list=dao.newsGirdListData(map);
		int count=dao.newsCount();
		
		for(NewsVO vo:list)
		{
			String temp=vo.getSubject();
			temp=temp.substring(0, 37);
			
			String temp2=vo.getTitle();
			if(temp2.length()>15){
				temp2=temp2.substring(0,15);
				vo.setTitle(temp2+"...");
			}
			vo.setSubject(temp+"...");
		}
		
		model.addAttribute("count",count);
		model.addAttribute("startblock",startblock);
		model.addAttribute("endblock",endblock);
		model.addAttribute("curpage",curpage);
		model.addAttribute("totalpage",totalpage);
		model.addAttribute("list",list);
		return "project/news/newsGrid";
	}
}
