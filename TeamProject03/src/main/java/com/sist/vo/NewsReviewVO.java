package com.sist.vo;

import lombok.Getter;
import lombok.Setter;
import java.util.*;
@Getter
@Setter
public class NewsReviewVO {
	private int no;
	private int news_no;
	private String email;
	private String msg;
	private Date regdate;
	private int group_id;
	private int group_step;
	private int group_tab;
	private int root;
	private int depth;
	
}
