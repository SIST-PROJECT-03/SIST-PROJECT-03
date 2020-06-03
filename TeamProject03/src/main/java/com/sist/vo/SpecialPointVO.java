package com.sist.vo;
/*
 * MOVIE_ID	NUMBER
NAME	VARCHAR2(54 BYTE)
SCORE	NUMBER
CONTENT	CLOB
 * 
 */
public class SpecialPointVO {

	private int movie_id;
	private String name;
	private int score;
	private String content;
	
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
