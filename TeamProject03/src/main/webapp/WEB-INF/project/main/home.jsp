<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <!-- react -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
   $(document).ready(function(){
      $('.mainDetailinfo').hide();   
   })
   /* 상세보기버튼 클릭이벤트 */
   $('.hvr-inner').click(function(){
      $('.mainDetailinfo').show();
      $('.mainInnerDetail').show();
      $('.mainNav').show();
      $('.ing').css('background-color','#dd003f');
      $('.ing2').css('background-color','');
      $('.mainSim').hide();
   });
   /* x버튼 클릭이벤트 */
   $('.viewall2').click(function(){
      $('.mainDetailinfo').hide();
   });
   /* 기본정보버튼 클릭이벤트 */
   $('.info').click(function(){
      $('.mainInnerDetail').show();
      $('.mainSim').hide();
      $('.ing').css('background-color','#dd003f');
      $('.ing2').css('background-color','');
   });
   /* 비슷한 작품버튼 클릭이벤트 */
   $('.similar').click(function(){
      $('.mainInnerDetail').hide();
      $('.mainSim').show();
      $('.ing2').css('background-color','#dd003f');
      $('.ing').css('background-color','');
   });
})
</script>
</head>
<body>
<!-- ==============================main big slider total area start ================================= -->
<div class="slider sliderv2">
	<div class="container">
		<div class="row">
	    	<div class="slider-single-item">
	    	
	    	
				<!-- ====================================1 big slider start=========================================== -->	 
				<c:forEach var="svo" items="${bigSliderList }">   	
	    		<div class="movie-item">
	    			<input type=hidden name=movie_id value="${svo.movie_id }" id="movie_id" >
	    			<div class="row">
	    				<div class="col-md-8 col-sm-12 col-xs-12">
	    					<div class="title-in">
			    				<div class="cate">
			    					<span class="blue"><a href="#">${svo.genre }</a></span>
			    					<span class="yell"><a href="#">${svo.country }</a></span>
			    					<!-- <span class="orange"><a href="#">범죄</a></span> -->
			    				</div>
			    				<h1><a href="#"><br>
								${svo.title }<span>${svo.movie_id }</span></a></h1>
								<div class="social-btn">
									<a href="#" class="parent-btn"><i class="ion-play"></i>예고편 보기</a>
									<a href="#" class="parent-btn"><i class="ion-heart"></i>리스트에 담기</a>
									<div class="hover-bnt">
										<a href="#" class="parent-btn"><i class="ion-android-share-alt"></i>공유</a>
										<div class="hvr-item">
											<a href="#" class="hvr-grow"><i class="ion-social-facebook"></i></a>
											<a href="#" class="hvr-grow"><i class="ion-social-twitter"></i></a>
											<a href="#" class="hvr-grow"><i class="ion-social-googleplus"></i></a>
											<a href="#" class="hvr-grow"><i class="ion-social-youtube"></i></a>
										</div>
									</div>		
								</div>
			    				<div class="mv-details">
			    					<p><i class="ion-android-star"></i><span>${svo.net.evaluation_point }</span> /10</p>
			    					<ul class="mv-infor">
			    						<li>  상영시간: ${svo.running_time }분 </li>
			    						<li>  상영등급: ${svo.grade }</li>
			    						<li> 개봉일:<fmt:formatDate value="${svo.opening_date }" pattern="yyyy/MM/dd"/></li>
			    					</ul>
			    				</div>
			    				<div class="btn-transform transform-vertical">
									<div><a href="#" class="item item-1 redbtn">더보기</a></div>
									<div><a href= "#" class="item item-2 redbtn hvrbtn">더보기</a></div>
								</div>		
			    			</div>
	    				</div>
	    				<div class="col-md-4 col-sm-12 col-xs-12">
		    				<div class="mv-img-2">
			    				<a href="#"><img src="${svo.poster }" alt="" style="width:270px; height:414px;"></a>
			    			</div>
		    			</div>
	    			</div>	
	    		</div>
	    		
	    		</c:forEach>
	    	</div>
	    </div>
	</div>
</div> 
<!-- ==============================main big slider total area end ================================= -->

<div class="movie-items  full-width">
   <div class="row">
      <div class="col-md-12">
         <div class="title-hd">
            <h2>#블록버스터 최고의 인기작</h2>
            <a href="movieGrid.do" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a>
         </div>

         <div class="tabs">
<!--==================================================================================================================================추천1 START -->
             <div class="tab-content">
                 <div id="tab1-h2" class="tab active">
                     <div class="row">
                        <div class="slick-multiItem2">
                
                           <div class="slide-it">
                              <div class="movie-item">
                                 <div class="mv-img">
                                    <img src="images/uploads/mv-it8.jpg" alt="">
                                 </div>
                                 <div class="hvr-inner">
                                    <a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
                                 </div>
                                 <div class="title-in">
                                    <h5>인셉션</h5>
                                 </div>
                              </div>
                           </div>
                           
                        </div>
                     </div>
                 </div>
                 
<!--================================================================================================================================ajax start  -->
<div class="movie-items full-width mainDetailinfo" >
   <div class="row">
      <div class="col-md-12">
         <div class="mainInner">
            <div class="title-hd">
               <h2>오블리비언</h2>
               <a class="viewall2">x</a>
            </div>
            <div class="mainInfo">
               <div class="title-in">
                  <div class="mainInnerDetail">               
                     <div class="movie-item col-md-8">
                        <p>관람객별점 8.8 | 기자/평론가  7.8 | 네티즌  7.7</p>
                        <p><b>외계인의 침공이 있었던 지구 최후의 날 이후, 모두가 떠나버린 지구의 마지막 정찰병 '잭 하퍼'(톰 크루즈)는 임무를 수행하던 중 정체불명의 우주선을 발견한다. 자신을 이미 알고 있는 한 여자(올가 쿠릴렌코)를 만나 기억나지 않는 과거 속에 어떤 음모가 있었음을 알게 된 잭. 그는 적인지 동료인지 알 수 없는 지하조직의 리더(모건 프리먼)를 통해 자신을 둘러싼 모든 것에 의심을 품기 시작하고 지구의 운명을 건 마지막 전쟁을 시작한다!</b></p>
                        <p><b>감독</b>&nbsp;  조지프 코신스키</p>
                        <p><b>출연</b>&nbsp;  톰 크루즈, 모건 프리먼, 올가 쿠릴렌코</p>
                        <p><b>개요</b>&nbsp; 15세 관람가 |  액션SF | 미국 | 2011년</p>
                        <div class="social-btn">      
                           <a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
                           <a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
                        </div>               
                        <div class="btn-transform transform-vertical"> 
                           <a href="seriesSingle.do?movie_id=35901" class="item item-1 redbtn">상세정보</a>
                           <a href="seriesSingle.do?movie_id=35901" class="item item-2 redbtn hvrbtn">상세정보</a>
                        </div>
                     </div>
                     <!-- <div class="mainInnerVideoRight col-md-4"> -->
                     <div class="mainInnerImg col-md-4" style="background-image:url('images/uploads/mv-it1.jpg');">
                        <!-- <div class="videoPlayer">
                           <img src="images/uploads/mv-it1.jpg">   
                        </div> -->
                        <div class="detailImg"></div>
                     </div>
                  </div>
                  <div class="mainSim">
                     <div class=" movie-item col-md-3">
                        <div class="mainInnerVideoRight col-md-5">
                           <div class="videoPlayer">
                              <img src="images/uploads/mv-it1.jpg"/>
                           </div>
                        </div>
                        <div class="mainInnerVideoRight col-md-7">
                           <!-- <p>관람객별점 | 기자/평론가 | 네티즌</p> -->
                           <p>제목</p>
                           <p>줄거리</p>
                           <p>감독</p>
                           <p>출연</p>
                           <p>장르 | 개봉연도</p>
                           <!-- <div class="social-btn">      
                              <a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
                              <a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
                           </div> -->
                        </div>
                        <div class="btn-transform transform-vertical">
                           <a href="seriesSingle.do" class="item item-1 redbtn">상세정보</a>
                           <a href="seriesSingle.do" class="item item-2 redbtn hvrbtn">상세정보</a>
                        </div>
                     </div>
                     <div class=" movie-item col-md-3">
                        <div class="mainInnerVideoRight col-md-5">
                           <div class="videoPlayer">
                              <img src="images/uploads/mv-it1.jpg"/>
                           </div>
                        </div>
                        <div class="mainInnerVideoRight col-md-7">
                           <!-- <p>관람객별점 | 기자/평론가 | 네티즌</p> -->
                           <p>제목</p>
                           <p>줄거리</p>
                           <p>감독</p>
                           <p>출연</p>
                           <p>장르 | 개봉연도</p>
                           <!-- <div class="social-btn">      
                              <a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
                              <a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
                           </div> -->
                        </div>
                        <div class="btn-transform transform-vertical">
                           <a href="seriesSingle.do" class="item item-1 redbtn">상세정보</a>
                           <a href="seriesSingle.do" class="item item-2 redbtn hvrbtn">상세정보</a>
                        </div>
                     </div>
                     <div class=" movie-item col-md-3">
                        <div class="mainInnerVideoRight col-md-5">
                           <div class="videoPlayer">
                              <img src="images/uploads/mv-it1.jpg"/>
                           </div>
                        </div>
                        <div class="mainInnerVideoRight col-md-7">
                           <!-- <p>관람객별점 | 기자/평론가 | 네티즌</p> -->
                           <p>제목</p>
                           <p>줄거리</p>
                           <p>감독</p>
                           <p>출연</p>
                           <p>장르 | 개봉연도</p>
                           <!-- <div class="social-btn">      
                              <a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
                              <a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
                           </div> -->
                        </div>
                        <div class="btn-transform transform-vertical">
                           <a href="seriesSingle.do" class="item item-1 redbtn">상세정보</a>
                           <a href="seriesSingle.do" class="item item-2 redbtn hvrbtn">상세정보</a>
                        </div>
                     </div>
                     <div class=" movie-item col-md-3">
                        <div class="mainInnerVideoRight col-md-5">
                           <div class="videoPlayer">
                              <img src="images/uploads/mv-it1.jpg"/>
                           </div>
                        </div>
                        <div class="mainInnerVideoRight col-md-7">
                           <!-- <p>관람객별점 | 기자/평론가 | 네티즌</p> -->
                           <p>제목</p>
                           <p>줄거리</p>
                           <p>감독</p>
                           <p>출연</p>
                           <p>장르 | 개봉연도</p>
                           <!-- <div class="social-btn">      
                              <a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
                              <a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
                           </div> -->
                        </div>
                        <div class="btn-transform transform-vertical">
                           <a href="seriesSingle.do" class="item item-1 redbtn">상세정보</a>
                           <a href="seriesSingle.do" class="item item-2 redbtn hvrbtn">상세정보</a>
                        </div>
                     </div>
                  </div>   
                  <div class="mainNav">
                     <ul class="menu">
                        <li class="info">
                           <a >기본정보</a>
                           <span class="ing"></span>
                        </li>            
                        <li  class="similar">
                           <a>비슷한 작품</a>
                           <span class="ing2"></span>
                        </li>      
                     </ul>
                  </div>      
               </div>
            </div>
         </div>
      </div>
   </div>
</div>    
<!--================================================================================================================================ajax end  -->                  
         </div>
<!--============================================================================================================================================추천1 END-->
<<<<<<< HEAD

			
<!--============================================================================================================================================추천2 START-->
			<div class="title-hd">
					<h2>#여성 기준 평점</h2>
					<a class="viewall2">x</a>
			</div>
			 <div class="tab-content">
			        <div id="tab1-h2" class="tab active">
			            <div class="row">
			            	<div class="slick-multiItem2">
			            	  <c:forEach var="rvo" items="${ratingList }">
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a class="mainDetail"> 상세보기 <i class="ion-android-arrow-dropright"></i></a>
				            			</div>
				            			<div class="title-in">
				            				<h6></h6>
				            			</div>
				            		</div>
			            		</div>
			            	   </c:forEach>
			            	</div>
			            </div>
			        </div>
			</div>
<!--============================================================================================================================================추천2 END-->
	</div>
=======
>>>>>>> 6fd44009aec87c65cbed6e320fc0bd5d8b4ab923
</div>
         
<!--============================================================================================================================================추천2 START-->

         <div class="title-hd">
               <h2>#여성 기준 평점</h2>
               <a href="movieGrid.do" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a>
         </div>
          <div class="tab-content">
                 <div id="tab1-h2" class="tab active">
                     <div class="row">
                        <div class="slick-multiItem2">
                          <c:forEach var="nvo" items="${ageList }">
                           <div class="slide-it">
               
                              <div class="slide-it">
                              <div class="movie-item">
                                 <div class="mv-img">
                                    <img src="${nvo.poster }" alt="" style="width:257px;height:394.84px;">
                                 </div>
                                 <div class="hvr-inner">
                                    <a  href="mainDetail"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
                                 </div>
                                 <div class="title-in">
                                    <h5>${nvo.title }</h5>
                        
                                 </div>
                              </div>
                           </div>
                           </div>
                           </c:forEach>
                        </div>
                     </div>
                 </div>
         </div>
<!--============================================================================================================================================추천2 END-->
        </div>     
       </div>
   </div>

<!-- =============================  LATEST NEWS AREA START  ============================== -->
<div class="latestnew full-width">
      <div class="row">
         <!-- <div class="col-md-9"> -->
         <div>
            <div class="ads adsv2">
               <img src="images/uploads/ads2.png" alt="">
            </div>
            <div class="title-hd">
               <h2>최신 영화 뉴스</h2>
               <a href="newsList.do" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a>
            </div>
            <div class="latestnewv2">
               <c:forEach var="nvo" items="${newsList }">
               <div class="blog-item-style-2">
                  <a href="newsDetail.do?no=${nvo.news_id }"><img src="${nvo.thumbnail }" style="width: 90%; height: 200px;"></a>
                  <div class="blog-it-infor">
                     <h3><a href="newsDetail.do?no=${nvo.news_id }">${nvo.title }</a></h3>
                     <span class="time"><fmt:formatDate value="${nvo.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                     <p>${nvo.subject }</p>
                  </div>
               </div>
               </c:forEach>
            </div>
         </div>
         <!-- <div class="col-md-3">
            <div class="sidebar">
               <div class="sb-facebook sb-it">
                  <h4 class="sb-title">Find us on Facebook</h4>
                  <iframe src="#" data-src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Ftemplatespoint.net%2F%3Ffref%3Dts&tabs=timeline&width=340&height=315px&small_header=true&adapt_container_width=false&hide_cover=false&show_facepile=true&appId"  height="315" style="width:100%;border:none;overflow:hidden" ></iframe>
               </div>
               <div class="sb-twitter sb-it">
                  <h4 class="sb-title">Tweet to us</h4>
                  <div class="slick-tw">
                     <div class="tweet item" id="">Put your twiter id here
                     </div>
                     <div class="tweet item" id="">Put your 2nd twiter account id here
                     </div>
                  </div>               
               </div>
            </div>
         </div> -->
      </div>
</div>
<!-- =============================  LATEST NEWS AREA END  ============================== -->
<!-- =============================  HOME END  ============================== -->
</body>
</html>