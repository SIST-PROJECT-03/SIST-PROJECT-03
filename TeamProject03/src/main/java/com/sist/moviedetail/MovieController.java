package com.sist.moviedetail;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.MovieDAO;
import com.sist.vo.CelebVO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.MovieVO;

@RestController
public class MovieController {

	@Autowired
	MovieDAO dao;
	
	@RequestMapping(value = "MovieAllList.do", produces="text/plain;charset=UTF-8")
	public String celeb_Search() {
		
		List<MovieDetailVO> list = dao.getMovieAllList();
		JSONArray objList = new JSONArray();
		
		System.out.println("listsize" + list.size());
		for(int i = 0 ; i < list.size() ; i++)
		{
			JSONObject obj = new JSONObject();
			
			obj.put("Audience_count",list.get(i).getAudience_count());		
			obj.put("Country",list.get(i).getCountry());
			obj.put("Genre",list.get(i).getGenre());
			obj.put("Grade",list.get(i).getGrade());
			obj.put("Hit",list.get(i).getHit());
			obj.put("Movie_id",list.get(i).getMovie_id());
			obj.put("Opening_date",list.get(i).getOpening_date());
			obj.put("Running_time",list.get(i).getRunning_time());
			obj.put("Story",list.get(i).getStory());
			obj.put("Title",list.get(i).getTitle());
			
			objList.add(obj);
		}
		System.out.println(objList.toJSONString());
		
		return objList.toJSONString();
	}
}

