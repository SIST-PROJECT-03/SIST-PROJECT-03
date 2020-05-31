package com.sist.vo;

import lombok.Data;


public class Naver_JoinVO {
	private int cast_id;
	private int movie_id;
	private String role;
	public int getCast_id() {
		return cast_id;
	}
	public void setCast_id(int cast_id) {
		this.cast_id = cast_id;
	}
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
}
