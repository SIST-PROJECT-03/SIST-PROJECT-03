package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("project/movieList/")
public class MovieListController {

	@RequestMapping("movieList.do")
	public String movie_List(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../movieList/movieList.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("movieGrid.do")
	public String movie_Grid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../movieList/movieGrid.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("movieDetail.do")
	public String movie_Detail(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../movieList/movieDetail.jsp");
		return "project/main/main";
	}
	
	
}
