package com.sist.dao;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.*;
import com.sist.vo.CelebVO;

@Repository
public class CelebDAO {
	
	@Autowired
	private CelebMapper mapper;

	public ArrayList<CelebVO> getCelebList()
	{		
		return mapper.getCelebList();
	}
}
