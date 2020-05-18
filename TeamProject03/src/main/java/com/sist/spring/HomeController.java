package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("project/main/")
public class HomeController {

	@RequestMapping("home.do")
	public String main_home(HttpServletRequest request, HttpServletResponse response)
	{
		return "redirect:main.do";
	}
	
}
