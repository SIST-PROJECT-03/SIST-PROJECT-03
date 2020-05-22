<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/home.css">
	<!-- react -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/0.14.0/react.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/0.14.0/react-dom.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.23/browser.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> 
<script src="https://unpkg.com/axios/dist/axios.min.js"></script> 	
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
<!-- search form -->
<div class="container" id="root"></div>
<script type="text/babel">
class App extends React.Component{
	constructor(props){
	}
 	render(){
		return(
		)
	}
}
class MovieList extends React.Component{
	render(){
		return(
		)
	}
}
ReactDOM.render(<App/>,document.getElementByid('root'));

</script>

<div class="slider sliderv2">
	<div class="container">
		<div class="row">
	    	<div class="slider-single-item">
	    		<div class="movie-item">
	    			<div class="row">
	    				<div class="col-md-8 col-sm-12 col-xs-12">
	    					<div class="title-in">
			    				<div class="cate">
			    					<span class="blue"><a href="#">액션</a></span>
			    					<span class="yell"><a href="#">모험</a></span>
			    					<span class="orange"><a href="#">범죄</a></span>
			    				</div>
			    				<h1><a href="#"><br>
								월요일이 사라졌다<span>2018</span></a></h1>
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
			    					<p><i class="ion-android-star"></i><span>8.4</span> /10</p>
			    					<ul class="mv-infor">
			    						<li>  상영시간: 123분 </li>
			    						<li>  상영등급: 12세 관람가</li>
			    						<li>  개봉일: 18/02/22</li>
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
			    				<a href="#"><img src="https://movie-phinf.pstatic.net/20180129_126/1517205484221qUvjL_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:270px; height:414px;"></a>
			    			</div>
		    			</div>
	    			</div>	
	    		</div>
	    		<div class="movie-item">
	    			<div class="row">
	    				<div class="col-md-8 col-sm-12 col-xs-12">
	    					<div class="title-in">
			    				<div class="cate">
			    					<span class="blue"><a href="#">SF</a></span>
			    					<span class="yell"><a href="#">액션</a></span>
			    					<span class="orange"><a href="#">어드밴쳐</a></span>
			    				</div>
			    				<h1><a href="#"><br>
								가디언즈 오브 갤럭시 VOL.2<span>2017</span></a></h1>
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
			    					<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
			    					<ul class="mv-infor">
			    						<li>  상영시간: 136분 </li>
			    						<li>  상영등급: 12세 관람가</li>
			    						<li>  개봉일: 17/05/03</li>
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
			    				<a href="#"><img src="https://movie-phinf.pstatic.net/20170329_6/1490752948552vH5G8_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:270px; height:414px;"></a>
			    			</div>
		    			</div>
	    			</div>	
	    		</div>
	    	</div>
	    </div>
	</div>
</div>
<div class="movie-items full-width mainDetailinfo" >
	<div class="row">
		<div class="col-md-12">
			<div class="mainInner">
				<div class="title-hd">
					<h2>제목</h2>
					<a class="viewall2">x</a>
				</div>
				<div class="mainInfo">
					<div class="title-in">
						<div class="mainInnerDetail">					
							<div class="movie-item col-md-8">
								<p>관람객별점 | 기자/평론가 | 네티즌</p>
								<p>줄거리</p>
								<p>감독</p>
								<p>출연</p>
								<p>개요 | 장르 | 국가 | 개봉연도</p>
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
<div class="movie-items  full-width">
	<div class="row">
		<div class="col-md-12">
			<div class="title-hd">
				<h2>#블록버스터 최고의 인기작</h2>
				<a href="../movieList/movieGrid.do" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a>
			</div>
			<div class="tabs">
				<ul class="tab-links">
					<li class="active"><a href="#tab21-h2">&nbsp;</a></li>
					<li><a href="#tab22-h2">&nbsp;</a></li>
					<li><a href="#tab23-h2">&nbsp;</a></li>
					<li><a href="#tab24-h2">&nbsp;</a></li>               
				</ul>
			    <div class="tab-content">
			        <div id="tab1-h2" class="tab active">
			            <div class="row">
			            	<div class="slick-multiItem2">
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it1.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">오블리비언</a></h6>
				            				<p><i class="ion-android-star"></i><span>8.9</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
								<div class="slide-it">
									<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it2.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">인 투 더 와일드</a></h6>
				            				<p><i class="ion-android-star"></i><span>9.4</span> /10</p>
				            			</div>
				            		</div>
								</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20161123_188/1479862185516tYkKO_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">라라랜드</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.0</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20200310_91/1583805533463Yqyui_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">분노의 질주: 더 익스트림</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.8</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20200211_164/1581396524128hxWV1_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">젠틀맨</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it6.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">007 스카이폴</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it7.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">그것</a></h6>
				            				<p><i class="ion-android-star"></i><span>9.0</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it8.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">인셉션</a></h6>
				            				<p><i class="ion-android-star"></i><span>8.5</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            	</div>
			            </div>
			        </div>
			        <div id="tab2-h2" class="tab">
			           <div class="row">
			            	<div class="slick-multiItem2">
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it4.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">The walk</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it5.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it6.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Interstellar</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it7.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it8.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            	</div>
			            </div>
			        </div>
			        <div id="tab3-h2" class="tab">
			        	<div class="row">
			            	<div class="slick-multiItem2">
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it1.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Interstellar</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
								<div class="slide-it">
									<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it2.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">The revenant</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
								</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it3.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it4.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">The walk</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it5.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            	</div>
			            </div>
		       	 	</div>
		       	 	 <div id="tab4-h2" class="tab">
			        	<div class="row">
			            	<div class="slick-multiItem2">
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it5.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it6.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Interstellar</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it7.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="images/uploads/mv-it8.jpg" alt="">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            	</div>
			            </div>
		       	 	</div>
			    </div>
			</div>
			<!-- ============================= IN THETER SLIDER END  ============================== -->
			
			
			<!-- ============================= ON TV SLIDER START  ============================== -->
			<div class="title-hd">
				<h2>할리우드 코미디... 어디까지 봤니? (이아린님 컬렉션)</h2>
				<a href="#" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a>
			</div>
			<div class="tabs">
				<ul class="tab-links-2">
					<li class="active"><a href="#tab21-h2">&nbsp;</a></li>
					<li><a href="#tab22-h2">&nbsp;</a></li>
					<li><a href="#tab23-h2">&nbsp;</a></li>
					<li><a href="#tab24-h2">&nbsp;</a></li>                        
				</ul>
			    <div class="tab-content">
			        
			        <div id="tab21-h2" class="tab active">
			            <div class="row">
			            	<div class="slick-multiItem2">
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20160217_153/1455686083975zjajH_JPEG/movie_image.jpg?type=m203_290_2" alt=""style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">주토피아</a></h6>
				            				<p><i class="ion-android-star"></i><span>8.9</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
								<div class="slide-it">
									<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20140721_155/1405929648411y5t2g_JPEG/movie_image.jpg?type=m203_290_2" alt=""style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">비긴 어게인</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
								</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20180510_219/1525934615322rulbv_JPEG/movie_image.jpg?type=m203_290_2" alt=""style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">데드풀 2</a></h6>
				            				<p><i class="ion-android-star"></i><span>8.2</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20180601_276/1527835091787c3BdN_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">아이 필 프리티</a></h6>
				            				<p><i class="ion-android-star"></i><span>8.8</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20111221_87/1324463812384jrIP3_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">어바웃 어 보이</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.0</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20180511_35/1525999995668PFOx3_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">스탠바이, 웬디</a></h6>
				            				<p><i class="ion-android-star"></i><span>6.7</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20190805_203/15649916739090lNjN_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">마이펫의 이중생활2</a></h6>
				            				<p><i class="ion-android-star"></i><span>8.7</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="https://movie-phinf.pstatic.net/20171016_232/1508134137061ayymY_JPEG/movie_image.jpg?type=m203_290_2" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">킹스맨: 골든 서클</a></h6>
				            				<p><i class="ion-android-star"></i><span>6.6</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            	</div>
			            </div>
			        </div>
			        <div id="tab22-h2" class="tab">
			           <div class="row">
			            	<div class="slick-multiItem2">
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            			<img src="" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">The walk</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Interstellar</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="" alt=""style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            	</div>
			            </div>
			        </div>
			        <div id="tab23-h2" class="tab">
			        	<div class="row">
			            	<div class="slick-multiItem2">
			            		<div class="movie-item">
			            			<div class="mv-img">
			            				<img src="" alt="" style="width:257px; height:394.84px;">
			            			</div>
			            			<div class="hvr-inner">
			            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
			            			</div>
			            			<div class="title-in">
			            				<h6><a href="#">Interstellar</a></h6>
			            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
			            			</div>
			            		</div>
								<div class="movie-item">
			            			<div class="mv-img">
			            				<img src="" alt="" style="width:257px; height:394.84px;">
			            			</div>
			            			<div class="hvr-inner">
			            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
			            			</div>
			            			<div class="title-in">
			            				<h6><a href="#">The revenant</a></h6>
			            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
			            			</div>
			            		</div>
			            		<div class="movie-item">
			            			<div class="mv-img">
			            				<img src="" alt="" style="width:257px; height:394.84px;">
			            			</div>
			            			<div class="hvr-inner">
			            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
			            			</div>
			            			<div class="title-in">
			            				<h6><a href="#">Die hard</a></h6>
			            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
			            			</div>
			            		</div>
			            		<div class="movie-item">
			            			<div class="mv-img">
			            				<img src="" alt="" style="width:257px; height:394.84px;">
			            			</div>
			            			<div class="hvr-inner">
			            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
			            			</div>
			            			<div class="title-in">
			            				<h6><a href="#">The walk</a></h6>
			            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
			            			</div>
			            		</div>
			            		<div class="movie-item">
			            			<div class="mv-img">
			            				<img src="" alt="" style="width:257px; height:394.84px;">
			            			</div>
			            			<div class="hvr-inner">
			            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
			            			</div>
			            			<div class="title-in">
			            				<h6><a href="#">Die hard</a></h6>
			            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
			            			</div>
			            		</div>
			            	</div>
			            </div>
		       	 	</div>
		       	 	 <div id="tab24-h2" class="tab">
			        	<div class="row">
			            	<div class="slick-multiItem2">
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">The walk</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            		<div class="slide-it">
			            			<div class="movie-item">
				            			<div class="mv-img">
				            				<img src="" alt="" style="width:257px; height:394.84px;">
				            			</div>
				            			<div class="hvr-inner">
				            				<a  href="moviesingle.html"> 상세보기 <i class="ion-android-arrow-dropright"></i> </a>
				            			</div>
				            			<div class="title-in">
				            				<h6><a href="#">Die hard</a></h6>
				            				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
				            			</div>
				            		</div>
			            		</div>
			            	</div>
			            </div>
		       	 	</div>
			    </div>
			</div>
			<!-- ============================= ON TV SLIDER START  ============================== -->
		</div>
	</div>
</div>
<!-- =============================  THEMA SLIDER AREA START  ============================== -->


<!-- =============================  TRAILER SLIDER & 영화인  AREA START  ============================== -->
<div class="trailers full-width">
		<div class="row ipad-width">
		
			<!-- =============================  TRAILER SLIDER AREA START  ============================== -->
			<!-- <div class="col-md-9 col-sm-12 col-xs-12">
				<div class="title-hd">
					<h2>개봉예정작 예고편</h2>
					<a href="#" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a>
				</div>
			</div>
			=============================  TRAILER SLIDER AREA END  ==============================
			
			=============================  주목받는 영화인  AREA START  ==============================
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="sidebar">
					<div class="celebrities">
						<h4 class="sb-title">주목받는 영화인</h4>
						<div class="celeb-item">
							<a href="../celeb/celebDetail.do"><img src="../images/uploads/ava1.jpg" alt="" width="70" height="70"></a>
							<div class="celeb-author">
								<h6><a href="#">Samuel N. Jack</a></h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="../celeb/celebDetail.do"><img src="../images/uploads/ava2.jpg" alt="" width="70" height="70"></a>
							<div class="celeb-author">
								<h6><a href="#">Benjamin Carroll</a></h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="../celeb/celebDetail.do"><img src="../images/uploads/ava3.jpg" alt="" width="70" height="70"></a>
							<div class="celeb-author">
								<h6><a href="#">Beverly Griffin</a></h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="../celeb/celebDetail.do"><img src="../images/uploads/ava4.jpg" alt="" width="70" height="70"></a>
							<div class="celeb-author">
								<h6><a href="#">Justin Weaver</a></h6>
								<span>Actor</span>
							</div>
						</div>
					</div>
				</div>
			</div> -->
			<!-- =============================  주목받는 영화인  AREA END  ============================== -->
			
		</div>
</div>
<!-- =============================  TRAILER SLIDER & 영화인  AREA END  ============================== -->

<!-- =============================  LATEST NEWS AREA START  ============================== -->
<div class="latestnew full-width">
		<div class="row">
			<!-- <div class="col-md-9"> -->
			<div>	
				<div class="ads adsv2">
					<img src="../images/uploads/ads2.png" alt="">
				</div>
				<div class="title-hd">
					<h2>최신 영화 뉴스</h2>
					<a href="../news/blogList.do" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a>
				</div>
				<div class="latestnewv2">
					<div class="blog-item-style-2">
						<a href="../news/blogDetail.do"><img src="../images/uploads/blogv21.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3><a href="../news/blogDetail.do"></a></h3>
							<span class="time">27 Mar 2017</span>
							<p>Looks like Kong: Skull Island started a tradition with its casting of Straight ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="../news/blogDetail.do"><img src="../images/uploads/blogv22.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3><a href="../news/blogDetail.do">First Official Images of Alicia Vikander As Tomb Raider’s Lara Croft</a></h3>
							<span class="time">27 Mar 2017</span>
							<p>Aside from the her digital incarnation, the most recognisable image of Tomb ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="../news/blogDetail.do"><img src="../images/uploads/blogv23.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3><a href="../news/blogDetail.do">New Spider-Man: Homecoming Poster Finds Peter Parker At Rest</a></h3>
							<span class="time">27 Mar 2017</span>
							<p>He might be a primary protector of New York City, but at heart, Peter Parker is ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="../news/blogDetail.do"><img src="../images/uploads/blogv24.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3><a href="../news/blogDetail.do">Joseph Gordon-Levitt Directing Moive Musical Comedy Wingmen</a></h3>
							<span class="time">27 Mar 2017</span>
							<p>A little over a year ago, we learned that Joseph Gordon-Levitt and Channing ...</p>
						</div>
					</div>
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