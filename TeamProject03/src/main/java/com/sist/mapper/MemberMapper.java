package com.sist.mapper;

import org.apache.ibatis.annotations.Insert;
import com.sist.vo.MemberVO;

public interface MemberMapper {
	
	@Insert("INSERT INTO movie_member VALUES (#{email},#{pwd},#{nick},#{genre},#{gender},#{age},#{point},#{loc},#{actor})")
	public void join(MemberVO vo);

}
