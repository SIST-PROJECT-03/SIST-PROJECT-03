package com.sist.data;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class ReviewManager {
	
	public int[] getMovieCount()
	{
		int[] result=new int[8];
		int i=0;
		int count=0;
		try{
			Document doc=Jsoup.connect("https://movie.naver.com/movie/sdb/browsing/bmovie_form.nhn").get();
			Elements countPer=doc.select("tbody td");
			StringTokenizer st=new StringTokenizer(countPer.text()," ");

			while(st.hasMoreTokens())
			{
				String temp=st.nextToken();
				temp=temp.replace("(", "");
				temp=temp.replace(")", "");
				if(i%2==1)
				{
					result[count]=Integer.parseInt(temp);
					count++;
				}
				i++;
				
			}
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		return result;
	}
	
	public List<Integer> getMovieId()
	{
		List<Integer> list=new ArrayList<Integer>();
		String[] linkStr=new String[8];
		int[] movieCount=getMovieCount();
		
		try{
			Document doc=Jsoup.connect("https://movie.naver.com/movie/sdb/browsing/bmovie_form.nhn").get();
			Element link=null;
			for(int i=0; i<8; i++)
			{
				link=doc.select("tbody a").get(i);
				linkStr[i]=link.attr("href");
			}
			
			for(int i=0; i<linkStr.length; i++)
			{
				int totalpage=0;
				if(movieCount[3]%20!=0)
					totalpage=(movieCount[3]/20)+1;
				else
					totalpage=movieCount[3]/20;
				System.out.println("totalpage : " +totalpage);
				for(int j=1; j<=totalpage; j++)
				{
					Document doc2=Jsoup.connect("https://movie.naver.com/movie/sdb/browsing/"+linkStr[i]+"&page="+j).get();
					Elements mlinkSize=doc2.select(".directory_list > li > a");
					Element mlink=null;
					for(int k=0; k<mlinkSize.size(); k++)
					{
						mlink=doc2.select(".directory_list > li > a").get(k);
						String temp=mlink.attr("href");
						list.add(Integer.parseInt(temp.substring(temp.indexOf("=")+1)));
					}
					
				}
			}
			
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		int a=0;
		for(int c:list)
		{
			System.out.println(a+". "+c);
			a++;
			
		}
		
		return list;
	}
	
	public void reviewListData(int movie_id)
	{
		
	}
}
