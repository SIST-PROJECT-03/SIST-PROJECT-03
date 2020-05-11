package com.sist.data;
import java.util.*;
public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CastManager cm=new CastManager();
		ReviewManager rm=new ReviewManager();
		try{
			/*cm.castAllData();*/
			/*int[] result=rm.getMovieCount();*/
			rm.getMovieId();
			
			/*for(int i:result)
			{
				System.out.println(i);
			}*/
		}catch (Exception ex) {}
	}

}
