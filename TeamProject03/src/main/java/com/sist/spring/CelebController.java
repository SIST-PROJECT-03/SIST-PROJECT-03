package com.sist.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.CelebDAO;
import com.sist.vo.CelebVO;

import java.util.*;

@Controller
public class CelebController {
	
	@Autowired
	private CelebDAO dao;
	
	@RequestMapping("celebList.do")
	public String celeb_List()
	{
		return "project/celeb/celebList";
	}
	
	@RequestMapping("celebGrid.do")
	public String celeb_Grid(Model model, String page)
	{
		
		int curPage;
		if(page==null)
			curPage=1;
		else
			curPage=Integer.parseInt(page);
		
		int rowSize=51;
		int totalPage = dao.getCelebTotalPage(rowSize);
		int start = (curPage*rowSize) - (rowSize-1);
		int end = curPage*rowSize;
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<CelebVO> list = dao.getCelebList(map);
		
		for(int i = 0 ; i < list.size() ; i++)
		{
			if(list.get(i).getBirth().length() > 10)
				list.get(i).setBirth(list.get(i).getBirth().substring(0,10)+ "...");
		}

		model.addAttribute("curPage",curPage);
		model.addAttribute("list", list);
		model.addAttribute("totalPage",totalPage);
		
		return "project/celeb/celebGrid";
	}
	@RequestMapping("celebDetail.do")
	public String celeb_Detail()
	{
		return "project/celeb/celebDetail";
	}
}
