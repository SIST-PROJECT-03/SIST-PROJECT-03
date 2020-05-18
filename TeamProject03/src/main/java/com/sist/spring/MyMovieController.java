package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("project/myMovie/")
public class MyMovieController {

	@RequestMapping("userFavoriteGrid.do")
	public String myMovie_userFavoriteGrid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../myMovie/userFavoriteGrid.jsp");
		
		return "project/main/main";
	}
	
	
	@RequestMapping("userFavoriteList.do")
	public String myMovie_userFavoriteList(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../myMovie/userFavoriteList.jsp");
		
		return "project/main/main";
	}
	
	
	@RequestMapping("userProfile.do")
	public String myMovie_userProfile(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../myMovie/userProfile.jsp");
		
		return "project/main/main";
	}
	
	
	@RequestMapping("userRate.do")
	public String myMovie_userRate(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../myMovie/userRate.jsp");
		
		return "project/main/main";
	}
}
