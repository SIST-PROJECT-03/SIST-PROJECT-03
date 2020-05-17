package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("project/news/")
public class NewsController {

	@RequestMapping("blogList.do")
	public String news_blogList(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../news/blogList.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("blogGrid.do")
	public String news_blogGrid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../news/blogGrid.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("blogDetail.do")
	public String news_blogDetail(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../news/blogDetail.jsp");
		return "project/main/main";
	}
}
