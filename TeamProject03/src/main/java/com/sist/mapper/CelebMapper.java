package com.sist.mapper;

import org.apache.ibatis.annotations.Select;
import java.util.*;
import com.sist.vo.*;

public interface CelebMapper {
	@Select("SELECT num,cast_id,name,birth,thumbnail,profile,reward " 
		+"FROM (SELECT rownum as num, cast.* FROM cast "
		+"WHERE thumbnail<>'https://ssl.pstatic.net/static/movie/2012/06/dft_img77x96_1.png' AND birth IS NOT NULL) "
		+"WHERE num between #{start} AND #{end}")
	public ArrayList<CelebVO> getCelebList(Map map);

	@Select("SELECT CEIL(COUNT(*)/#{rowSize}) as totalPage FROM cast "
			+ "WHERE thumbnail<>'https://ssl.pstatic.net/static/movie/2012/06/dft_img77x96_1.png' AND birth IS NOT NULL")
	public int getCelebTotalPage(int rowSize);

	@Select("SELECT * FROM cast WHERE name LIKE '%'||#{name}||'%'")
	public ArrayList<CelebVO> getSearchCelebList(String name);
}

/*
 * @SelectKey(keyProperty="no",resultType=int.class,before=true,
 * 	statement="SELECT NVL(MAX(no)+1,1) as no FROM ���̺�")
 * @Insert("INSERT INTO ���̺�(��) VALUES()
 */



