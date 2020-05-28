package com.sist.vo;

import java.util.*;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MovieVO {

   private int movie_id;
   private String title;
   private String grade;
   private Date opening_date;
   private String genre;
   private String country;
   private int running_time;
   private int hit;
   private int audience_count;
   private String story;
   private String poster;
   private NetizenEvaluationTrendVO net=new NetizenEvaluationTrendVO();
   private MovieGenreVO gen=new MovieGenreVO();
	
	
	
	
	
}
