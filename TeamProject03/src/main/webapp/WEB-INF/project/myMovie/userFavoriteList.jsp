<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/userFavoriteList.css">
</head>
<body>

<!-- ========================== userFavoriteList 컬렉션 타이틀 START ========================== -->
<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1 class="userTitleInfo">범블비님의 컬렉션</h1>
					<ul class="breadcumb">
						<li class="active"><a href="main/home.do">홈</a></li>
						<li> <span class="ion-ios-arrow-right"></span>컬렉션</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ========================== userFavoriteList 컬렉션 타이틀 END ========================== -->

<!-- ========================== userFavoriteList 컬렉션 목록 START ========================== -->
<div class="page-single userfav_list userPageSingle">
	<div class="container">
		<div class="row ipad-width2">
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="user-information">
					<div class="user-img">
						<a href="#"><img src="images/uploads/user-img.png" alt=""><br></a>
						<a href="#" class="redbtn">프로필 사진 변경</a>
					</div>
					<div class="user-fav">
						<!-- <p>Account Details</p> -->
						<ul>
							<li><a href="userProfile.do">프로필</a></li>
							<li class="active"><a href="userFavoriteGrid.do">컬렉션</a></li>
							<li><a href="userRate.do">평점/리뷰</a></li>
						</ul>
					</div>
					<!-- <div class="user-fav">
						<p>Others</p>
						<ul>
							<li><a href="#">비밀번호 변경</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul>
					</div> -->
				</div>
			</div>
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="topbar-filter user">
					<p class="searchTotal">총 <span>1,608 </span> 개의 영화</p>
					<!-- <label>Sort by:</label> -->
					<select>
						<option value="range">저장순</option>
						<option value="saab">가나다순</option>
					</select>
					<a href="userFavoriteList.do" class="list"><i class="ion-ios-list-outline active"></i></a>
					<a href="userFavoriteGrid.do" class="grid"><i class="ion-grid "></i></a>
				</div>
				<div class="flex-wrap-movielist user-fav-list">
					<div class="movie-item-style-2">
						<img src="images/uploads/mv1.jpg" alt="">
						<div class="mv-item-infor">
							<h6><a href="movieDetail.do">oblivion <span>(2012)</span></a></h6>
							<p class="rate"><i class="ion-android-star"></i><span>8.1</span> /10</p>
							<p class="describe">Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity...</p>
							<p class="run-time"> 상영 시간 │ 2h21’         <span>등급 │ PG-13 </span>         <span>개봉 년도 │ 1 May 2015</span></p>
							<p>감독 │ <a href="celeb/celebGrid.do">Joss Whedon</a></p>
							<p>배우 │ <a href="celeb/celebGrid.do">Robert Downey Jr.,</a> <a href="celeb/celebGrid.do">Chris Evans,</a> <a href="celeb/celebGrid.do">  Chris Hemsworth</a></p>
						</div>
					</div>
					<div class="movie-item-style-2">
						<img src="images/uploads/mv2.jpg" alt="">
						<div class="mv-item-infor">
							<h6><a href="movieDetail.do">into the wild <span>(2014)</span></a></h6>
							<p class="rate"><i class="ion-android-star"></i><span>7.8</span> /10</p>
							<p class="describe">As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat...</p>
							<p class="run-time"> 상영 시간 │ 2h21’         <span>등급 │ PG-13 </span>         <span>개봉 년도 │ 1 May 2015</span></p>
							<p>감독 │ <a href="celeb/celebGrid.do">Anthony Russo,</a><a href="celeb/celebGrid.do">Joe Russo</a></p>
							<p>배우 │ <a href="celeb/celebGrid.do">Chris Evans,</a> <a href="celeb/celebGrid.do">Samuel L. Jackson,</a> <a href="celeb/celebGrid.do">  Scarlett Johansson</a></p>
						</div>
					</div>
					<div class="movie-item-style-2">
						<img src="images/uploads/mv3.jpg" alt="">
						<div class="mv-item-infor">
							<h6><a href="movieDetail.do">blade runner  <span>(2015)</span></a></h6>
							<p class="rate"><i class="ion-android-star"></i><span>7.3</span> /10</p>
							<p class="describe">Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help...</p>
							<p class="run-time"> 상영 시간 │ 2h21’         <span>등급 │ PG-13 </span>         <span>개봉 년도 │ 1 May 2015</span></p>
							<p>감독 │ <a href="#">Peyton Reed</a></p>
							<p>배우 │ <a href="#">Paul Rudd,</a> <a href="#"> Michael Douglas</a></p>
						</div>
					</div>
					<div class="movie-item-style-2">
						<img src="images/uploads/mv4.jpg" alt="">
						<div class="mv-item-infor">
							<h6><a href="movieDetail.do">Mulholland pride<span> (2013)  </span></a></h6>
							<p class="rate"><i class="ion-android-star"></i><span>7.2</span> /10</p>
							<p class="describe">When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.</p>
							<p class="run-time"> 상영 시간 │ 2h21’         <span>등급 │ PG-13 </span>         <span>개봉 년도 │ 1 May 2015</span></p>
							<p>감독 │ <a href="#">Shane Black</a></p>
							<p>배우 │ <a href="#">Robert Downey Jr., </a> <a href="#">  Guy Pearce,</a><a href="#">Don Cheadle</a></p>
						</div>
					</div>
					<div class="movie-item-style-2">
						<img src="images/uploads/mv5.jpg" alt="">
						<div class="mv-item-infor">
							<h6><a href="movieDetail.do">skyfall: evil of boss<span> (2013)  </span></a></h6>
							<p class="rate"><i class="ion-android-star"></i><span>7.0</span> /10</p>
							<p class="describe">When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.</p>
							<p class="run-time"> 상영 시간 │ 2h21’         <span>등급 │ PG-13 </span>         <span>개봉 년도 │ 1 May 2015</span></p>
							<p>감독 │ <a href="#">Alan Taylor</a></p>
							<p>배우 │ <a href="#">Chris Hemsworth,  </a> <a href="#">  Natalie Portman,</a><a href="#">Tom Hiddleston</a></p>
						</div>
					</div>
				</div>		
				<div class="topbar-filter">
					<label>Movies per page:</label>
					<select>
						<option value="range">5 Movies</option>
						<option value="saab">10 Movies</option>
					</select>
					
					<div class="pagination2">
						<span>Page 1 of 2:</span>
						<a class="active" href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">...</a>
						<a href="#">78</a>
						<a href="#">79</a>
						<a href="#"><i class="ion-arrow-right-b"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ========================== userFavoriteList 컬렉션 목록 END ========================== -->

</body>
</html>