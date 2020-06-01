package com.sist.vo;

import lombok.Getter;
import lombok.Setter;

public class MovieGenreVO {

	private int movie_id;
	private String genre;
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}	
	
}
