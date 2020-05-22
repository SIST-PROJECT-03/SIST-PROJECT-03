package com.sist.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MainDAO;
import com.sist.dao.MemberDAO;
import com.sist.vo.MovieVO;

import java.util.*;
@Controller
public class MainController {
	
	@Autowired
	private MemberDAO dao;
	@Autowired
	private MainDAO mDao;
	@RequestMapping("main.do")
	public String main_main(Model model)
	{	
		List<MovieVO> list=new ArrayList<MovieVO>();
		list=mDao.mainListData();
		model.addAttribute("list",list);
		return "main";
	}
}
