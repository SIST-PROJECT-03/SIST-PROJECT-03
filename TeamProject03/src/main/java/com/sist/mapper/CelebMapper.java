package com.sist.mapper;

import org.apache.ibatis.annotations.Select;
import java.util.*;
import com.sist.vo.*;

public interface CelebMapper {
	@Select("SELECT rownum, cast.* FROM cast WHERE rownum between 1 AND 50 AND thumbnail<>'https://ssl.pstatic.net/static/movie/2012/06/dft_img77x96_1.png' AND birth IS NOT NULL")
	public ArrayList<CelebVO> getCelebList();
}
