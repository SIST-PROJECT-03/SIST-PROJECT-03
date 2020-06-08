<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/blockbuster.css">
<!-- react -->
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

	<c:if test="${empty sessionScope.email}">
		<div class="movie-items  full-width">
			<div class="container"
				style="width: 100%; height: 528px; text-align: center;">
				<h1
					style="font-size: 56px; color: #ffffff; margin-top: 150px;!important">
					지금 블록버스터의 회원이 되어 <br />더욱 다양한 영화를 추천 받으세요
				</h1>
				<ul class="nav navbar-nav flex-child-menu menu-right" id="sign">
					<li class="btn signupLink"><a href="signup">회원가입</a></li>
					<li class="loginLink"><a href="signin">로그인</a></li>
				</ul>
			</div>
		</div>
	</c:if>

	<c:if test="${not empty sessionScope.email }">
		<!-- ==============================main big slider total area start ================================= -->
		<div class="slider sliderv2">
			<div class="container">
				<div class="row">
					<div class="title-hd">
						<h1 style="color: #ffffff !important;">블록버스터 최신 인기작 Top15</h1>
					</div>
					<div class="slider-single-item">

						<!-- ====================================1 big slider start=========================================== -->
						<c:forEach var="svo" items="${bigSliderList }">
							<div class="movie-item"">
								<div class="row">
									<div class="col-md-8 col-sm-12 col-xs-12">
										<div class="title-in">
											<div class="cate">
												${svo.genre }
												<%-- 	<span class="yell"><a href="#">${svo.country }</a></span> --%>
												<!-- <span class="orange"><a href="#">범죄</a></span> -->
											</div>
											<h1>
												<a href="seriesSingle.do?movie_id=${svo.net.movie_id }"><br>
													${svo.title }<span></span></a>
											</h1>
											<!-- <div class="social-btn">
												<a href="#" class="parent-btn"><i class="ion-play"></i>예고편
													보기</a> <a href="#" class="parent-btn"><i class="ion-heart"></i>리스트에
													담기</a>
												<div class="hover-bnt">
													<a href="#" class="parent-btn"><i
														class="ion-android-share-alt"></i>공유</a>
													<div class="hvr-item">
														<a href="#" class="hvr-grow"><i
															class="ion-social-facebook"></i></a> <a href="#"
															class="hvr-grow"><i class="ion-social-twitter"></i></a> <a
															href="#" class="hvr-grow"><i
															class="ion-social-googleplus"></i></a> <a href="#"
															class="hvr-grow"><i class="ion-social-youtube"></i></a>
													</div>
												</div>
											</div> -->
											<div class="mv-details">
												<p>
													<i class="ion-android-star"></i><span>${svo.net.evaluation_point }</span>
													/10
												</p>
												<ul class="mv-infor">
													<li>상영시간: ${svo.running_time }분</li>
													<li>상영등급: ${svo.grade }</li>
													<li>개봉일:<fmt:formatDate value="${svo.opening_date }"
															pattern="yyyy/MM/dd" /></li>
												</ul>
											</div>
											<div class="slider-btn-area" style="width: 130px"
												data-movie_id="${svo.net.movie_id }">
												<div class="btn-transform transform-vertical">
													<div>
														<div class="slider-btn-wrapper item item-1 redbtn"
															data-movie_id="${svo.net.movie_id }">더보기</div>
													</div>
													<div>
														<div class="slider-btn-wrapper item item-2 redbtn hvrbtn"
															data-movie_id="${svo.net.movie_id }">더보기</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-12 col-xs-12">
										<div class="mv-img-2">
											<a href="#"><img src="${svo.poster }" alt=""
												style="width: 270px; height: 414px;"></a>
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
		<div class="movie-items full-width mainDetailinfo big-slider-info">
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
										<p>관람객별점 8.8 | 기자/평론가 7.8 | 네티즌 7.7</p>
										<p>
											<b>외계인의 침공이 있었던 지구의 운명을 건 마지막 전쟁을 시작한다!</b>
										</p>
										<p>
											<b>감독</b>&nbsp; 조지프 코신스키
										</p>
										<p>
											<b>출연</b>&nbsp; 톰 크루즈, 모건 프리먼, 올가 쿠릴렌코
										</p>
										<p>
											<b>개요</b>&nbsp; 15세 관람가 | 액션SF | 미국 | 2011년
										</p>
										<div class="social-btn">
											<a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
											<a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
										</div>
										<div class="btn-transform transform-vertical vertical-btn"
											style="width: 1000px">
											<a href="#" class="item item-1 redbtn">상세정보</a> <a href="#"
												class="item item-2 redbtn hvrbtn">상세정보</a>
										</div>
									</div>
									<div class="mainInnerVideoRight col-md-4" style="width: 300px">
										<div class="mainInnerImg col-md-4"
											style="background-image: url('images/uploads/mv-it1.jpg'); width: 200px; height: 300px">
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
		</div>
		
		<div class="movie-items  full-width mywrap">
			<div class="row">
				<div class="col-md-12">
					<div class="tabs">
						<div class="tab-content"></div>
					</div>
					<!--===============================================================================================사용자 유사도==================================추천7 START-->
					<div class="title-hd">
						<h2>개발중 >>>>(${user_nick })님과 취향이 비슷한 친구</h2>
						<a href="movieGrid.do" class="viewall">더보기 <i
							class="ion-ios-arrow-right"></i></a>
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
														<img src="${nvo.poster }" alt=""
															style="width: 257px; height: 394.84px;">
													</div>
													<div class="hvr-inner" data="1" data_id="${nvo.movie_id}">
														<a data="1" data_id="${nvo.movie_id}" class=" myclclcl"> 상세보기 <i
															class="ion-android-arrow-dropright" data="1" class=" myclclcl"></i>
														</a>
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
					
					<div class="movie-items full-width mainDetailinfo detail-slider" data="1">
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
													<p>관람객별점 8.8 | 기자/평론가 7.8 | 네티즌 7.7</p>
													<p>
														<b>외계인의 침공이 있었던 지구의 운명을 건 마지막 전쟁을 시작한다!</b>
													</p>
													<p>
														<b>감독</b>&nbsp; 조지프 코신스키
													</p>
													<p>
														<b>출연</b>&nbsp; 톰 크루즈, 모건 프리먼, 올가 쿠릴렌코
													</p>
													<p>
														<b>개요</b>&nbsp; 15세 관람가 | 액션SF | 미국 | 2011년
													</p>
													<div class="social-btn">
														<a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
														<a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
													</div>
													<div class="btn-transform transform-vertical vertical-btn"
														style="width: 1000px">
														<a href="#" class="item item-1 redbtn">상세정보</a> <a
															href="#" class="item item-2 redbtn hvrbtn">상세정보</a>
													</div>
												</div>
												<div class="mainInnerVideoRight col-md-4"
													style="width: 300px">
													<div class="mainInnerImg col-md-4"
														style="background-image: url('images/uploads/mv-it1.jpg'); width: 200px; height: 300px">
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
					</div>
					<!--============================================================================================================================================추천7 END-->
					<!--=========================================================== 연령대 =======================================================================추천2 START-->
					<div class="title-hd">
						<h2># ${age_tag}대 연령층 인기 영화</h2>
						<a href="movieGrid.do?range=${user_age}">더보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="tab-content">
						<div id="tab1-h2" class="tab active">
							<div class="row">
								<div class="slick-multiItem2">
									<c:forEach var="avo" items="${ageList }">
										<div class="slide-it">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img src="${avo.poster }" alt=""
															style="width: 257px; height: 394.84px;">
													</div>
													<div class="hvr-inner myclclcl" data="2" data_id="${avo.movie_id}">
														<a data="2" data_id="${avo.movie_id}" class=" myclclcl">상세보기
															<i class="ion-android-arrow-dropright" class=" myclclcl"></i>
														</a>
													</div>
													<div class="title-in">
														<h5>${avo.title }</h5>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="movie-items full-width mainDetailinfo detail-slider" data="2">
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
													<p>관람객별점 8.8 | 기자/평론가 7.8 | 네티즌 7.7</p>
													<p>
														<b>외계인의 침공이 있었던 지구의 운명을 건 마지막 전쟁을 시작한다!</b>
													</p>
													<p>
														<b>감독</b>&nbsp; 조지프 코신스키
													</p>
													<p>
														<b>출연</b>&nbsp; 톰 크루즈, 모건 프리먼, 올가 쿠릴렌코
													</p>
													<p>
														<b>개요</b>&nbsp; 15세 관람가 | 액션SF | 미국 | 2011년
													</p>
													<div class="social-btn">
														<a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
														<a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
													</div>
													<div class="btn-transform transform-vertical vertical-btn"
														style="width: 1000px">
														<a class="item item-1 redbtn">상세정보</a> <a
															 class="item item-2 redbtn hvrbtn">상세정보</a>
													</div>
												</div>
												<div class="mainInnerVideoRight col-md-4"
													style="width: 300px">
													<div class="mainInnerImg col-md-4"
														style="background-image: url('images/uploads/mv-it1.jpg'); width: 200px; height: 300px">
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
					</div>
					<!--============================================================================================================================================추천2 END-->
					<!--=============================================================ajax start==============================================================================-->
					
					<!--================================================================================================================================ajax end  -->
					<!--=========================================================성별 ==============================================================================추천3 START-->
					<div class="title-hd">
						<h2># ${gender_tag } 관객 높은 평점 영화</h2>
						<a href="movieGrid.do?range=${user_gender}">더보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="tab-content">
						<div id="tab1-h2" class="tab active">
							<div class="row">
								<div class="slick-multiItem2">
									<c:forEach var="gvo" items="${genderList }">
										<div class="slide-it">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img src="${gvo.poster }" alt=""
															style="width: 257px; height: 394.84px;">
													</div>
													<div class="hvr-inner" data="3" data_id="${gvo.movie_id}">
														<a data="3" data_id="${gvo.movie_id}" class=" myclclcl">상세보기
															<i class="ion-android-arrow-dropright" class=" myclclcl"></i>
														</a>
													</div>
													<div class="title-in">
														<h5>${gvo.title }</h5>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<!--============================================================================================================================================추천3 END-->
					<div class="movie-items full-width mainDetailinfo detail-slider" data="3">
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
													<p>관람객별점 8.8 | 기자/평론가 7.8 | 네티즌 7.7</p>
													<p>
														<b>외계인의 침공이 있었던 지구의 운명을 건 마지막 전쟁을 시작한다!</b>
													</p>
													<p>
														<b>감독</b>&nbsp; 조지프 코신스키
													</p>
													<p>
														<b>출연</b>&nbsp; 톰 크루즈, 모건 프리먼, 올가 쿠릴렌코
													</p>
													<p>
														<b>개요</b>&nbsp; 15세 관람가 | 액션SF | 미국 | 2011년
													</p>
													<div class="social-btn">
														<a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
														<a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
													</div>
													<div class="btn-transform transform-vertical vertical-btn"
														style="width: 1000px">
														<a href="#" class="item item-1 redbtn">상세정보</a> <a
															href="#" class="item item-2 redbtn hvrbtn">상세정보</a>
													</div>
												</div>
												<div class="mainInnerVideoRight col-md-4"
													style="width: 300px">
													<div class="mainInnerImg col-md-4"
														style="background-image: url('images/uploads/mv-it1.jpg'); width: 200px; height: 300px">
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
					</div>
					<!--================================================= 장르 ====================================================================================추천4 START-->
					<div class="title-hd">
						<h2># ${user_genre}</h2>
						<a href="movieGrid.do" class="viewall">더보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="tab-content">
						<div id="tab1-h2" class="tab active">
							<div class="row">
								<div class="slick-multiItem2">
									<c:forEach var="grvo" items="${genreList }">
										<div class="slide-it">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img src="${grvo.poster }" alt=""
															style="width: 257px; height: 394.84px;">
													</div>
													<div class="hvr-inner" data="4" data_id="${grvo.movie_id}">
														<a data="4" data_id="${grvo.movie_id}" class=" myclclcl">상세보기
															<i class="ion-android-arrow-dropright" class=" myclclcl"></i>
														</a>
													</div>
													<div class="title-in">
														<h5>${grvo.title }</h5>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					
					<div class="movie-items full-width mainDetailinfo detail-slider" data="4">
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
													<p>관람객별점 8.8 | 기자/평론가 7.8 | 네티즌 7.7</p>
													<p>
														<b>외계인의 침공이 있었던 지구의 운명을 건 마지막 전쟁을 시작한다!</b>
													</p>
													<p>
														<b>감독</b>&nbsp; 조지프 코신스키
													</p>
													<p>
														<b>출연</b>&nbsp; 톰 크루즈, 모건 프리먼, 올가 쿠릴렌코
													</p>
													<p>
														<b>개요</b>&nbsp; 15세 관람가 | 액션SF | 미국 | 2011년
													</p>
													<div class="social-btn">
														<a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
														<a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
													</div>
													<div class="btn-transform transform-vertical vertical-btn"
														style="width: 1000px">
														<a href="#" class="item item-1 redbtn">상세정보</a> <a
															href="#" class="item item-2 redbtn hvrbtn">상세정보</a>
													</div>
												</div>
												<div class="mainInnerVideoRight col-md-4"
													style="width: 300px">
													<div class="mainInnerImg col-md-4"
														style="background-image: url('images/uploads/mv-it1.jpg'); width: 200px; height: 300px">
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
					</div>
					<!--============================================================================================================================================추천4END-->
					<!--=============================================================감상포인트============================================================추천5 START-->
					<div class="title-hd">
						<h2># ${point_tag}가 훌륭한 영화</h2>
						<a href="movieGrid.do?range=${user_point}">더보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="tab-content">
						<div id="tab1-h2" class="tab active">
							<div class="row">
								<div class="slick-multiItem2">
									<c:forEach var="ptvo" items="${pointList}">
										<div class="slide-it">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img src="${ptvo.poster }" alt=""
															style="width: 257px; height: 394.84px;">
													</div>
													<div class="hvr-inner" data="5" data_id="${ptvo.movie_id}">
														<a data="5" data_id="${ptvo.movie_id}" class=" myclclcl">상세보기
															<i class="ion-android-arrow-dropright" class=" myclclcl"></i>
														</a>
													</div>
													<div class="title-in">
														<h5>${ptvo.title }</h5>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					
					<div class="movie-items full-width mainDetailinfo detail-slider" data="5">
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
													<p>관람객별점 8.8 | 기자/평론가 7.8 | 네티즌 7.7</p>
													<p>
														<b>외계인의 침공이 있었던 지구의 운명을 건 마지막 전쟁을 시작한다!</b>
													</p>
													<p>
														<b>감독</b>&nbsp; 조지프 코신스키
													</p>
													<p>
														<b>출연</b>&nbsp; 톰 크루즈, 모건 프리먼, 올가 쿠릴렌코
													</p>
													<p>
														<b>개요</b>&nbsp; 15세 관람가 | 액션SF | 미국 | 2011년
													</p>
													<div class="social-btn">
														<a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
														<a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
													</div>
													<div class="btn-transform transform-vertical vertical-btn"
														style="width: 1000px">
														<a href="#" class="item item-1 redbtn">상세정보</a> <a
															href="#" class="item item-2 redbtn hvrbtn">상세정보</a>
													</div>
												</div>
												<div class="mainInnerVideoRight col-md-4"
													style="width: 300px">
													<div class="mainInnerImg col-md-4"
														style="background-image: url('images/uploads/mv-it1.jpg'); width: 200px; height: 300px">
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
					</div>
					<!--============================================================================================================================================추천5END-->
					<!--================================================= 선호 지역 영화 ====================================================================================추천6 START-->
					<div class="title-hd">
						<h2># 추천 ${user_loc} 영화</h2>
						<a href="movieGrid.do?country=${user_loc}" class="viewall">더보기
							<i class="ion-ios-arrow-right"></i>
						</a>
					</div>
					<div class="tab-content">
						<div id="tab1-h2" class="tab active">
							<div class="row">
								<div class="slick-multiItem2">
									<c:forEach var="lvo" items="${locList }">
										<div class="slide-it">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img src="${lvo.poster }" alt=""
															style="width: 257px; height: 394.84px;">
													</div>
													<div class="hvr-inner" data="6" data_id="${lvo.movie_id}">
														<a data="6" data_id="${lvo.movie_id}" class=" myclclcl">상세보기
															<i class="ion-android-arrow-dropright" class=" myclclcl"></i>
														</a>
													</div>
													<div class="title-in">
														<h5>${lvo.title }</h5>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					
					<div class="movie-items full-width mainDetailinfo detail-slider" data="6">
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
													<p>관람객별점 8.8 | 기자/평론가 7.8 | 네티즌 7.7</p>
													<p>
														<b>외계인의 침공이 있었던 지구의 운명을 건 마지막 전쟁을 시작한다!</b>
													</p>
													<p>
														<b>감독</b>&nbsp; 조지프 코신스키
													</p>
													<p>
														<b>출연</b>&nbsp; 톰 크루즈, 모건 프리먼, 올가 쿠릴렌코
													</p>
													<p>
														<b>개요</b>&nbsp; 15세 관람가 | 액션SF | 미국 | 2011년
													</p>
													<div class="social-btn">
														<a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
														<a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
													</div>
													<div class="btn-transform transform-vertical vertical-btn"
														style="width: 1000px">
														<a href="#" class="item item-1 redbtn">상세정보</a> <a
															href="#" class="item item-2 redbtn hvrbtn">상세정보</a>
													</div>
												</div>
												<div class="mainInnerVideoRight col-md-4"
													style="width: 300px">
													<div class="mainInnerImg col-md-4"
														style="background-image: url('images/uploads/mv-it1.jpg'); width: 200px; height: 300px">
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
					</div>
					<!--============================================================================================================================================추천6END-->
					<!--=====================================================================================================================================추천7 START-->
					<div class="title-hd">
						<h2># 전문가 추천 ${user_genre} 영화</h2>
						<a href="movieGrid.do?genre=${user_genre}" class="viewall">더보기
							<i class="ion-ios-arrow-right"></i>
						</a>
					</div>
					<div class="tab-content">
						<div id="tab1-h2" class="tab active">
							<div class="row">
								<div class="slick-multiItem2">
									<c:forEach var="svo" items="${specialList }">
										<div class="slide-it">
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img src="${svo.poster }" alt=""
															style="width: 257px; height: 394.84px;">
													</div>
													<div class="hvr-inner" data="7" data_id="${svo.movie_id}">
														<a data="7" data_id="${avo.movie_id}" class=" myclclcl">상세보기
															<i class="ion-android-arrow-dropright" class=" myclclcl"></i>
														</a>
													</div>
													
													<!-- 
													
													<div class="hvr-inner" data="6" data_id="${lvo.movie_id}">
														<a data="6" data_id="${avo.movie_id}" class=" myclclcl">상세보기
															<i class="ion-android-arrow-dropright" class=" myclclcl"></i>
														</a>
													</div>
													
													 -->
													<div class="title-in">
														<h5>${svo.title }</h5>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					
					<div class="movie-items full-width mainDetailinfo detail-slider" data="7">
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
													<p>관람객별점 8.8 | 기자/평론가 7.8 | 네티즌 7.7</p>
													<p>
														<b>외계인의 침공이 있었던 지구의 운명을 건 마지막 전쟁을 시작한다!</b>
													</p>
													<p>
														<b>감독</b>&nbsp; 조지프 코신스키
													</p>
													<p>
														<b>출연</b>&nbsp; 톰 크루즈, 모건 프리먼, 올가 쿠릴렌코
													</p>
													<p>
														<b>개요</b>&nbsp; 15세 관람가 | 액션SF | 미국 | 2011년
													</p>
													<div class="social-btn">
														<a href="#" class="parent-btn"><i class="ion-play"></i>재생</a>
														<a href="#" class="parent-btn"><i class="ion-heart"></i>즐겨찾기</a>
													</div>
													<div class="btn-transform transform-vertical vertical-btn"
														style="width: 1000px">
														<a href="#" class="item item-1 redbtn">상세정보</a> <a
															href="#" class="item item-2 redbtn hvrbtn">상세정보</a>
													</div>
												</div>
												<div class="mainInnerVideoRight col-md-4"
													style="width: 300px">
													<div class="mainInnerImg col-md-4"
														style="background-image: url('images/uploads/mv-it1.jpg'); width: 200px; height: 300px">
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
					</div>
					<!--============================================================================================================================================추천7END-->
				</div>
			</div>
		</div>
		<!-- =============================  LATEST NEWS AREA START  ============================== -->
		<div class="latestnew full-width">
			<div class="row">
				<!-- <div class="col-md-9"> -->
				<div>
					<div class="title-hd">
						<h2>최신 영화 뉴스</h2>
						<a href="newsList.do" class="viewall">더보기 <i
							class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="latestnewv2">
						<c:forEach var="nvo" items="${newsList }">
							<div class="blog-item-style-2">
								<a href="newsDetail.do?no=${nvo.news_id }"><img
									src="${nvo.thumbnail }" style="width: 90%; height: 200px;"></a>
								<div class="blog-it-infor">
									<h3>
										<a href="newsDetail.do?no=${nvo.news_id }">${nvo.title }</a>
									</h3>
									<span class="time"><fmt:formatDate
											value="${nvo.regdate }" pattern="yyyy-MM-dd HH:mm:ss" /></span>
									<p>${nvo.subject }</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<!-- =============================  LATEST NEWS AREA END  ============================== -->
	<!-- =============================  HOME END  ============================== -->
</body>
</html>