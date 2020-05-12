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
			//linkStr.length
			for(int i=0; i<1; i++)
			{
				int totalpage=0;
				if(movieCount[3]%20!=0)
					totalpage=(movieCount[3]/20)+1;
				else
					totalpage=movieCount[3]/20;
				System.out.println("totalpage : " +totalpage);
				for(int j=1; j<=totalpage; j++)
				{
					Document doc2=Jsoup.connect("https://movie.naver.com/movie/sdb/browsing/"+linkStr[3]+"&page="+j).get();
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
	
	public int totalReviewCount(Element e)
	{
		int res=0;
		try{
			String totalReview=e.text();
			totalReview=totalReview.replaceAll(",", "");
			res=Integer.parseInt(totalReview);
			
			System.out.println(res);
			
			if(res%10==0)
			{
				res=res/10;
			}
			else
			{
				res=(res/10)+1;
			}
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return res;
	}
	public void reviewListData()
	{
		List<Integer> movie_id=getMovieId();
		Element e=null;
		int count=0;
		//movie_id.size()
		try{
			for(int i=0; i<1; i++)
			{
				Document doc=Jsoup.connect("https://movie.naver.com/movie/bi/mi/point.nhn?code=39199").get();
				Element iframeUrl=doc.selectFirst("iframe");
				String reviewUrl=iframeUrl.attr("src");
				Document doc2=Jsoup.connect("https://movie.naver.com/"+reviewUrl).get();
				Element totalElement=doc2.selectFirst(".total > em");
				
				int totalReviewtPage=totalReviewCount(totalElement);
				
				System.out.println("totalReviewtPage :"+totalReviewtPage);
				/*int totalReviewCount=Integer.parseInt(totalElement.text());*/
				
				for(int j=1; j<=totalReviewtPage; j++)
				{
					doc2=Jsoup.connect("https://movie.naver.com/"+reviewUrl+"&page="+j).get();
					Elements reviewSizePer=doc2.select(".score_reple");
					System.out.println("hi");
					for(int z=0; z<reviewSizePer.size(); z++)
					{
						e=doc2.selectFirst(".score_reple #_filtered_ment_"+z);
						String review=getElementString(e);
						System.out.println(review);
						e=doc2.selectFirst(".star_score > em");
						String score=getElementString(e);
						System.out.println(score);
						
						
					}
					
				}
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
	}
	
	public String getElementString(Element e)
	{
		String res="";
		try{
			res=e.text();
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return res;
	}
}
