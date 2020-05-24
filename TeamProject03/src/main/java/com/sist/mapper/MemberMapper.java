package com.sist.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.sist.vo.MemberVO;

public interface MemberMapper {
	
	@Insert("INSERT INTO movie_member VALUES (#{email},#{pwd},#{nick},#{genre},#{gender},#{age},#{point},#{loc},#{actor})")
	public void join(MemberVO vo);
	
	@Select("SELECT COUNT(*) FROM movie_member WHERE email=#{email}")
	public int emailCount(String email);
	
	@Select("SELECT pwd FROM movie_member WHERE email=#{email}")
	public String emailGetPassword(String email);

}
