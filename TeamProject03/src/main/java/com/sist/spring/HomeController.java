package com.sist.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("project/main/")
public class HomeController {

	@RequestMapping("home.do")
	public String main_home(Model model)
	{
		return "redirect:main.do";
	}
}
