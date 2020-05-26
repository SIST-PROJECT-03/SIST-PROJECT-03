package com.sist.vo;

import lombok.Getter;
import lombok.Setter;

public class CelebVO {
	private String name;
	private String birth;
	private String thumbnail;
	private String profile;
	private String reward;
	private String cast_id;
	
	
	public String getCast_id() {
		return cast_id;
	}
	public void setCast_id(String cast_id) {
		this.cast_id = cast_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getReward() {
		return reward;
	}
	public void setReward(String reward) {
		this.reward = reward;
	}
}
