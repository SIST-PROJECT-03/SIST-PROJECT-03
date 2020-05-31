package com.sist.mapper;

import java.util.Map;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import com.sist.vo.MemberVO;

public interface MemberMapper {
	
	@Insert("INSERT INTO movie_member VALUES (#{email},#{pwd},#{nick},#{genre},#{gender},#{age},#{point},#{loc})")
	public void join(MemberVO vo);
	
	@Select("SELECT COUNT(*) FROM movie_member WHERE email=#{email}")
	public int emailCount(String email);
	
	@Select("SELECT pwd FROM movie_member WHERE email=#{email}")
	public String emailGetPassword(String email);
	
	@Select("SELECT * FROM movie_member WHERE email=#{email}")
	public MemberVO profileData(String email); 
	
	@Update("UPDATE movie_member SET nick=#{nick} WHERE email=#{email}")
	public void profileUpdate(Map map);

}
