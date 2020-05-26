package com.sist.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MovieDAO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.MoviePicturesVO;
import com.sist.vo.WatchingTrendVO;

@Controller
public class MovieListController {
	@Autowired
	private MovieDAO dao;

	@RequestMapping("seriesSingle.do")
	public String movie_series(int movie_id, Model model) {
 
		 List<String> moviePictures = new ArrayList<String>();
		List<String> movieUrl = new ArrayList<String>();
		movieUrl=dao.getMovieUrl(movie_id);
		 MovieDetailVO vo=dao.getMovieDetailData(movie_id);
		 WatchingTrendVO wvo=dao.getWatchingTrend(movie_id);
		 moviePictures =dao.getMoviePictures(movie_id);
		 model.addAttribute("movieUrl",movieUrl);
		 model.addAttribute("moviePictures",moviePictures);
		 model.addAttribute("vo",vo);
		 model.addAttribute("wvo",wvo);
		return "project/movieList/seriesSingle";
	}

	@RequestMapping("movieList.do")
	public String movie_List(Model model) {
		return "project/movieList/movieList";
	}

	@RequestMapping("movieGrid.do")
	public String movie_Grid() {
		return "project/movieList/movieGrid";
	}

}
