package com.sist.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MainDAO;
import com.sist.dao.MemberDAO;
import com.sist.dao.NewsDAO;
import com.sist.vo.MovieVO;
import com.sist.vo.NewsVO;
@Controller
public class MainController {
	@Autowired
	private NewsDAO newsDao;
	
	@Autowired
	private MemberDAO dao;
	@Autowired
	private MainDAO mDao;
	@RequestMapping("main.do")
	public String main_main(Model model)
	{	
		List<NewsVO> newsList=newsDao.mainNewsList();
		
		// 뉴스 subject내용 길어서 짜르는 코드
		for(NewsVO vo:newsList)
		{
			String temp=vo.getSubject();
			temp=temp.substring(0, 70);
			vo.setSubject(temp+"...");
			System.out.println(vo.getRegdate());
		}
		
		model.addAttribute("newsList",newsList);
		List<MovieVO> movieList=new ArrayList<MovieVO>();
		movieList=mDao.mainListData();
		model.addAttribute("movieList",movieList);
		return "main";
	}
}
