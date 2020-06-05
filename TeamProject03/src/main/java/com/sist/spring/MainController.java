
package com.sist.spring;

import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
   
   @Autowired
   private MovieDAO movieDao;
   
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
	      
			 
	   	  	  
		  String email=(String)session.getAttribute("email");
		  
	  
		 try{
			  if(email!=null ) {
					  
					  MemberVO mvo=dao.profileData(email);
				      String user_genre=mvo.getGenre();
				      String user_loc=mvo.getLoc();	 
				      String user_age=mvo.getAge();
				      String user_nick=mvo.getNick();
				      String user_point=mvo.getPoint();
				      String user_gender=mvo.getGender();
				      
				      System.out.println("user_genre: "+ user_genre);
				      System.out.println("user_nick: "+user_nick);
				      System.out.println("user_email: "+ email);
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
			      
				  	   /*ORDER BY reads only Integer OR ${} Type*/
		        	  if(user_age.contains("10"))  user_age= "age_10"; 
					  if(user_age.contains("20"))  user_age= "age_20"; 
					  if(user_age.contains("30"))  user_age= "age_30";
					  if(user_age.contains("40"))  user_age= "age_40";
					  if(user_age.contains("50"))  user_age= "age_50";
					  
					
					  if(user_point.contains("스토리")) user_point="story_point";
					  if(user_point.contains("연출")) user_point="production_point";
					  if(user_point.contains("OST")) user_point="ost_point";
					  if(user_point.contains("연기")) user_point="acting_point";
					  if(user_point.contains("영상미")) user_point="visual_point";

			
					  if(user_gender.contains("여")) user_gender="female_rating";
					  if(user_gender.contains("남")) user_gender="male_rating";
						
					  Map map=new HashMap();
			          map.put("user_age",user_age);
			          map.put("user_gender",user_gender);
			          map.put("user_point",user_point);
			          map.put("user_genre", user_genre);
			          map.put("user_loc", user_loc);
			           
					  List<MovieVO> ageList=mDao.ageRecommendation(map);
					  model.addAttribute("ageList",ageList);

					  List<MovieVO> genderList=mDao.genderRecommendation(map);
					  model.addAttribute("genderList",genderList);
			      
					  List<MovieVO> pointList=mDao.pointRecommendation(map);
					  model.addAttribute("pointList",pointList);
					  
		              List<MovieVO> genreList=mDao.genreRecomm(user_genre);
		              model.addAttribute("genreList", genreList);

		              List<MovieVO> locList=mDao.locRecomm(map);
		              model.addAttribute("locList", locList);
		              
		              List<MovieVO> specialList=mDao.specialRecomm(map);
		              model.addAttribute("specialList", specialList);
		             
		              
		              List<MovieVO> bigSliderList=mDao.bigSliderList();
		    		  int movie_id;
		    		 
		    		  //<span class="blue"><a href="#">${svo.genre }</a></span>
		    		  for(MovieVO vo:bigSliderList)
		    		  {
		    			movie_id=vo.getNet().getMovie_id();
		    			System.out.println("con-movie_id: "+movie_id);
		    			
		    			List<MoviePicturesVO> movieUrl=mDao.getMovieUrl_home(movie_id);
		    			String temp1="";
		    			for(MoviePicturesVO pvo:movieUrl)
		    			{
		    				temp1=pvo.getUrl();
		    				
		    			}
		    			vo.setUrl(temp1);
		    			
		    			List<MovieGenreVO> selGenreList=mDao.selectGenre(movie_id);
		    			String temp="";    			
		    			for(MovieGenreVO gvo:selGenreList)
		    			{
		    				temp+="<span class=\"blue\"><a href=\"#\">"+gvo.getGenre()+"</a></span>\n";
		    			}
		    			System.out.println(temp);
		    			
		    			vo.setGenre(temp);
		    					    			    			
		    		  }
		    		  
		    		  
		    		   model.addAttribute("bigSliderList", bigSliderList);
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
