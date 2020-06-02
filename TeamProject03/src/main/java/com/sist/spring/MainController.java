
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
   
   @RequestMapping("blockbuster.do")
   public String blockbuster_main()
   {
	   return "project/main/blockbuster";
   }
   
   @RequestMapping("main.do")
   public String main_main(Model model,HttpSession session)
   {   
	  
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
	      
			 
	   	  List<MovieVO> bigSliderList=mDao.bigSliderList();
		  for(MovieVO svo:bigSliderList)
		  {
		 	//System.out.println(svo.getNet().getEvaluation_point());
		  }
		  model.addAttribute("bigSliderList", bigSliderList);
		  

		  //세션에 있는 값 가져오기
	      String user_email=(String)session.getAttribute("email");
/*		  String user_genre=(String)session.getAttribute("genre");
	      String user_nick=(String)session.getAttribute("nick");
	      String user_gender=(String)session.getAttribute("gender");
	      String user_age=(String)session.getAttribute("age");
	      String user_point=(String)session.getAttribute("point");
	      String user_loc=(String)session.getAttribute("loc");*/
	      
	       MemberVO mvo=dao.profileData(user_email);
	     
	      
	      String user_genre=mvo.getGenre();
	      String user_loc=mvo.getLoc();	 
	      String user_age=mvo.getAge();
	      String user_nick=mvo.getNick();
	      String user_point=mvo.getPoint();
	      String user_gender=mvo.getGender();
	      
	      System.out.println("user_genre: "+ user_genre);
	      System.out.println("user_nick: "+user_nick);
	      System.out.println("user_email: "+ user_email);
	      System.out.println("user_gender: "+ user_gender);
	      System.out.println("user_age: "+user_age);
	      System.out.println("user_point: "+ user_point);
	      System.out.println("user_loc: "+ user_loc);
	      
	      String gender_tag=user_gender;
	      String age_tag=user_age;
	      String point_tag=user_point;
	      
	      model.addAttribute("gender_tag",gender_tag);
	      model.addAttribute("age_tag",age_tag);
	      model.addAttribute("point_tag",point_tag);

	  
		 try{
			  if(user_email!=null ) {
		    
		        	  if(user_age.contains("10")) user_age= "age_10"; 
					  if(user_age.contains("20")) user_age= "age_20"; 
					  if(user_age.contains("30")) user_age= "age_30";
					  if(user_age.contains("40")) user_age= "age_40"; 
					  if(user_age.contains("50")) user_age= "age_50"; 
					  System.out.println("연령대: "+user_age);
					  
				 
					  if(user_point.contains("스토리")) user_point="story_point";
					  if(user_point.contains("연출")) user_point="production_point";
					  if(user_point.contains("OST")) user_point="ost_point";
					  if(user_point.contains("연기")) user_point="acting_point";
					  if(user_point.contains("영상미")) user_point="visual_point";
					  System.out.println("감상포인트: "+user_point);
					
					  if(user_gender.contains("여")) user_gender="female_rating";
					  if(user_gender.contains("남")) user_gender="male_rating";
						 
					  System.out.println("성별:" +user_gender);
					  List<MovieVO> ageList=mDao.ageRecommendation(user_age);
					  model.addAttribute("ageList",ageList);

					  List<MovieVO> genderList=mDao.genderRecommendation(user_gender);
					  model.addAttribute("genderList",genderList);
			      
					  List<MovieVO> pointList=mDao.pointRecommendation(user_point);
					  model.addAttribute("pointList",pointList);
			      
		              List<MovieVO> genreList=mDao.genreRecomm(user_genre);
		              model.addAttribute("genreList", genreList);

		              List<MovieVO> locList=mDao.locRecomm(user_loc);
		              model.addAttribute("locList", locList);
		              
		              List<MovieVO> specialList=mDao.specialRecomm(user_genre);
		              model.addAttribute("specialList", specialList);
		              
		              
			           model.addAttribute("user_genre", user_genre);
			           model.addAttribute("user_nick", user_nick); 
			           model.addAttribute("user_age",user_age);
			           model.addAttribute("user_gender",user_gender);
			           model.addAttribute("user_point",user_point);
			           model.addAttribute("user_loc",user_loc);    
			  }   
		         
		      }catch (NullPointerException ex) {
		    	  System.out.println("Failed to load user_data....");
		    	  ex.printStackTrace();
		      } 
		  return "main";
	}
}
