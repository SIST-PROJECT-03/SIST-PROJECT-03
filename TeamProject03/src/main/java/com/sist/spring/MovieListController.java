package com.sist.spring;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MovieDAO;
import com.sist.vo.CelebVO;
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

	@RequestMapping("movieGrid.do")
	public String movie_List(Model model, String page) {
		
		int curPage;
		if(page==null)
			curPage=1;
		else
			curPage=Integer.parseInt(page);
		
		int rowSize=51;
		int totalPage = dao.getTotalPage(rowSize);
		int start = (curPage*rowSize) - (rowSize-1);
		int end = curPage*rowSize;
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<MovieDetailVO> list = dao.getMovieList(map);

		model.addAttribute("curPage",curPage);
		model.addAttribute("list", list);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("start",start);
		model.addAttribute("end",end);
		
		
				
		
		return "project/movieList/movieGrid";
	}

	@RequestMapping("movieList.do")
	public String movie_Grid() {
		return "project/movieList/movieList";
	}

}
