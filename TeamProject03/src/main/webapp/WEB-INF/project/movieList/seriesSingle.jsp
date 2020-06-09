<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/newsDetail.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script text="javascript/text">

	$(document).ready(function() {
						$('.box').each(function() {
							var content = $(this).children(
									'.content');
							var content_txt = content.text();
							var content_txt_short = content_txt
									.substring(0, 100)
									+ "...";
							var btn_more = $('<a href="javascript:void(0)" class="more">더보기</a>');

							$(this).append(btn_more);

							if (content_txt.length >= 100) {
								content.html(content_txt_short)

							} else {
								btn_more.hide()
							}

							btn_more.click(toggle_content);
							// 아래 bind가 안 되는 이유는??
							// btn_more.bind('click',toggle_content);

							function toggle_content() {
								if ($(this).hasClass('short')) {
									$(this).html('더보기');
									content
											.html(content_txt_short)
									$(this)
											.removeClass(
													'short');
								} else {
									$(this).html('접기');
									content.html(content_txt);
									$(this).addClass('short');

								}
							}
						});
					});
</script>
<script type="text/javascript">
	$(function() {
		$(document).ready(function() {
			$('#reviewWrite').hide();
		})

		$('#review').click(function() {
			$('#reviewWrite').show();
		})
		$('#review').hover(function(){
			$(this).css('color','yellow');
			$(this).css('cursor','pointer');
		},function(){
			$(this).css('color','white');
			$(this).css('cursor','default');
		});
	})
	
	function showAllBtn() {

		//구현중..
		var overView = $('#overviewceb');
		var media = $('#mediaceb');
		var showAllBtn = $('#showAllMedia');

		showAllBtn.on('click', function(e) {

			// Show/Hide Tabs
			overView.removeClass('active');
			// Change/remove current tab to active
			media.addClass('active');
			e.preventDefault();

		});
	}
</script>
<style>
.box {
	margin: 0px auto;
}

.content {
	width: 100%;
}

.poster {margin 0px auto;
	width: 100px;
	height: 115px;
	float: left;
}
</style>
<script> 
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});
</script>
<style> 
#panel, #flip {
  padding: 0px auto;
  text-align: center;
  border: solid 0px ;
}

#panel {
  padding: 0px auto;
  display: none;
}
</style>
</head>
<body>
	<!-- ============================= MOVIE DETAIL TOP AREA START  ============================== -->
	<div class="hero sr-single-hero sr-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- <h1> movie listing - list</h1>
				<ul class="breadcumb">
					<li class="active"><a href="#">Home</a></li>
					<li> <span class="ion-ios-arrow-right"></span> movie listing</li>
				</ul> -->
				</div>
			</div>
		</div>
	</div>
	<!-- ============================= MOVIE DETAIL TOP AREA END  ============================== -->


	<!-- ============================= MOVIE DETAIL BOTTOM AREA START  ============================== -->
	<div class="page-single movie-single movie_single">
		<div class="container">
			<div class="row ipad-width2">

				<!-- ============================= MOVIE DETAIL - LEFT POSTER AREA START  ============================== -->
				<div class="col-md-4 col-sm-12 col-xs-12">
					<div class="movie-img sticky-sb">
						<img src="${vo.poster }" alt="">
						<c:if test="${movieUrl != '[]' }">
							<div class="movie-btn">
								<div class="btn-transform transform-vertical red">
									<div>
										<a href="${movieUrl }" class="item item-1 redbtn"> <i
											class="ion-play"></i> 예고편 보기
										</a>
									</div>
									<div>
										<a href="${movieUrl }"
											class="item item-2 redbtn fancybox-media hvr-grow"><i
											class="ion-play"></i></a>
									</div>
								</div>
							</div>
						</c:if>
					</div>
				</div>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<div class="movie-single-ct main-content">
						<h1 class="bd-hd">${vo.title }<span> </span>
						</h1>
						<div class="movie-rate" >
						<c:if test="${nvo.evaluation_point != null }">
							<div class="rate"style="margin-right:10px;">
								<i class="ion-android-star"></i>
								<p><span>네티즌 평점 : ${nvo.evaluation_point }</span> /10.0<br>
								
								</p>
							</div></c:if>
							<c:if test="${avo.evaluation_point != null }">
							<div class="rate" style=" margin-right:5px;">
								<i class="ion-android-star"></i>
								<p><span>관람객 평점 : ${avo.evaluation_point }</span> /10.0<br>
								</p>
							</div></c:if>
							<div class="rate"style="border-left:1px solid white;">
							
								<p><span class="rv">총 ${movieTotalReview }개의 리뷰가 있습니다.</span></p>
							</div>
						</div>
						<div class="movie-tabs">
							<div class="tabs">
								<ul class="tab-links tabs-mv tabs-series bxSlider">
									<li class="active"><a href="#overview">주요정보</a></li>
									<li><a href="#reviews">리뷰</a></li>
									<li><a href="#cast">배우/제작진</a></li>
									<li><a href="#media">포토/영상</a></li>
									<!-- 	<li><a href="#season"> Season</a></li>  -->
									<li><a href="#moviesrelated">관련 영화</a></li>
								</ul>

								<div class="tab-content">
									<!-- ============================= MOVIE DETAIL -OVERVIEW 주요정보 TAB START  ============================== -->
									<div id="overview" class="tab active">
										<div class="row">
											<div class="col-md-8 col-sm-12 col-xs-12">
												<div class="box">
													<p class="content">${vo.story }</p>
												</div>
												<div class="title-hd-sm">
													<h4>포토</h4>
												</div>
												<div id="mvsingle-item ov-item">
												
												<div>
													<c:forEach var="moviePictures" items="${moviePictures }" begin="0" end="7">
														<a class="img-lightbox" data-fancybox-group="gallery"
															href=""><img src="${moviePictures }" alt=""style="width:100px;height:115px"></a>
													</c:forEach></div>
												</div>
												<div class="title-hd-sm">
													<h4>배우</h4>
												</div>
												<!-- movie cast -->
												<div class="mvcast-item">
													<!-- 인물 DB넣은 후 연결하고나서 출력하기 -->
													<c:forEach var="actorData" items="${actorData }" begin="0" end="2">
													<div class="cast-it">
														<div class="cast-left">
															<img src="${actorData.thumbnail }" alt="" style="width:110px;height:140px"> <a
																href="https://movie.naver.com/movie/bi/pi/basic.nhn?code=${actorData.cast_id }" target="_blank"">${actorData.name }</a>
														</div>
														<p>${actorData.reward }</p>
													</div>
													</c:forEach>
												</div>
												<div id="flip" style="color:#4280bf">더보기 <i
														class="ion-ios-arrow-right"></i></div>
													<div class="mvcast-item" id="panel">
													<c:forEach var="actorData" items="${actorData }" begin="3" end="${actorData.size() }">
														<div class="cast-it">
														<div class="cast-left">
															<img src="${actorData.thumbnail }" alt="" style="width:110px;height:140px"> <a
																href="#">${actorData.name }</a>
														</div>
														<p>${actorData.reward }</p>
													</div>
													</c:forEach></div>
												<!-- cast for문 -->
												<div class="title-hd-sm">
													<h4>관람객 리뷰</h4>
												</div>
												<!-- movie user review -->
												<c:forEach var="rvo" items="${rlist }" begin="0" end="2">
												<div class="blog-detail-ct">
													<div class="cmt-item flex-it">
														<div class="author-infor">
															<div class="flex-it2">
																<h6 style="color:white">${rvo.nick }</h6> <span class="time"> - <fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd"/></span>
																<div class="reply">
																</div>	
															</div>
															<p>${rvo.msg }</p>
															<div id="u${rvo.no }" class="comment-form replyUpdate" style="display: none">
																<form method="post" action="movieReviewUpdate.do">
																	<div class="row">
																		<div class="col-md-10">
																			<textarea name="msg" placeholder="내용" style="height: 120px; width: 500px; margin-bottom: 0px">${rvo.msg }</textarea>
																			<input type="hidden" name="no" value="${rvo.no }"/>
																			<input type="hidden" name="movie_id" value="${rvo.movie_id }"/>
																		</div>
																		<div class="col-md-2">
																			<input class="submit movieDetailSubmit reviewBtn" type="submit" placeholder="작성완료">
																		</div>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
											</div>
											<div class="col-md-4 col-xs-12 col-sm-12">
												<div class="sb-it">
													<h6>감독:</h6>
													<p>
													<c:forEach var ="cvo" items="${cvo }">
														<a href="https://movie.naver.com/movie/bi/pi/basic.nhn?code=${cvo.cast_id }" target="_blank">${cvo.name }</a></c:forEach>
													</p>
												</div>
												<div class="sb-it">
													<h6>배우:</h6>
													<p>
													<c:forEach var="actorData" items="${actorData}">
														<a href="https://movie.naver.com/movie/bi/pi/basic.nhn?code=${actorData.cast_id }" target="_blank">${actorData.name } | </a></c:forEach> 
													</p>
												</div>
												<div class="sb-it">
													<h6>장르:</h6>
													<p><c:forEach var="genre" items="${genre }">
													<a href="#" >${genre } | </a></c:forEach></p>
												</div>
												<div class="sb-it">
													<h6>개봉일:</h6>
													<p>
														<fmt:formatDate value="${vo.opening_date }"
															pattern="yyyy-MM-dd" />
													</p>
												</div>
												<div class="sb-it">
													<h6>상영시간:</h6>
													<p>${vo.running_time }분</p>
												</div>
												<div class="sb-it">
													<h6>등급:</h6>
													<p>${vo.grade }</p>
												</div>
												<!-- <div class="sb-it">
													<h6>주요 키워드:</h6>
													<p class="tags">
														<span class="time"><a href="#">superhero</a></span> <span
															class="time"><a href="#">marvel universe</a></span> <span
															class="time"><a href="#">comic</a></span> <span
															class="time"><a href="#">blockbuster</a></span> <span
															class="time"><a href="#">final battle</a></span>
													</p>
												</div> -->
											</div>
										</div>
									</div>
									<!-- ============================= MOVIE DETAIL - OVERVIEW 주요정보 TAB END  ============================== -->

									<!-- ============================= MOVIE DETAIL - REVIEW 리뷰 TAB START  ============================== -->
									<div id="reviews" class="tab review">
										<div class="row">
											<div class="rv-hd">
												<div class="div">
													<h2>${vo.title }</h2>
												</div>
												<c:if test="${sessionScope.email !=null }"><span class="redbtn" id="review"
													style="margin-right: 15px;">리뷰 작성</span></c:if>
											</div>

											<!--리뷰작성  -->
											 <form method="post" action="movieReview.do">
												<div id="reviewWrite" class="rv-hd">
													<div class="div">
														<textarea name ="msg" rows="5" cols="80%" autofocus required
															wrap="hard" placeholder="댓글을 입력해주세요."></textarea>
													</div>
													<input class="redbtn " type="submit" value="리뷰작성"/>
													<input type="hidden" name="movie_id" value="${vo.movie_id }"/>
												</div>
											</form>
											<div class="topbar-filter">
												<p>
													총 <span>${movieTotalReview } 개의</span> 리뷰가 있습니다.
												</p>
											</div>
											<c:forEach var="rvo" items="${rlist }">
												<div class="blog-detail-ct">
													<div class="cmt-item flex-it">
														<div class="author-infor">
															<div class="flex-it2">
																<h6 style="color:white">${rvo.nick }</h6> <span class="time"> - <fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd"/></span>
																<div class="reply">
																	<c:if test="${sessionScope.email!=null&&sessionScope.email==rvo.email }">
																		<h6 class="reply_btn"><span class="updateBtn" data-no="${rvo.no }">수정</span></h6> 
																		<h6 class="reply_btn"><a href="movieReviewDelete.do?pno=${rvo.no }" style="font-size: 16px">삭제</a></h6>
																	</c:if>
																</div>	
															</div>
															<p>${rvo.msg }</p>
															<div id="u${rvo.no }" class="comment-form replyUpdate" style="display: none">
																<form method="post" action="movieReviewUpdate.do">
																	<div class="row">
																		<div class="col-md-10">
																			<textarea name="msg" placeholder="내용" style="height: 120px; width: 500px; margin-bottom: 0px">${rvo.msg }</textarea>
																			<input type="hidden" name="no" value="${rvo.no }"/>
																			<input type="hidden" name="movie_id" value="${rvo.movie_id }"/>
																		</div>
																		<div class="col-md-2">
																			<input class="submit movieDetailSubmit reviewBtn" type="submit" placeholder="작성완료">
																		</div>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<!-- ============================= MOVIE DETAIL - REVIEW리뷰 TAB END  ============================== -->


									<!-- ============================= MOVIE DETAIL -  CAST 배우 제작진 TAB START  ============================== -->
									<div id="cast" class="tab">
										<div class="row">
											<!-- <h3>Cast & Crew of</h3>
					       	 			<h2>Avengers: Age of Ultron</h2> -->
											<!-- //== -->
											<div class="title-hd-sm">
												<h4>감독</h4>
											</div>
											<c:forEach var ="cvo" items="${cvo }">
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left">
														<img src="${cvo.thumbnail }" alt=""> <a
															href="https://movie.naver.com/movie/bi/pi/basic.nhn?code=${cvo.cast_id }" target="_blank">${cvo.name }</a>
													</div>
													<p>${cvo.reward }</p>
												</div>
											</div></c:forEach>
											<!-- //== -->
											
											<div class="title-hd-sm">
												<h4>배우</h4>
											</div>
											<div class="mvcast-item">
											<c:forEach var="actorData" items="${actorData }">
												<div class="cast-it">
													<div class="cast-left">
														<img src="${actorData.thumbnail }" alt="" style="width:40px;height:40px;"> <a
															href="https://movie.naver.com/movie/bi/pi/basic.nhn?code=${actorData.cast_id }" target="_blank">${actorData.name }</a>
													</div>
													<p>${actorData.reward }</p>
												</div>
												</c:forEach>
											</div>
											<!-- //== -->
											
										</div>
									</div>
									<!-- ============================= MOVIE DETAIL -  CAST 배우 제작진 TAB END  ============================== -->

									<!-- ============================= MOVIE DETAIL -  포토/영상 TAB START  ============================== -->
									<div id="media" class="tab">
										<div class="row">
											<div class="rv-hd">
												<div>
													<!-- <h3>Videos & Photos of</h3>
					       	 					<h2>The Big Bang Theory</h2> -->
												</div>
											</div>
											<div class="title-hd-sm">
												<h4>
													영상 
												</h4>
											</div>
											<c:if test="${movieUrl != '[]' }">
											<div class="mvsingle-item media-item">

												<div class="vd-item">
													<div class="vd-it">
														<img class="vd-img" src="${vo.poster }"
															alt=""> <a class="fancybox-media hvr-grow"
															href="${movieUrl }"><img
															src="images/uploads/play-vd.png" alt=""></a>
													</div>
												</div>


											</div>
											</c:if>
											<div class="title-hd-sm">
												<h4>
													포토 <span> (${fn:length(moviePictures)} )</span>
												</h4>
											</div>
											<c:forEach var="moviePictures" items="${moviePictures }">
												<div class="mvsingle-item poster">
													<a class="img-lightbox" data-fancybox-group="gallery"
														href="${moviePictures }"><img src="${moviePictures }"
														alt="" style="width:100px;height:100px"></a>
												</div>
											</c:forEach>
										</div>
									</div>

									<!-- ============================= MOVIE DETAIL -  RELATED MOVIE 관련영화 TAB START  ============================== -->
									<div id="moviesrelated" class="tab">
										<div class="row">
											<div class="topbar-filter">
												<p class="pad-change">
													'<span>${vo.title }</span>'와(과) 관련된 영화 <span>${movieTotalSameDirector }</span>건
												</p>
												<!-- <label>Sort by:</label> -->
												<!-- <select>
													<option value="ranking">랭킹순</option>
													<option value="rating">평점순</option>
													<option value="date">최신작품순</option>
													<option value="date">Release date Ascending</option>
												</select> -->
											</div>
											
											<c:forEach var="dlist" items="${dlist }">
											<c:if test="${vo.movie_id != dlist.movie_id }">
											<div class="movie-item-style-2">
												<img src="${dlist.poster }" alt="">
												<div class="mv-item-infor">
													<h6>
														<a href="seriesSingle.do?movie_id=${dlist.movie_id }" target="_blank">${dlist.title } <span><fmt:formatDate value="${dlist.opening_date }" pattern="yyyy"/></span></a>
													</h6>
													<!-- <p class="rate">
														<i class="ion-android-star"></i><span>8.1</span> /10
													</p> -->
													<p class="describe">
													<div class="box">
													<p class="content">${dlist.story }</p>
													</div>
												 		<hr/>
													<p class="run-time">
														상영 시간: ${dlist.running_time } 분 . <span>${dlist.grade }</span> . <span>개봉일:
															<fmt:formatDate value="${dlist.opening_date }" pattern="yyyy-MM-dd"/></span>
													</p>
													
													<p>
														감독: <c:forEach var ="cvo" items="${cvo }"><a href="https://movie.naver.com/movie/bi/pi/basic.nhn?code=${cvo.cast_id }" target="_blank">${cvo.name } | </a></c:forEach>
													</p>
													
													<p>
													출연 배우: 
														${dlist.name }	
													</p>
												</div>
											</div></c:if>
											</c:forEach>
											
										</div>
									</div>
									<!-- ============================= MOVIE DETAIL -  RELATED MOVIE 관련영화 TAB END  ============================== -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================= MOVIE DETAIL - RIGHT DETAIL INFO SIDE END  ============================== -->
			</div>
		</div>
	</div>
	<!-- ============================= MOVIE DETAIL BOTTOM AREA END  ============================== -->
</body>
</html>