package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class NewsController {

	@RequestMapping("project/news/bloglist.do")
	public String news_bloglist(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../news/bloglist.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("project/news/bloggrid.do")
	public String news_bloggrid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../news/bloggrid.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("project/news/blogdetail.do")
	public String news_blogdetail(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../news/blogdetail.jsp");
		return "project/main/main";
	}
}
