package com.sist.spring;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MemberDAO;
import com.sist.vo.MemberVO;

@Controller
public class MyMovieController {

	@Autowired
	private MemberDAO dao;
	
	@RequestMapping("userProfile.do")
	public String profile(Model model,HttpSession session)
	{
		String email=(String)session.getAttribute("email");
		MemberVO vo=dao.profileData(email);
		model.addAttribute("vo",vo);
		return "project/myMovie/userProfile";
	}
	
	@RequestMapping("profileUpdate.do")
	public String profileUpdate(String nick,HttpSession session)
	{
		HashMap map=new HashMap();
		
		String email=(String)session.getAttribute("email");
		map.put("email",email);
		map.put("nick",nick);
		
		System.out.println("conte: "+email);
		System.out.println("contn: "+nick);
		
		dao.profileUpdate(map);
		
		return "redirect:userProfile.do";
	}
	
	@RequestMapping("userFavoriteGrid.do")
	public String user_favorite_grid()
	{
		return "project/myMovie/userFavoriteGrid";
	}
	
	@RequestMapping("userFavoriteList.do")
	public String user_favorite_list()
	{
		return "project/myMovie/userFavoriteList";
	}
	
	@RequestMapping("userRate.do")
	public String user_favorite_Rate()
	{
		return "project/myMovie/userRate";
	}
	
	
}
