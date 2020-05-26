package com.sist.moviedetail;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.MovieDAO;
import com.sist.vo.CelebVO;
import com.sist.vo.MovieDetailVO;

@RestController
public class MovieDetailRestController {
	@Autowired
	private MovieDAO dao;

	@RequestMapping(value = "movie-detail.do", produces="text/plain;charset=UTF-8")
	public String movie_detail(int movie_id) {
		MovieDetailVO vo=dao.getMovieDetailData(movie_id);
		String story = vo.getStory();
		if(story.length() > 200){
			story = story.substring(0,200) + "...";
		}
		JSONObject obj = new JSONObject();
		
		obj.put("movie_id", vo.getMovie_id());
		obj.put("title", vo.getTitle());
		obj.put("grade", vo.getGrade());
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy년MM월dd일");
		String opening_date = transFormat.format(vo.getOpening_date());
		obj.put("opening_date", opening_date);
		obj.put("genre", vo.getGenre());
		obj.put("country", vo.getCountry());
		obj.put("running_time", vo.getRunning_time());
		obj.put("hit", vo.getHit());
		obj.put("audience_count", vo.getAudience_count());
		obj.put("story", story);
		obj.put("poster", vo.getPoster());
		
		System.out.println("obj string : " + obj.toJSONString());
		return obj.toJSONString();
	}
	
	
}
