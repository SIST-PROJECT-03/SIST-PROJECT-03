package com.sist.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyMovieController {

	@RequestMapping("userFavoriteGrid.do")
	public String user_favorite_grid()
	{
		return "project/myMovie/userFavoriteGrid";
	}
	
	@RequestMapping("userFavoriteList.do")
	public String user_favorite_list()
	{
		return "project/myMovie/userFavoriteList";
	}
	
	@RequestMapping("userProfile.do")
	public String user_favorite_profile()
	{
		return "project/myMovie/userProfile";
	}
	
	@RequestMapping("userRate.do")
	public String user_favorite_Rate()
	{
		return "project/myMovie/userRate";
	}
}
