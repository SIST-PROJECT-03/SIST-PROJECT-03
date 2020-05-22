package com.sist.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("signup.do")
	public String signup(MemberVO vo){
		
		dao.signup(vo);
		
		return "main";
	}
}
