package com.sist.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieListController {

	@RequestMapping("seriesSingle.do")
	public String movie_series()
	{
		return "project/movieList/seriesSingle";
	}


	@RequestMapping("movieList.do")
	public String movie_List()
	{
		return "project/movieList/movieList";
	}
	
	
	@RequestMapping("movieGrid.do")
	public String movie_Grid()
	{	
		return "project/movieList/movieGrid";
	}
	
	
	
	
}

