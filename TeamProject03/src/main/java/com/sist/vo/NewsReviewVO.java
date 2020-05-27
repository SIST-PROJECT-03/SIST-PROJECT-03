package com.sist.vo;

import lombok.Getter;
import lombok.Setter;
import java.util.*;
/*
    NO         NOT NULL NUMBER        
	RNO                 NUMBER        
	EMAIL      NOT NULL VARCHAR2(300) 
	MSG        NOT NULL CLOB          
	REGDATE             DATE          
	GROUP_ID            NUMBER        
	GROUP_STEP          NUMBER        
	GROUP_TAB           NUMBER        
	ROOT                NUMBER        
	DEPTH               NUMBER        
 */
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
