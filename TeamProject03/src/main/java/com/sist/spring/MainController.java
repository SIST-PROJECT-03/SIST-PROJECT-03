package com.sist.spring;

import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sist.dao.*;
import com.sist.vo.*;
@Controller
public class MainController {
   @Autowired
   private NewsDAO newsDao;
   
   @Autowired
   private MemberDAO dao;
   
   @Autowired
   private MainDAO mDao;
   
   @RequestMapping(value = "main.do", method=RequestMethod.GET)
   public String main_main(String email,Model model,HttpSession session)
   {   
	   
	   //세션에 있는 값 가져오기
	   	  String user_genre=(String)session.getAttribute("genre");
	      String user_nick=(String)session.getAttribute("nick");
	      String user_email=(String)session.getAttribute("email");
	      String user_gender=(String)session.getAttribute("gender");
	      String user_age=(String)session.getAttribute("age");
	      String user_point=(String)session.getAttribute("point");
	      String user_loc=(String)session.getAttribute("loc");
	      String user_actor=(String)session.getAttribute("actor");
	      System.out.println("user_genre: "+ user_genre);
	      System.out.println("user_nick: "+user_nick);
	      System.out.println("user_email: "+ user_email);
	   
	   	  email="ginogin@gmail.com";
	      /*System.out.println("로그인????");*/
	      List<NewsVO> newsList=newsDao.mainNewsList();
	      
	      for(NewsVO vo:newsList)
	      {
	         String temp=vo.getSubject();
	         temp=temp.substring(0, 70);
	         vo.setSubject(temp+"...");
	         /*System.out.println(vo.getRegdate());*/
	      }
	      
	      model.addAttribute("newsList",newsList);
	      
	      //사용자 취향 정보		 
			/*
			 * String email=(String)session.getAttribute("email"); String
			 * age=(String)session.getAttribute("age");
			 * System.out.println("The User:"+email); System.out.println("Age"+age);
			 * if(email!=null) {MemberVO userData=mDao.getUserInfo(email);
			 * model.addAttribute("userData",userData); }
			 * 
			 * 
			 * if(age.equals("10대")) age= "age_10"; if(age.equals("20대")) age= "age_20";
			 * if(age.equals("30대")) age= "age_30"; if(age.equals("40대")) age= "age_40";
			 * if(age.equals("50대")) age= "age_50";
			 */
			 
		  
	      List<MovieVO> ageList=mDao.ageRecommendation();
	      model.addAttribute("ageList",ageList);

	      List<MovieVO> genderList=mDao.genderRecommendation();
	      model.addAttribute("genderList",genderList);
	      
	      List<MovieVO> pointList=mDao.pointRecommendation();
	      model.addAttribute("pointList",pointList);
	   	  List<MovieVO> bigSliderList=mDao.bigSliderList();
		  for(MovieVO svo:bigSliderList)
		  {
		 	//System.out.println(svo.getNet().getEvaluation_point());
		  }

		  model.addAttribute("bigSliderList", bigSliderList);
		  
		  
		  try{
		         
		         if(user_email != null)
		         {
		            List<MovieVO> genreList=mDao.genreRecomm(user_genre);
		            model.addAttribute("genreList", genreList);
		            model.addAttribute("user_genre", user_genre);
		            model.addAttribute("user_nick", user_nick);
		            System.out.println("user_genre: " + user_genre + " -- user_nick: "+ " -- gList : "+ genreList);
		         }
		         
		      }catch (Exception ex) {}
		      
		  
		  

		  return "main";
	}
}
