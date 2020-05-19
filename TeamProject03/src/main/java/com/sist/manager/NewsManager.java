package com.sist.manager;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/*
 	articleDiv.first() // 첫 번째 div에서 썸네일 url을 얻어온다.
                                .attr("style")
                                .replace("background-image:url(", "")
                                .replace(")", "");
 */
public class NewsManager {
	public void newsAllData()
	{
		try{
			
			for(int i=1; i<=11; i++){
				Document doc=Jsoup.connect("https://movie.daum.net/magazine/new?tab=nws&regdate=20200519&page="+i).get();
				Elements newsList=doc.select(".tit_line");
				for(int j=0; j<newsList.size(); j++)
				{
					Element titleElement=doc.select(".tit_line").get(j);
					String title=newsElementData(titleElement);
					
					Element subjectElement=doc.select(".desc_line").get(j);
					String subject=newsElementData(subjectElement);
					
					Element thumbnailElement=doc.select(".thumb_img").get(j);
					String thumbnail=newsTumbnailData(thumbnailElement);
					System.out.println(title);
					System.out.println(subject);
					System.out.println(thumbnail);
					System.out.println("===================================================");
				}
				
			}
			
		}catch (Exception ex) {			
			ex.printStackTrace();
		}
		
	}
	
	public String newsTumbnailData(Element e)
	{
		String res="";
		try{
			res=e.attr("style").replace("background-image:url(", "").replace(");", "");
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		return res;
	}
	public String newsElementData(Element e)
	{
		String res="";
		try{
			res=e.text();
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		return res;
	}
	public static void main(String[] args)
	{
		NewsManager nm=new NewsManager();
		nm.newsAllData();
	}
}
