package com.sist.data;
import java.util.*;
public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		CastManager cm=new CastManager();
		ReviewManager rm=new ReviewManager();
		try{
			cm.castAllData();
			/*int[] result=rm.getMovieCount();*/
			/*List<ReviewVO> list=rm.reviewListData();
			
			
			for(ReviewVO vo:list)
			{
				System.out.println(vo.getUser_id());
			}*/
		}catch (Exception ex) {}
		
		
	}

}
