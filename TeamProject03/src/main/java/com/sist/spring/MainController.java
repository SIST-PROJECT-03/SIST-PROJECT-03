package com.sist.spring;

import java.util.*;
import com.sist.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.*;
@Controller
public class MainController {
	@Autowired
	private NewsDAO newsDao;
	
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
		return "main";
	}
	
}
