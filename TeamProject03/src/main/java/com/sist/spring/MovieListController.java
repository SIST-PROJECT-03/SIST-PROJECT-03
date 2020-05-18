package com.sist.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("project/movieList/")
public class MovieListController {

	@RequestMapping("seriesSingle.do")
	public String movie_series()
	{
		return "seriesSingle";
	}
	
}

