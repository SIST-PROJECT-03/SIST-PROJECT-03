package com.sist.spring;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("login_ok.do")
	public String login_ok(String email,String pwd,Model model,HttpSession session)
	{
		String result="";
		int count=dao.emailCount(email);
		/*System.out.println(count);*/
		
		if(count==0)
		{
			result="NOID";
		}
		else
		{
			String db_pwd=dao.emailGetPassword(email);
			if(db_pwd.equals(pwd))
			{
				result="OK";
				session.setAttribute("email", email);
				/*System.out.println(email);
				System.out.println(pwd);
				System.out.println(db_pwd);*/
			}
			else
			{
				result="NOPWD";
			}
		}
		model.addAttribute("result",result);
		
		return "project/main/login_ok";
	}
}
