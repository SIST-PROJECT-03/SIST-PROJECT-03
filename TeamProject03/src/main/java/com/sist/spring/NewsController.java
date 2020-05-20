package com.sist.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController {
	@RequestMapping("newslist.do")
	public String news_list()
	{
		return "project/news/blogList";
	}
	
	@RequestMapping("newsDetail.do")
	public String news_detail()
	{
		return "project/news/blogDetail";
	}

}
