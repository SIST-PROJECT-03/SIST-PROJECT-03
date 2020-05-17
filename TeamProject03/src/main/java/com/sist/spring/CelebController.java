package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("project/celeb/")
public class CelebController {

	@RequestMapping("celebGrid.do")
	public String celeb_celebGrid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celebGrid.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("celebList.do")
	public String celeb_celebList(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celebList.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("celebDetail.do")
	public String celeb_celebDetail(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celebDetail.jsp");
		return "project/main/main";
	}
}
