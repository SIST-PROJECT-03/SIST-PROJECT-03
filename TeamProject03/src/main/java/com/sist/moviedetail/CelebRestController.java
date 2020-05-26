package com.sist.moviedetail;

import java.text.SimpleDateFormat;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.CelebDAO;
import com.sist.vo.CelebVO;
import com.sist.vo.MovieDetailVO;

@RestController
public class CelebRestController {
	@Autowired
	CelebDAO dao;

	@RequestMapping(value = "celebSearchList.do", produces="text/plain;charset=UTF-8")
	public String celeb_Search(String name) {
		System.out.println("name : " + name);	
		List<CelebVO> list = dao.getSearchCelebList(name);
		//List<JSONObject> objList = new ArrayList<JSONObject>();
		JSONArray objList = new JSONArray();
		
		for(int i = 0 ; i < list.size() ; i++)
		{
			JSONObject obj = new JSONObject();
			
			obj.put("Birth",list.get(i).getBirth());
			obj.put("Name",list.get(i).getName());
			obj.put("Profile",list.get(i).getProfile());
			obj.put("Reward",list.get(i).getReward());
			obj.put("Thumbnail",list.get(i).getThumbnail());
			
			objList.add(obj);
		}
		
		return objList.toJSONString();
	}
}
