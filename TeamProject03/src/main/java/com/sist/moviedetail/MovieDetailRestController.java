package com.sist.moviedetail;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.dao.JoinDAO;
import com.sist.dao.MovieDAO;
import com.sist.vo.CelebVO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.Naver_JoinVO;

@RestController
public class MovieDetailRestController {
	@Autowired
	private MovieDAO dao;

	@Autowired
	private JoinDAO jdao;
	@RequestMapping(value = "movie-detail.do", produces="text/plain;charset=UTF-8")
	public String movie_detail(int movie_id) {
		System.out.println("movie_id : " + movie_id);
		MovieDetailVO vo=dao.getMovieDetailData(movie_id);
		
		List<Naver_JoinVO> jL = new ArrayList<Naver_JoinVO>(); 
				jL = jdao.getJoinByMovieId(movie_id);
		List<CelebVO> jList = new ArrayList<CelebVO>();
		
		for(Naver_JoinVO tvo : jL){
			CelebVO ccvo = new CelebVO();
			ccvo.setName(jdao.getCastByCastId(tvo.getCast_id()).getName());
			jList.add(ccvo);
		}
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
		
		JSONArray jarr = new JSONArray();
		for(int i = 0; i < jList.size(); i++){
			JSONObject tjobj = new JSONObject();
			tjobj.put("cast_id", jL.get(i).getCast_id());
			tjobj.put("movie_id", jL.get(i).getMovie_id());
			tjobj.put("role", jL.get(i).getRole());
			tjobj.put("name", jList.get(i).getName());
			jarr.add(tjobj);
		}
		obj.put("join", jarr);
		
		System.out.println("obj string : " + obj.toJSONString());
		return obj.toJSONString();
	}
	
	
}
