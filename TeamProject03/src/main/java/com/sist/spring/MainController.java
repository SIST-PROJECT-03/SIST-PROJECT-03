package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	
	@RequestMapping("project/main/main.do")
	public String main_main(HttpServletRequest request, HttpServletResponse response)
	{	
		request.setAttribute("main_jsp", "../main/home.jsp");	
		return "project/main/main";
	}
	
	
}
