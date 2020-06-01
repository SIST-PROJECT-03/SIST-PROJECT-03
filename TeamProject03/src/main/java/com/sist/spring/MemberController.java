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
				/*MemberVO vo=dao.profileData(email);
				System.out.println(vo.getNick());*/
				
				MemberVO vo=dao.profileData(email);
	            session.setAttribute("nick",vo.getNick());
	            session.setAttribute("genre", vo.getGenre());
	            session.setAttribute("age", vo.getAge());
	            session.setAttribute("point", vo.getPoint());
	            session.setAttribute("loc", vo.getLoc());
	           /* session.setAttribute("actor", vo.getActor());*/
	            System.out.println("session에서 얻은 회원정보:"+vo.getNick()+vo.getAge()+vo.getPoint()+vo.getLoc());
				
			}
			else
			{
				result="NOPWD";
			}
		}
		model.addAttribute("result",result);
		
		return "project/main/login_ok";
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "main";
	}

}
