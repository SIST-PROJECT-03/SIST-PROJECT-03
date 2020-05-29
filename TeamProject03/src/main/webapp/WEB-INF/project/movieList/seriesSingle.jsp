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
<link rel="stylesheet" href="css/sliding.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script text="javascript/text">

	$(document)
			.ready(
					function() {

						$('.box')
								.each(
										function() {
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
    $("#moviePictures").slideToggle("slow");
  });
});
</script>
<style> 
#panel, #flip {
  padding: 5px;
  text-align: center;
  border: solid 1px #c3c3c3;
}

#moviePictures {
  padding: 50px;
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
					</div>
				</div>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<div class="movie-single-ct main-content">
						<h1 class="bd-hd">${vo.title }<span> </span>
						</h1>
						<div class="social-btn">
							<a href="#" class="parent-btn"><i class="ion-heart"></i>컬렉션
								담기</a>
							<div class="hover-bnt">
								<a href="#" class="parent-btn"><i
									class="ion-android-share-alt"></i>공유하기</a>
								<div class="hvr-item">
									<a href="#" class="hvr-grow"><i class="ion-social-facebook"></i></a>
									<a href="#" class="hvr-grow"><i class="ion-social-twitter"></i></a>
									<a href="#" class="hvr-grow"><i
										class="ion-social-googleplus"></i></a> <a href="#"
										class="hvr-grow"><i class="ion-social-youtube"></i></a>
								</div>
							</div>
						</div>
						<div class="movie-rate">
							<div class="rate">
								<i class="ion-android-star"></i>
								<p>
									<span>${wvo.male_rating }</span><br>
								</p>
								<p>
									<span class="rv">56 리뷰</span>
								</p>
							</div>
							<div class="rate-star">
								<p>내 평점 등록:</p>
								<i class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
									class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
									class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
									class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
									class="ion-ios-star-outline"></i>
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
												<!-- 						            		<div class="title-hd-sm">
												<h4>Current Season</h4>
												<a href="#" class="time">View All Seasons <i class="ion-ios-arrow-right"></i></a>
											</div>
											movie cast
											<div class="mvcast-item">											
												<div class="cast-it">
													<div class="cast-left series-it">
														<img src="images/uploads/season.jpg" alt="">
														<div>
															<a href="#">Season 10</a>
															<p>21 Episodes</p>
															<p>Season 10 of The Big Bang Theory premiered on 
															September 19, 2016.</p>
														</div>	
													</div>											
												</div>	
											</div>
 -->
												<div class="title-hd-sm">
													<h4>포토/영상</h4>
													<a href="#" class="time" id="load">더보기 <i
														class="ion-ios-arrow-right"></i></a>
												</div>
												<div id="mvsingle-item ov-item">
												<body>
    <section class="sliding-wrap">
        <ul class="sliding-item">
        </ul>
        <a href="#" class="sliding-left-arrow pos-absolute">
            <img src="img/left-arrow.png" alt="">
            <img src="" alt="">
        </a>
        <a href="#" class="sliding-right-arrow pos-absolute">
            <img src="img/right-arrow.png" alt="">
            <img src="" alt="">
        </a>
        <div class="sliding-check-box pos-absolute">
            <ul class="sliding-check-items">
                <li>
                    <a href="#">
                        <img src="img/stop-btn.png" alt="">
                    </a>
                </li>
            </ul>
        </div>
    </section>



    <script id="template-sliding-check-item" type="text/template">
            <li><a>
                <img src="./../img/{img-kind}" class = "{class}" alt="">    
            </a></li>

        </script>
    <script id="template-sliding-items" type="text/template">
            <li name="{name}">
                <a><img src="{moviePictures}" alt=""></a>
                <a><div>{title}</div></a>
                <a><div>{information}</div></a>
            </li>
        </script>
    <script src="js/ajax/ajax.js"></script>
    <script src="js/cache.js"></script>
    <script src="js/constructor.js"></script>
    <script src="js/layout.js"></script>
    <script src="js/operating.js"></script>
    <script src="js/slidingConfiguration.js"></script>
    <script src="js/getDataForSliding.js"></script>


    <script src="js/slide-for-supporting/slide.js">alert('hello')</script>

												
											<%-- 	<div>
													<c:forEach var="moviePictures" items="${moviePictures }" begin="0" end="1">
														<a class="img-lightbox" data-fancybox-group="gallery"
															href=""><img src="${moviePictures }" alt=""></a>
													</c:forEach></div>
													<div id="flip">click</div>
													<div id="moviePictures">
													<c:forEach var="moviePictures" items="${moviePictures }" begin="2" end="${moviePictures.size() }">
														<a class="img-lightbox" data-fancybox-group="gallery"
															href=""><img src="${moviePictures }" alt=""></a>
													</c:forEach></div>
													
													<div class="vd-it">
														<img class="vd-img" src="images/uploads/image7.jpg" alt="">
														<a class="fancybox-media hvr-grow"
															href="https://www.youtube.com/embed/o-0hcF97wy0"><img
															src="images/uploads/play-vd.png" alt=""></a>
													</div>
												</div> --%>
												<div class="title-hd-sm">
													<h4>배우</h4>
													<a href="#" class="time">더보기 <i
														class="ion-ios-arrow-right"></i></a>
												</div>
												<!-- movie cast -->
												<div class="mvcast-item">
													<!-- 인물 DB넣은 후 연결하고나서 출력하기 -->
													<div class="cast-it">
														<div class="cast-left">
															<img src="images/uploads/cast1.jpg" alt=""> <a
																href="#">Robert Downey Jr.</a>
														</div>
														<p>... Robert Downey Jr.</p>
													</div>
												</div>
												<!-- cast for문 -->
												<div class="title-hd-sm">
													<h4>관람객 리뷰</h4>
													<a href="#" class="time">더보기 <i
														class="ion-ios-arrow-right"></i></a>
												</div>
												<!-- movie user review -->
												<div class="mv-user-review-item">
													<h3>Best Marvel movie in my opinion</h3>
													<div class="no-star">
														<i class="ion-android-star"></i> <i
															class="ion-android-star"></i> <i class="ion-android-star"></i>
														<i class="ion-android-star"></i> <i
															class="ion-android-star"></i> <i class="ion-android-star"></i>
														<i class="ion-android-star"></i> <i
															class="ion-android-star"></i> <i class="ion-android-star"></i>
														<i class="ion-android-star last"></i>
													</div>
													<p class="time">
														17 December 2016 by <a href="#"> hawaiipierson</a>
													</p>
													<p>This is.</p>
												</div>
											</div>
											<div class="col-md-4 col-xs-12 col-sm-12">
												<div class="sb-it">
													<h6>감독:</h6>
													<p>
														<a href="https://movie.naver.com/movie/bi/pi/basic.nhn?code=${cvo.cast_id }">${cvo.name }</a>
													</p>
												</div>
												<div class="sb-it">
													<h6>배우:</h6>
													<p>
													<c:forEach var="actorData" items="${actorData}">
														<a href="https://movie.naver.com/movie/bi/pi/basic.nhn?code=${actorData.cast_id }">${actorData.name } | </a></c:forEach> 
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
												<div class="sb-it">
													<h6>주요 키워드:</h6>
													<p class="tags">
														<span class="time"><a href="#">superhero</a></span> <span
															class="time"><a href="#">marvel universe</a></span> <span
															class="time"><a href="#">comic</a></span> <span
															class="time"><a href="#">blockbuster</a></span> <span
															class="time"><a href="#">final battle</a></span>
													</p>
												</div>
											</div>
										</div>
									</div>
									<!-- ============================= MOVIE DETAIL - OVERVIEW 주요정보 TAB END  ============================== -->

									<!-- ============================= MOVIE DETAIL - REVIEW 리뷰 TAB START  ============================== -->
									<div id="reviews" class="tab review">
										<div class="row">
											<div class="rv-hd">
												<div class="div">
													<h3>Related Movies To</h3>
													<h2>${vo.title }</h2>
												</div>
												<a href="#" class="redbtn" id="review"
													style="margin-right: 15px;">리뷰 작성</a>
											</div>

											<!--리뷰작성  -->
											<div id="reviewWrite" class="rv-hd">
												<div class="div">
													<!-- maxlength를 넣어주면 글자수 제한도 가능하다. -->
													<textarea rows="5" cols="80%" autofocus required
														wrap="hard" placeholder="댓글을 입력해주세요."></textarea>
												</div>
												<a class="redbtn">리뷰작성</a>
											</div>

											<div class="topbar-filter">
												<p>
													Found <span>56 reviews</span> in total
												</p>
												<label>Filter by:</label> <select>
													<option value="range">-- Choose option --</option>
													<option value="saab">-- Choose option 2--</option>
												</select>
											</div>
											<div class="mv-user-review-item">
												<div class="user-infor">
													<img src="images/uploads/userava1.jpg" alt="">
													<div>
														<h3>Best Marvel movie in my opinion</h3>
														<div class="no-star">
															<i class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star last"></i>
														</div>
														<p class="time">
															17 December 2016 by <a href="#"> hawaiipierson</a>
														</p>
													</div>
												</div>
												<p>out do themselvnce.</p>
											</div>
											<div class="mv-user-review-item">
												<div class="user-infor">
													<img src="images/uploads/userava2.jpg" alt="">
													<div>
														<h3>Just about as good as the first one!</h3>
														<div class="no-star">
															<i class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i>
														</div>
														<p class="time">
															17 December 2016 by <a href="#"> hawaiipierson</a>
														</p>
													</div>
												</div>
												<p>Avengers Age of There are a lot of good and one thing
													that feels off in my opinion.</p>

												<p>THE GOOD:</p>

												<p>First .</p>

												<p>THE BAD:</p>

												<p>Twhen irus talk of an extended version on Blu-Ray so
													that's cool.</p>
											</div>
											<div class="mv-user-review-item">
												<div class="user-infor">
													<img src="images/uploads/userava3.jpg" alt="">
													<div>
														<h3>One of the most boring exepirences from watching
															a movie</h3>
														<div class="no-star">
															<i class="ion-android-star"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i>
														</div>
														<p class="time">
															26 March 2017 by<a href="#"> christopherfreeman</a>
														</p>
													</div>
												</div>
												<p>I can't right much... it's just so
													forgettable...Okay, from what I remember, I remember just
													sitting down on my seat and waiting for the movie to begin.
													5 minutes into the movie, boring scene of Tony Stark just
													talking to his "dead" friends saying it's his fault. 10
													minutes in: Boring scene of Ultron and Jarvis having robot
													space battles(I dunno:/). 15 minutes in: I leave the
													theatre.2nd attempt at watching it: I fall asleep. What
													woke me up is the next movie on Netflix when the movie was
													over.</p>

												<p>Bottemline: It's boring...</p>

												<p>10/10 because I'm a Marvel Fanboy</p>
											</div>
											<div class="mv-user-review-item ">
												<div class="user-infor">
													<img src="images/uploads/userava4.jpg" alt="">
													<div>
														<h3>That spirit of fun</h3>
														<div class="no-star">
															<i class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i>
														</div>
														<p class="time">
															26 March 2017 by <a href="#"> juliawest</a>
														</p>
													</div>
												</div>
												<p>If there were not an audience for Marvel comic heroes
													than clearly these films would not be made, to answer one
													other reviewer although I sympathize with him somewhat. The
													world is indeed an infinitely more complex place than the
													world of Marvel comics with clearly identifiable heroes and
													villains. But I get the feeling that from Robert Downey,
													Jr. on down the organizer and prime mover as Iron Man
													behind the Avengers these players do love doing these roles
													because it's a lot of fun. If they didn't show that spirit
													of fun to the audience than these films would never be
													made.</p>

												<p>So in that spirit of fun Avengers: Age Of Ultron
													comes before us and everyone looks like they're having a
													good time saving the world. A computer program got loose
													and took form in this dimension named Ultron and James
													Spader who is completely unrecognizable is running amuck in
													the earth. No doubt Star Trek fans took notice that this
													guy's mission is to cleanse the earth much like that old
													earth probe NOMAD which got its programming mixed up in
													that classic Star Trek prime story. Wouldst Captain James
													T. Kirk of the Enterprise had a crew like Downey has at his
													command.</p>
												<p>My favorite is always Chris Evans because of the
													whole cast he best gets into the spirit of being a
													superhero. Of all of them, he's already played two
													superheroes, Captain America and Johnny Storm the Human
													Torch. I'll be before he's done Evans will play a couple of
													more as long as the money's good and he enjoys it.</p>

												<p>Pretend you're a kid again and enjoy, don't take it
													so seriously.</p>
											</div>
											<div class="mv-user-review-item last">
												<div class="user-infor">
													<img src="images/uploads/userava5.jpg" alt="">
													<div>
														<h3>Impressive Special Effects and Cast</h3>
														<div class="no-star">
															<i class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star"></i> <i
																class="ion-android-star last"></i> <i
																class="ion-android-star last"></i>
														</div>
														<p class="time">
															26 March 2017 by <a href="#"> johnnylee</a>
														</p>
													</div>
												</div>
												<p>The Avengers raid a Hydra base in Sokovia commanded
													by Strucker and they retrieve Loki's scepter. They also
													discover that Strucker had been conducting experiments with
													the orphan twins Pietro Maximoff (Aaron Taylor-Johnson),
													who has super speed, and Wanda Maximoff (Elizabeth Olsen),
													who can control minds and project energy. Tony Stark
													(Robert Downey Jr.) discovers an Artificial Intelligence in
													the scepter and convinces Bruce Banner (Mark Ruffalo) to
													secretly help him to transfer the A.I. to his Ultron
													defense system. However, the Ultron understands that is
													necessary to annihilate mankind to save the planet, attacks
													the Avengers and flees to Sokovia with the scepter. He
													builds an armature for self-protection and robots for his
													army and teams up with the twins. The Avengers go to
													Clinton Barton's house to recover, but out of the blue,
													Nick Fury (Samuel L. Jackson) arrives and convinces them to
													fight against Ultron. Will they succeed?</p>

												<p>"Avengers: Age of Ultron" is an entertaining
													adventure with impressive special effects and cast. The
													storyline might be better, since most of the characters do
													not show any chemistry. However, it is worthwhile watching
													this film since the amazing special effects are not
													possible to be described in words. Why Pietro has to die is
													also not possible to be explained. My vote is eight.</p>
											</div>
											<div class="topbar-filter">
												<label>Reviews per page:</label> <select>
													<option value="range">5 Reviews</option>
													<option value="saab">10 Reviews</option>
												</select>
												<div class="pagination2">
													<span>Page 1 of 6:</span> <a class="active" href="#">1</a>
													<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a
														href="#">5</a> <a href="#">6</a> <a href="#"><i
														class="ion-arrow-right-b"></i></a>
												</div>
											</div>
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
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left">
														<h4>JW</h4>
														<a href="#">Joss Whedon</a>
													</div>
													<p>... Director</p>
												</div>
											</div>
											<!-- //== -->
											<div class="title-hd-sm">
												<h4>제작진</h4>
											</div>
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left">
														<h4>SL</h4>
														<a href="#">Stan Lee</a>
													</div>
													<p>... (based on Marvel comics)</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>JK</h4>
														<a href="#">Jack Kirby</a>
													</div>
													<p>... (based on Marvel comics)</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>JS</h4>
														<a href="#">Joe Simon</a>
													</div>
													<p>... (character created by: Captain America)</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>JS</h4>
														<a href="#">Joe Simon</a>
													</div>
													<p>... (character created by: Thanos)</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>RT</h4>
														<a href="#">Roy Thomas</a>
													</div>
													<p>... (character created by: Ultron, Vision)</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>JB</h4>
														<a href="#">John Buscema</a>
													</div>
													<p>... (character created by: Ultron, Vision)</p>
												</div>
											</div>
											<!-- //== -->
											<div class="title-hd-sm">
												<h4>배우</h4>
											</div>
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left">
														<img src="images/uploads/cast1.jpg" alt=""> <a
															href="#">Robert Downey Jr.</a>
													</div>
													<p>... Robert Downey Jr.</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="images/uploads/cast2.jpg" alt=""> <a
															href="#">Chris Hemsworth</a>
													</div>
													<p>... Thor</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="images/uploads/cast3.jpg" alt=""> <a
															href="#">Mark Ruffalo</a>
													</div>
													<p>... Bruce Banner/ Hulk</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="images/uploads/cast4.jpg" alt=""> <a
															href="#">Chris Evans</a>
													</div>
													<p>... Steve Rogers/ Captain America</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="images/uploads/cast5.jpg" alt=""> <a
															href="#">Scarlett Johansson</a>
													</div>
													<p>... Natasha Romanoff/ Black Widow</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="images/uploads/cast6.jpg" alt=""> <a
															href="#">Jeremy Renner</a>
													</div>
													<p>... Clint Barton/ Hawkeye</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="images/uploads/cast7.jpg" alt=""> <a
															href="#">James Spader</a>
													</div>
													<p>... Ultron</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="images/uploads/cast9.jpg" alt=""> <a
															href="#">Don Cheadle</a>
													</div>
													<p>... James Rhodes/ War Machine</p>
												</div>
											</div>
											<!-- //== -->
											<div class="title-hd-sm">
												<h4>Produced by</h4>
											</div>
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left">
														<h4>VA</h4>
														<a href="#">Victoria Alonso</a>
													</div>
													<p>... executive producer</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>MB</h4>
														<a href="#">Mitchel Bell</a>
													</div>
													<p>... co-producer (as Mitch Bell)</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>JC</h4>
														<a href="#">Jamie Christopher</a>
													</div>
													<p>... associate producer</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>LD</h4>
														<a href="#">Louis D’Esposito</a>
													</div>
													<p>... executive producer</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>JF</h4>
														<a href="#">Jon Favreau</a>
													</div>
													<p>... executive producer</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>KF</h4>
														<a href="#">Kevin Feige</a>
													</div>
													<p>... producer</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>AF</h4>
														<a href="#">Alan Fine</a>
													</div>
													<p>... executive producer</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<h4>JF</h4>
														<a href="#">Jeffrey Ford</a>
													</div>
													<p>... associate producer</p>
												</div>
											</div>
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


									<!-- ============================= MOVIE DETAIL - 시즌정보  탭 - 현재 미사용중 START  ============================== -->
									<div id="season" class="tab">
										<div class="row">
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left series-it">
														<img src="images/uploads/season.jpg" alt="">
														<div>
															<a href="#">Season 10</a>
															<p>21 Episodes</p>
															<p>Season 10 of The Big Bang Theory premiered on
																September 19, 2016.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left series-it">
														<img src="images/uploads/season.jpg" alt="">
														<div>
															<a href="#">Season 10</a>
															<p>21 Episodes</p>
															<p>Season 10 of The Big Bang Theory premiered on
																September 19, 2016.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left series-it">
														<img src="images/uploads/season.jpg" alt="">
														<div>
															<a href="#">Season 10</a>
															<p>21 Episodes</p>
															<p>Season 10 of The Big Bang Theory premiered on
																September 19, 2016.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left series-it">
														<img src="images/uploads/season.jpg" alt="">
														<div>
															<a href="#">Season 10</a>
															<p>21 Episodes</p>
															<p>Season 10 of The Big Bang Theory premiered on
																September 19, 2016.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left series-it">
														<img src="images/uploads/season.jpg" alt="">
														<div>
															<a href="#">Season 10</a>
															<p>21 Episodes</p>
															<p>Season 10 of The Big Bang Theory premiered on
																September 19, 2016.</p>
														</div>
													</div>
												</div>
											</div>
											<div class="mvcast-item">
												<div class="cast-it">
													<div class="cast-left series-it">
														<img src="images/uploads/season.jpg" alt="">
														<div>
															<a href="#">Season 10</a>
															<p>21 Episodes</p>
															<p>Season 10 of The Big Bang Theory premiered on
																September 19, 2016.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- ============================= MOVIE DETAIL - 시즌정보  탭 - 현재 미사용중 END  ============================== -->


									<!-- ============================= MOVIE DETAIL -  RELATED MOVIE 관련영화 TAB START  ============================== -->
									<div id="moviesrelated" class="tab">
										<div class="row">
											<!-- <h3>Related Movies To</h3>
					       	 			<h2>Skyfall: Quantum of Spectre</h2> -->
											<div class="topbar-filter">
												<p class="pad-change">
													'<span>해리포터</span>'와 관련된 영화 <span>50</span>건
												</p>
												<!-- <label>Sort by:</label> -->
												<select>
													<option value="ranking">랭킹순</option>
													<option value="rating">평점순</option>
													<option value="date">최신작품순</option>
													<option value="date">Release date Ascending</option>
												</select>
											</div>
											<div class="movie-item-style-2">
												<img src="images/uploads/mv1.jpg" alt="">
												<div class="mv-item-infor">
													<h6>
														<a href="#">oblivion <span>(2012)</span></a>
													</h6>
													<p class="rate">
														<i class="ion-android-star"></i><span>8.1</span> /10
													</p>
													<p class="describe">Earth's mightiest heroes must come
														together and learn to fight as a team if they are to stop
														the mischievous Loki and his alien army from enslaving
														humanity...</p>
													<p class="run-time">
														Run Time: 2h21’ . <span>MMPA: PG-13 </span> . <span>Release:
															1 May 2015</span>
													</p>
													<p>
														Director: <a href="#">Joss Whedon</a>
													</p>
													<p>
														Stars: <a href="#">Robert Downey Jr.,</a> <a href="#">Chris
															Evans,</a> <a href="#"> Chris Hemsworth</a>
													</p>
												</div>
											</div>
											<div class="movie-item-style-2">
												<img src="images/uploads/mv2.jpg" alt="">
												<div class="mv-item-infor">
													<h6>
														<a href="#">into the wild <span>(2014)</span></a>
													</h6>
													<p class="rate">
														<i class="ion-android-star"></i><span>7.8</span> /10
													</p>
													<p class="describe">As Steve Rogers struggles to
														embrace his role in the modern world, he teams up with a
														fellow Avenger and S.H.I.E.L.D agent, Black Widow, to
														battle a new threat...</p>
													<p class="run-time">
														Run Time: 2h21’ . <span>MMPA: PG-13 </span> . <span>Release:
															1 May 2015</span>
													</p>
													<p>
														Director: <a href="#">Anthony Russo,</a><a href="#">Joe
															Russo</a>
													</p>
													<p>
														Stars: <a href="#">Chris Evans,</a> <a href="#">Samuel
															L. Jackson,</a> <a href="#"> Scarlett Johansson</a>
													</p>
												</div>
											</div>
											<div class="movie-item-style-2">
												<img src="images/uploads/mv3.jpg" alt="">
												<div class="mv-item-infor">
													<h6>
														<a href="#">blade runner <span>(2015)</span></a>
													</h6>
													<p class="rate">
														<i class="ion-android-star"></i><span>7.3</span> /10
													</p>
													<p class="describe">Armed with a super-suit with the
														astonishing ability to shrink in scale but increase in
														strength, cat burglar Scott Lang must embrace his inner
														hero and help...</p>
													<p class="run-time">
														Run Time: 2h21’ . <span>MMPA: PG-13 </span> . <span>Release:
															1 May 2015</span>
													</p>
													<p>
														Director: <a href="#">Peyton Reed</a>
													</p>
													<p>
														Stars: <a href="#">Paul Rudd,</a> <a href="#"> Michael
															Douglas</a>
													</p>
												</div>
											</div>
											<div class="movie-item-style-2">
												<img src="images/uploads/mv4.jpg" alt="">
												<div class="mv-item-infor">
													<h6>
														<a href="#">Mulholland pride<span> (2013) </span></a>
													</h6>
													<p class="rate">
														<i class="ion-android-star"></i><span>7.2</span> /10
													</p>
													<p class="describe">When Tony Stark's world is torn
														apart by a formidable terrorist called the Mandarin, he
														starts an odyssey of rebuilding and retribution.</p>
													<p class="run-time">
														Run Time: 2h21’ . <span>MMPA: PG-13 </span> . <span>Release:
															1 May 2015</span>
													</p>
													<p>
														Director: <a href="#">Shane Black</a>
													</p>
													<p>
														Stars: <a href="#">Robert Downey Jr., </a> <a href="#">
															Guy Pearce,</a><a href="#">Don Cheadle</a>
													</p>
												</div>
											</div>
											<div class="movie-item-style-2">
												<img src="images/uploads/mv5.jpg" alt="">
												<div class="mv-item-infor">
													<h6>
														<a href="#">skyfall: evil of boss<span> (2013)
														</span></a>
													</h6>
													<p class="rate">
														<i class="ion-android-star"></i><span>7.0</span> /10
													</p>
													<p class="describe">When Tony Stark's world is torn
														apart by a formidable terrorist called the Mandarin, he
														starts an odyssey of rebuilding and retribution.</p>
													<p class="run-time">
														Run Time: 2h21’ . <span>MMPA: PG-13 </span> . <span>Release:
															1 May 2015</span>
													</p>
													<p>
														Director: <a href="#">Alan Taylor</a>
													</p>
													<p>
														Stars: <a href="#">Chris Hemsworth, </a> <a href="#">
															Natalie Portman,</a><a href="#">Tom Hiddleston</a>
													</p>
												</div>
											</div>
											<div class="topbar-filter">
												<label>Movies per page:</label> <select>
													<option value="range">5 Movies</option>
													<option value="saab">10 Movies</option>
												</select>
												<div class="pagination2">
													<span>Page 1 of 2:</span> <a class="active" href="#">1</a>
													<a href="#">2</a> <a href="#"><i
														class="ion-arrow-right-b"></i></a>
												</div>
											</div>
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