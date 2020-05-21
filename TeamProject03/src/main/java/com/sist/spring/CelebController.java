package com.sist.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("celeb/")
public class CelebController {

	/*@RequestMapping("celebGrid")
	public String celeb_grid()
	{
		return "project/celeb/celebGrid";
	}*/
	
	@RequestMapping("celebGrid")
	public String celeb_grid()
	{
		return "project/celeb/celebGrid";
	}
}
