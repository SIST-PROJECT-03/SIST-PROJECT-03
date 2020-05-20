package com.sist.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CelebController {

	@RequestMapping("celebList.do")
	public String celeb_List()
	{
		return "project/celeb/celebList";
	}
	
	
	@RequestMapping("celebGrid.do")
	public String celeb_Grid()
	{
		return "project/celeb/celebGrid";
	}
	
	@RequestMapping("celeDetail.do")
	public String celeb_Detail()
	{
		return "project/celeb/celebDetail";
	}
	
	
	
	
}
