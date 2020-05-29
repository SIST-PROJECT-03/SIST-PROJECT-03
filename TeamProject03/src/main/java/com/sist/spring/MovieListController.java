package com.sist.spring;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MovieDAO;
import com.sist.vo.CelebVO;
import com.sist.vo.GenreVO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.WatchingTrendVO;

@Controller
public class MovieListController {
	@Autowired
	private MovieDAO dao;

	@RequestMapping("seriesSingle.do")
	public String movie_series(int movie_id, Model model) {

		List<String> moviePictures = dao.getMoviePictures(movie_id);
		List<String> movieUrl = dao.getMovieUrl(movie_id);
		List<CelebVO> actorData = dao.getActorData(movie_id);
		List<String> genre = dao.getGenreData(movie_id);
		CelebVO cvo = dao.getDirectorData(movie_id);

		MovieDetailVO vo = dao.getMovieDetailData(movie_id);
		WatchingTrendVO wvo = dao.getWatchingTrend(movie_id);

		model.addAttribute("genre", genre);
		model.addAttribute("cvo", cvo);
		model.addAttribute("actorData", actorData);
		model.addAttribute("movieUrl", movieUrl);
		model.addAttribute("moviePictures", moviePictures);
		model.addAttribute("vo", vo);
		model.addAttribute("wvo", wvo);
		return "project/movieList/seriesSingle";
	}

	
	
	
	@RequestMapping("movieGrid.do")
	public String movie_List(Model model, String genre, String country, String grade,String range, String page, String rowSize) {
		//genre, country, grade, start, end, range
		//rowSize, totalPage, curPage
		
		int curPage;
		int totalPage;
		int curRowSize;
		int start;
		int end;
		
		if(country==null)
			country="";
		
		if(genre==null)
			genre="";
		
		if(grade==null)
			grade="";
		
		if(range==null)
			range="running_time";
		
		if(rowSize==null)
			rowSize="60";
		
		if(page==null)
			page="1";
		
		curPage= Integer.parseInt(page);
		curRowSize = Integer.parseInt(rowSize);
		
		start = (curPage-1)*(curRowSize)+1;
		end = curPage*curRowSize;
		
		Map map = new HashMap();
		map.put("genre", genre);
		map.put("country", country);
		map.put("grade", grade);
		map.put("range", range);
		map.put("rowSize", curRowSize);
		map.put("start", start);
		map.put("end", end);
		
		
		List<MovieDetailVO> list = dao.getMovieList(map);
		totalPage= dao.getTotalPage(map);
		
	
		model.addAttribute("list", list);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("curPage", curPage);		
	
		
		return "project/movieList/movieGrid";
	}
	@RequestMapping("movieGridPrint.do")
	public String movieGridPrint(Model model, String genre, String country, String grade,String range, String rowSize) {
		//genre, country, grade, start, end, range
		//rowSize, totalPage, curPage
		
		int curPage;
		int totalPage;
		int curRowSize;
		int start;
		int end;
	
		if(country==null)
			country="";
		
		if(genre==null)
			genre="";
		
		if(grade==null)
			grade="";
		
		curPage= Integer.parseInt("1");
		curRowSize = Integer.parseInt(rowSize);
		
		start = (curPage-1)*(curRowSize)+1;
		end = curPage*curRowSize;
		

		Map map = new HashMap();
		map.put("genre", genre);
		map.put("country", country);
		map.put("grade", grade);
		map.put("range", range);
		map.put("rowSize", curRowSize);
		map.put("start", start);
		map.put("end", end);
		
		
		List<MovieDetailVO> list = dao.getMovieList(map);
		totalPage= dao.getTotalPage(map);
		
		
		System.out.println("list size : " + list.size());
		System.out.println("totalPage" + totalPage);
		model.addAttribute("list", list);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("curPage", curPage);		
	
		
		return "project/result/movieGridResult";
	}
	
	
}
