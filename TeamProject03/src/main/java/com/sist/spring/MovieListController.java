package com.sist.spring;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MovieDAO;
import com.sist.vo.AudienceEvaluationTrendVO;
import com.sist.vo.CelebVO;
import com.sist.vo.GenreVO;
import com.sist.vo.MovieDetailVO;
import com.sist.vo.MovieReviewVO;
import com.sist.vo.NetizenEvaluationTrendVO;
import com.sist.vo.NewsReviewVO;
import com.sist.vo.NewsVO;
import com.sist.vo.SpecialPointVO;
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
		AudienceEvaluationTrendVO avo=dao.getAudienceEvaluationTrend(movie_id);
		NetizenEvaluationTrendVO nvo=dao.getNetizenEvaluationTrend(movie_id);
	    List<MovieReviewVO> rlist=dao.movieReviewData(movie_id);
	    int movieTotalReview=dao.movieTotalReview(movie_id);
	    
	    model.addAttribute("nvo",nvo);
	    model.addAttribute("avo",avo);
	    model.addAttribute("rlist",rlist);
		model.addAttribute("genre", genre);
		model.addAttribute("cvo", cvo);
		model.addAttribute("actorData", actorData);
		model.addAttribute("movieUrl", movieUrl);
		model.addAttribute("moviePictures", moviePictures);
		model.addAttribute("vo", vo);
		model.addAttribute("wvo", wvo);
		model.addAttribute("movieTotalReview",movieTotalReview);
		return "project/movieList/seriesSingle";
	}
	
	
	@RequestMapping("movieReview.do")
	public String movie_review(MovieReviewVO vo,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		String pwd=(String)session.getAttribute("email");
		String nick=(String)session.getAttribute("nick");
		vo.setNick(nick);
		vo.setEmail(email);
		vo.setPwd(pwd);
		
		dao.movieReviewInsert(vo);
		return "redirect:seriesSingle.do?movie_id="+vo.getMovie_id();
		
	}
	
	@RequestMapping("movieReviewUpdate.do")
	public String movie_review_update(MovieReviewVO vo){
			dao.movieReviewUpdate(vo);
		
			return "redirect:seriesSingle.do?movie_id="+vo.getMovie_id();
	}
	
	@RequestMapping("movieReviewDelete.do")
	public String movie_review_delete(int pno){
		MovieReviewVO vo=dao.movieReviewSelect(pno);
		dao.movieReviewDelete(pno);
		
		return "redirect:seriesSingle.do?movie_id="+vo.getMovie_id();
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
			range="opening_date";
		
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
	public String movieGridPrint(Model model, String genre, String country, String grade,String range, String rowSize,String page) {
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
			range="opening_date";
		
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
		model.addAttribute("genre",genre);
		model.addAttribute("country",country);
		model.addAttribute("grade",grade);
		model.addAttribute("range",range);
		model.addAttribute("rowSize",rowSize);
		

		return "project/result/movieGridResult";
	}
}
