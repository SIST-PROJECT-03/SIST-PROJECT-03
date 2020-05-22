package com.sist.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MainMapper;
import com.sist.vo.MovieVO;

import java.util.*;
@Repository
public class MainDAO {

	@Autowired
	private MainMapper mapper;
	
	public List<MovieVO> mainListData()
	{
		return mapper.mainListData();
	}
}
