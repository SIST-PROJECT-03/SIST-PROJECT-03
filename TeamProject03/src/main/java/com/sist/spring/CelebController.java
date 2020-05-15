package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CelebController {

	@RequestMapping("project/celeb/celebgrid.do")
	public String celeb_celebGrid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celebgrid.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("project/celeb/celeblist.do")
	public String celeb_celebList(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celeblist.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("project/celeb/celebdetail.do")
	public String celeb_celebDetail(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celebdetail.jsp");
		return "project/main/main";
	}
}
