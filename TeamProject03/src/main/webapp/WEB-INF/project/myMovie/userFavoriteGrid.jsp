<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/userFavoriteGrid.css">
</head>
<body>

<!-- ========================== userFavoriteGrid 컬렉션 타이틀 START ========================== -->
<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>범블비님의 컬렉션</h1>
					<ul class="breadcumb">
						<li class="active"><a href="home.do">홈</a></li>
						<li> <span class="ion-ios-arrow-right"></span>컬렉션</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ========================== userFavoriteGrid 컬렉션 타이틀 END ========================== -->

<!-- ========================== userFavoriteGrid 컬렉션 목록 START ========================== -->
<div class="page-single">
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
							<li class="active"><a href="userfavoriteGrid.do">컬렉션</a></li>
							<li><a href="userRate.do">평점/리뷰</a></li>
						</ul>
					</div>
					<div class="user-fav">
						<!-- <p>Others</p> -->
						<ul>
							<li><a href="#">비밀번호 변경</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="topbar-filter user">
					<p>총 <span>1,608 </span> 개의 영화</p>
					<!-- <label>Sort by:</label> -->
					<select>
						<option value="range">저장순</option>
						<option value="saab">가나다순</option>
					</select>
					<a href="userFavoriteList.do" class="list"><i class="ion-ios-list-outline active"></i></a>
					<a href="userFavoriteGrid.do" class="grid"><i class="ion-grid "></i></a>
				</div>
				<div class="flex-wrap-movielist grid-fav">
						<div class="movie-item-style-2 movie-item-style-1 style-3">
							<img src="images/uploads/mv1.jpg" alt="">
							<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
							<div class="mv-item-infor">
								<h6><a href="movieGrid.do">oblivion</a></h6>
								<p class="rate"><i class="ion-android-star"></i><span>8.1</span> /10</p>
							</div>
						</div>					
						<div class="movie-item-style-2 movie-item-style-1 style-3">
							<img src="images/uploads/mv2.jpg" alt="">
							<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
							<div class="mv-item-infor">
								<h6><a href="movieGrid.do">into the wild</a></h6>
								<p class="rate"><i class="ion-android-star"></i><span>7.8</span> /10</p>
							</div>
						</div>					
						<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item3.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">Die hard</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
					
					
						<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item4.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">The walk</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
							<img src="images/uploads/mv3.jpg" alt="">
							<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
							<div class="mv-item-infor">
								<h6><a href="movieGrid.do">blade runner  </a></h6>
								<p class="rate"><i class="ion-android-star"></i><span>7.3</span> /10</p>
							</div>
						</div>
						<div class="movie-item-style-2 movie-item-style-1 style-3">
							<img src="images/uploads/mv4.jpg" alt="">
							<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
							<div class="mv-item-infor">
								<h6><a href="movieGrid.do">Mulholland pride</a></h6>
								<p class="rate"><i class="ion-android-star"></i><span>7.2</span> /10</p>
							</div>
						</div>
						<div class="movie-item-style-2 movie-item-style-1 style-3">
							<img src="images/uploads/mv5.jpg" alt="">
							<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
							<div class="mv-item-infor">
								<h6><a href="movieGrid.do">skyfall: evil of boss</a></h6>
								<p class="rate"><i class="ion-android-star"></i><span>7.0</span> /10</p>
							</div>
						</div>
						<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item1.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">Interstellar</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item2.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">The revenant</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-it10.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">harry potter</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
						<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-it11.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">guardians galaxy</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-it12.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">the godfather</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
						<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item6.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">blue velvet</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item7.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">gravity</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item8.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">southpaw</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-it9.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">jurassic park</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item9.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">the forest</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item10.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">spectre</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item11.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">strager things</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
	            		<div class="movie-item-style-2 movie-item-style-1 style-3">
	            			<img src="images/uploads/mv-item12.jpg" alt="">
	            			<div class="hvr-inner">
	            				<a  href="movieGrid.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
	            			<div class="mv-item-infor">
	            				<h6><a href="movieGrid.do">la la land</a></h6>
	            				<p class="rate"><i class="ion-android-star"></i><span>7.4</span> /10</p>
	            			</div>
	            		</div>
				</div>		
				<div class="topbar-filter">
					<label>Movies per page:</label>
					<select>
						<option value="range">20 Movies</option>
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
<!-- ========================== userFavoriteGrid 컬렉션 목록 END ========================== -->

</body>
</html>