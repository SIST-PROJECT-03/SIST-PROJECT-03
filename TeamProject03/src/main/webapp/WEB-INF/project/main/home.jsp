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
	$(function() {
		$(document).ready(function() {
			$('.mainDetailinfo').hide();
		})
		/* 상세보기버튼 클릭이벤트 */
		$('.hvr-inner').click(function() {
			$('.mainDetailinfo').show();
			$('.mainInnerDetail').show();
			$('.mainNav').show();
			$('.ing').css('background-color', '#dd003f');
			$('.ing2').css('background-color', '');
			$('.mainSim').hide();
		});
		/* x버튼 클릭이벤트 */
		$('.viewall2').click(function() {
			$('.mainDetailinfo').hide();
		});
		/* 기본정보버튼 클릭이벤트 */
		$('.info').click(function() {
			$('.mainInnerDetail').show();
			$('.mainSim').hide();
			$('.ing').css('background-color', '#dd003f');
			$('.ing2').css('background-color', '');
		});
		/* 비슷한 작품버튼 클릭이벤트 */
		$('.similar').click(function() {
			$('.mainInnerDetail').hide();
			$('.mainSim').show();
			$('.ing2').css('background-color', '#dd003f');
			$('.ing').css('background-color', '');
		});
	})
</script>
</head>
<body>
<script type="text/babel">
	
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

	<!-- search form -->

	<div class="slider sliderv2">
		<div class="container">
			<div class="row">
				<div class="slider-single-item">
					<div class="movie-item">
						<div class="row">
							<div class="col-md-8 col-sm-12 col-xs-12">
								<div class="title-in">
									<div class="cate">
										<span class="blue"><a href="#">Sci-fi</a></span> <span
											class="yell"><a href="#">Action</a></span> <span
											class="orange"><a href="#">advanture</a></span>
									</div>
									<h1>
										<a href="#">guardians of the<br> galaxy <span>2015</span></a>
									</h1>
									<div class="social-btn">
										<a href="#" class="parent-btn"><i class="ion-play"></i>
											Watch Trailer</a> <a href="#" class="parent-btn"><i
											class="ion-heart"></i> Add to Favorite</a>
										<div class="hover-bnt">
											<a href="#" class="parent-btn"><i
												class="ion-android-share-alt"></i>share</a>
											<div class="hvr-item">
												<a href="#" class="hvr-grow"><i
													class="ion-social-facebook"></i></a> <a href="#"
													class="hvr-grow"><i class="ion-social-twitter"></i></a> <a
													href="#" class="hvr-grow"><i
													class="ion-social-googleplus"></i></a> <a href="#"
													class="hvr-grow"><i class="ion-social-youtube"></i></a>
											</div>
										</div>
									</div>
									<div class="mv-details">
										<p>
											<i class="ion-android-star"></i><span>7.4</span> /10
										</p>
										<ul class="mv-infor">
											<li>Run Time: 2h21’</li>
											<li>Rated: PG-13</li>
											<li>Release: 1 May 2015</li>
										</ul>
									</div>
									<div class="btn-transform transform-vertical">
										<div>
											<a href="#" class="item item-1 redbtn">more detail</a>
										</div>
										<div>
											<a href="#" class="item item-2 redbtn hvrbtn">more detail</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-12 col-xs-12">
								<div class="mv-img-2">
									<a href="#"><img src="images/uploads/poster1.jpg" alt=""></a>
								</div>

							</div>
						</div>
					</div>
					<div class="movie-item">
						<div class="row">
							<div class="col-md-8 col-sm-12 col-xs-12">
								<div class="title-in">
									<div class="cate">
										<span class="blue"><a href="#">Sci-fi</a></span> <span
											class="yell"><a href="#">Action</a></span> <span
											class="orange"><a href="#">advanture</a></span>
									</div>
									<h1>
										<a href="#">guardians of the<br> galaxy <span>2015</span></a>
									</h1>
									<div class="social-btn">
										<a href="#" class="parent-btn"><i class="ion-play"></i>
											Watch Trailer</a> <a href="#" class="parent-btn"><i
											class="ion-heart"></i> Add to Favorite</a>
										<div class="hover-bnt">
											<a href="#" class="parent-btn"><i
												class="ion-android-share-alt"></i>share</a>
											<div class="hvr-item">
												<a href="#" class="hvr-grow"><i
													class="ion-social-facebook"></i></a> <a href="#"
													class="hvr-grow"><i class="ion-social-twitter"></i></a> <a
													href="#" class="hvr-grow"><i
													class="ion-social-googleplus"></i></a> <a href="#"
													class="hvr-grow"><i class="ion-social-youtube"></i></a>
											</div>
										</div>
									</div>
									<div class="mv-details">
										<p>
											<i class="ion-android-star"></i><span>7.4</span> /10
										</p>
										<ul class="mv-infor">
											<li>Run Time: 2h21’</li>
											<li>Rated: PG-13</li>
											<li>Release: 1 May 2015</li>
										</ul>
									</div>
									<div class="btn-transform transform-vertical">
										<div>
											<a href="#" class="item item-1 redbtn">more detail</a>
										</div>
										<div>
											<a href="#" class="item item-2 redbtn hvrbtn">more detail</a>
										</div>
									</div>

								</div>
							</div>
							<div class="col-md-4 col-sm-12 col-xs-12">
								<div class="mv-img-2">
									<a href="#"><img src="images/uploads/poster1.jpg" alt=""></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="movie-items  full-width" style="padding-bottom: 0px;">
		<div class="row">
			<div class="col-md-12">
				<div class="title-hd">
					<h2>in theater</h2>
					<a href="#" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a>
				</div>
				<div class="tabs">
					<ul class="tab-links">
						<li class="active"><a href="#tab1-h2">#Popular</a></li>
						<li><a href="#tab2-h2"> #Coming soon</a></li>
						<li><a href="#tab3-h2"> #Top rated </a></li>
						<li><a href="#tab4-h2"> #Most reviewed</a></li>
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
												<a class="mainDetail"> 상세보기 <i
													class="ion-android-arrow-dropright"></i></a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="movie-items full-width mainDetailinfo">
		<div class="row">
			<div class="col-md-12">
				<div class="mainInner">
					<div class="container" id="mainInner"></div>
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
										<a href="#" class="parent-btn"><i class="ion-play"></i></a> <a
											href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
									</div>
									<div class="btn-transform transform-vertical">
										<a href="seriesSingle.do?movie_id=35901"
											class="item item-1 redbtn">상세정보</a> <a
											href="seriesSingle.do?movie_id=35901"
											class="item item-2 redbtn hvrbtn">상세정보</a>
									</div>
								</div>
								<!-- <div class="mainInnerVideoRight col-md-4"> -->
								<div class="mainInnerImg col-md-4"
									style="background-image: url('images/uploads/mv-it1.jpg');">
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
											<img src="images/uploads/mv-it1.jpg" />
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
									<li class="info"><a>기본정보</a> <span class="ing"></span></li>
									<li class="similar"><a>비슷한 작품</a> <span class="ing2"></span>
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
					<h2>in theater</h2>
					<a href="../movieList/movieGrid.do" class="viewall">더보기 <i
						class="ion-ios-arrow-right"></i></a>
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
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it2.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The revenant</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it3.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it4.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The walk</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it5.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it6.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it7.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it8.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
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
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The walk</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it5.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it6.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it7.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it8.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
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
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it2.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The revenant</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it3.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it4.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The walk</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it5.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
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
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it6.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it7.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it8.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
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
					<h2>on tv</h2>
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
												<img src="images/uploads/mv-it7.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it8.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The revenant</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it9.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it4.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The walk</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it5.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it6.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it7.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it8.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
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
												<img src="images/uploads/mv-it4.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The walk</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it5.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it6.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it7.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it8.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
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
											<img src="images/uploads/mv-it1.jpg" alt="">
										</div>
										<div class="hvr-inner">
											<a href="moviesingle.html"> 상세보기 <i
												class="ion-android-arrow-dropright"></i>
											</a>
										</div>
										<div class="title-in">
											<h6>
												<a href="#">Interstellar</a>
											</h6>
											<p>
												<i class="ion-android-star"></i><span>7.4</span> /10
											</p>
										</div>
									</div>
									<div class="movie-item">
										<div class="mv-img">
											<img src="images/uploads/mv-it2.jpg" alt="">
										</div>
										<div class="hvr-inner">
											<a href="moviesingle.html"> 상세보기 <i
												class="ion-android-arrow-dropright"></i>
											</a>
										</div>
										<div class="title-in">
											<h6>
												<a href="#">The revenant</a>
											</h6>
											<p>
												<i class="ion-android-star"></i><span>7.4</span> /10
											</p>
										</div>
									</div>
									<div class="movie-item">
										<div class="mv-img">
											<img src="images/uploads/mv-it3.jpg" alt="">
										</div>
										<div class="hvr-inner">
											<a href="moviesingle.html"> 상세보기 <i
												class="ion-android-arrow-dropright"></i>
											</a>
										</div>
										<div class="title-in">
											<h6>
												<a href="#">Die hard</a>
											</h6>
											<p>
												<i class="ion-android-star"></i><span>7.4</span> /10
											</p>
										</div>
									</div>
									<div class="movie-item">
										<div class="mv-img">
											<img src="images/uploads/mv-it4.jpg" alt="">
										</div>
										<div class="hvr-inner">
											<a href="moviesingle.html"> 상세보기 <i
												class="ion-android-arrow-dropright"></i>
											</a>
										</div>
										<div class="title-in">
											<h6>
												<a href="#">The walk</a>
											</h6>
											<p>
												<i class="ion-android-star"></i><span>7.4</span> /10
											</p>
										</div>
									</div>
									<div class="movie-item">
										<div class="mv-img">
											<img src="images/uploads/mv-it3.jpg" alt="">
										</div>
										<div class="hvr-inner">
											<a href="moviesingle.html"> 상세보기 <i
												class="ion-android-arrow-dropright"></i>
											</a>
										</div>
										<div class="title-in">
											<h6>
												<a href="#">Die hard</a>
											</h6>
											<p>
												<i class="ion-android-star"></i><span>7.4</span> /10
											</p>
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
												<img src="images/uploads/mv-it4.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">The walk</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it5.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it6.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Interstellar</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it7.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
											</div>
										</div>
									</div>
									<div class="slide-it">
										<div class="movie-item">
											<div class="mv-img">
												<img src="images/uploads/mv-it8.jpg" alt="">
											</div>
											<div class="hvr-inner">
												<a href="moviesingle.html"> 상세보기 <i
													class="ion-android-arrow-dropright"></i>
												</a>
											</div>
											<div class="title-in">
												<h6>
													<a href="#">Die hard</a>
												</h6>
												<p>
													<i class="ion-android-star"></i><span>7.4</span> /10
												</p>
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
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="title-hd">
					<h2>개봉예정작 예고편</h2>
					<!-- <a href="#" class="viewall">더보기 <i class="ion-ios-arrow-right"></i></a> -->
				</div>
				<div class="videos">
				 	<div class="slider-for-2 video-ft">
					   <div>
					    	<iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/1Q8fG0TtVAY"></iframe>
					    </div>
					    <div>
					    	<iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/w0qQkSuWOS8"></iframe>
					    </div>
					    <div>
					    	<iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/44LdLqgOpjo"></iframe>
					    </div>
					    <div>
					    	<iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/gbug3zTm3Ws"></iframe>
					    </div>
					    <div>
					    	<iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/e3Nl_TCQXuw"></iframe>
					    </div>
					    <div>
					    	<iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/NxhEZG0k9_w"></iframe>
					    </div>

					</div>
					<div class="slider-nav-2 thumb-ft">
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer7.jpg"  alt="photo by Barn Images" width="4096" height="2737">
							</div>
							<div class="trailer-infor">
	                        	<h4 class="desc">위대한 쇼맨</h4>
	                        	<p>2:30</p>
	                        </div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer2.jpg"  alt="photo by Barn Images" 	width="350" height="200">
							</div>
							<div class="trailer-infor">
	                        	<h4 class="desc">베일리 어게인</h4>
	                        	<p>2:37</p>
	                        </div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer6.jpg" alt="photo by Joshua Earle" width="509" height="301">
							</div>
							<div class="trailer-infor">
	                        	<h4 class="desc">라라랜드</h4>
	                        	<p>2:44</p>
	                        </div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer3.png" alt="photo by Alexander Dimitrov" width="100" height="56">
							</div>
							<div class="trailer-infor">
	                        	<h4 class="desc">날씨의 아이</h4>	
	                        	<p>2:43</p>
	                        </div>
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer4.png"  alt="photo by Wojciech Szaturski" width="100" height="56">
							</div>
							<div class="trailer-infor">
	                        	<h4 class="desc">초미의 관심사</h4>	
	                        	<p>2: 32</p>
	                        </div>	
						</div>
						<div class="item">
							<div class="trailer-img">
								<img src="images/uploads/trailer5.jpg"  alt="photo by Wojciech Szaturski" width="360" height="189">
							</div>
							<div class="trailer-infor">
	                        	<h4 class="desc">톰보이</h4>	
	                        	<p>3:11</p>
	                        </div>	
						</div>
					</div>
				</div>
			</div>
			<!-- =============================  TRAILER SLIDER AREA END  ============================== -->
	



			<!-- =============================  주목받는 영화인  AREA START  ============================== -->

			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="sidebar">
					<div class="celebrities">
						<h4 class="sb-title">주목받는 영화인</h4>
						<div class="celeb-item">
							<a href="celebDetail.do"><img
								src="images/uploads/ava1.jpg" alt="" width="70" height="70"></a>
							<div class="celeb-author">
								<h6>
									<a href="#">우디엘런</a>
								</h6>
								<span>감독</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="../celeb/celebDetail.do"><img
								src="images/uploads/ava2.jpg" alt="" width="70" height="70"></a>
							<div class="celeb-author">
								<h6>
									<a href="#">티모시 샬라메</a>
								</h6>
								<span>배우</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="../celeb/celebDetail.do"><img
								src="images/uploads/ava3.jpg" alt="" width="70" height="70"></a>
							<div class="celeb-author">
								<h6>
									<a href="#">앤 해서웨이</a>
								</h6>
								<span>배우</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="../celeb/celebDetail.do"><img
								src="images/uploads/ava4.jpg" alt="" width="70" height="70"></a>
							<div class="celeb-author">
								<h6>
									<a href="#">조정석</a>
								</h6>
								<span>배우</span>
							</div>
						</div>
					</div>
				</div>
			</div> 
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
					<img src="images/uploads/ads2.png" alt="">
				</div>
				<div class="title-hd">
					<h2>최신 영화 뉴스</h2>
					<a href="../news/blogList.do" class="viewall">더보기 <i
						class="ion-ios-arrow-right"></i></a>
				</div>
				<div class="latestnewv2">
					<div class="blog-item-style-2">
						<a href="../news/blogDetail.do"><img
							src="images/uploads/blogv21.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3>
								<a href="../news/blogDetail.do"></a>
							</h3>
							<span class="time">27 Mar 2017</span>
							<p>Looks like Kong: Skull Island started a tradition with its
								casting of Straight ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="../news/blogDetail.do"><img
							src="images/uploads/blogv22.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3>
								<a href="../news/blogDetail.do">First Official Images of
									Alicia Vikander As Tomb Raider’s Lara Croft</a>
							</h3>
							<span class="time">27 Mar 2017</span>
							<p>Aside from the her digital incarnation, the most
								recognisable image of Tomb ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="../news/blogDetail.do"><img
							src="images/uploads/blogv23.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3>
								<a href="../news/blogDetail.do">New Spider-Man: Homecoming
									Poster Finds Peter Parker At Rest</a>
							</h3>
							<span class="time">27 Mar 2017</span>
							<p>He might be a primary protector of New York City, but at
								heart, Peter Parker is ...</p>
						</div>
					</div>
					<div class="blog-item-style-2">
						<a href="../news/blogDetail.do"><img
							src="images/uploads/blogv24.jpg" alt=""></a>
						<div class="blog-it-infor">
							<h3>
								<a href="../news/blogDetail.do">Joseph Gordon-Levitt
									Directing Moive Musical Comedy Wingmen</a>
							</h3>
							<span class="time">27 Mar 2017</span>
							<p>A little over a year ago, we learned that Joseph
								Gordon-Levitt and Channing ...</p>
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