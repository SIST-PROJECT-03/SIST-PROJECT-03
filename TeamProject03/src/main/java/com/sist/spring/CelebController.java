package com.sist.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
<<<<<<< HEAD
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
=======
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
	
	
	
	
>>>>>>> b260f0510486fc3a0e2b9d93fffd88e8a45ab654
}
