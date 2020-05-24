package com.sist.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MemberDAO;
import com.sist.vo.MemberVO;

@Controller
public class MainController {
	
	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("main.do")
	public String main_main()
	{	
		System.out.println("·Î±×ÀÎ????");
		return "main";
	}
}
