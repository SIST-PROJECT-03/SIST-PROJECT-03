package com.sist.data;
import java.util.Date;

public class ReviewVO {
	private int movie_id;
	private String user_id;
	private int rate;
	private String content;
	private Date regdate;
	private int good_count;
	private int bad_count;
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getGood_count() {
		return good_count;
	}
	public void setGood_count(int good_count) {
		this.good_count = good_count;
	}
	public int getBad_count() {
		return bad_count;
	}
	public void setBad_count(int bad_count) {
		this.bad_count = bad_count;
	}
	
}
