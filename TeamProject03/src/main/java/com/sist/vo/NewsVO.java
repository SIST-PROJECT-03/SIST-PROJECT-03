package com.sist.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NewsVO {
	private int news_id;
	private String title;
	private String subject;
	private String thumbnail;
	private String content;
	private Date regdate;
	private String author;
}
