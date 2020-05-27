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
		/*System.out.println("로그인????");*/
		List<NewsVO> newsList=newsDao.mainNewsList();
		
		for(NewsVO vo:newsList)
		{
			String temp=vo.getSubject();
			temp=temp.substring(0, 70);
			vo.setSubject(temp+"...");
			/*System.out.println(vo.getRegdate());*/
		}

		model.addAttribute("newsList",newsList);
		
		// MAIN 전체 데이터
		List<MovieVO> movieList=mDao.mainListData();
		model.addAttribute("movieList",movieList);
		
		// MAIN 추천2 *(여성 선호 평점)
		List<MovieVO> ratingList=mDao.ratingByGender();
		model.addAttribute("ratingList",ratingList);
		return "main";
	}
}
