package com.sist.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MovieDAO;
import com.sist.vo.MovieDetailVO;

@Controller
public class MovieListController {
	@Autowired
	private MovieDAO dao;

	@RequestMapping("seriesSingle.do")
	public String movie_series(int movie_id, Model model) {

		 MovieDetailVO vo=dao.getMovieDetailData(movie_id);

		 model.addAttribute("vo",vo);
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
