package com.sist.moviedetail;

import java.util.Date;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.MovieDAO;
import com.sist.vo.MovieDetailVO;

@RestController
public class MovieDetailRestController {
	@Autowired
	private MovieDAO dao;

	@RequestMapping("movie-detail.do")
	public String movie_detail(int movie_id) {
		MovieDetailVO vo=dao.getMovieDetailData(movie_id);
		JSONObject obj = new JSONObject();
		
		obj.put("movie_id", vo.getMovie_id());
		obj.put("title", vo.getTitle());
		obj.put("grade", vo.getGrade());
		obj.put("opening_date", vo.getOpening_date());
		obj.put("genre", vo.getGenre());
		obj.put("country", vo.getCountry());
		obj.put("running_time", vo.getRunning_time());
		obj.put("hit", vo.getHit());
		obj.put("audience_count", vo.getAudience_count());
		obj.put("story", vo.getStory());
		obj.put("poster", vo.getPoster());
		
		return obj.toJSONString();
	}
}
