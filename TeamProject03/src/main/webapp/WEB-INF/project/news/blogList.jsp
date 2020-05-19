<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/blogList.css">
</head>
<body>
<!-- ============================= BLOG GRID TITLE AREA START  ============================== -->
<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1> 영화 뉴스</h1>
					<ul class="breadcumb">
						<li class="active"><a href="../main/home.do">홈</a></li>
						<li> <span class="ion-ios-arrow-right"></span> 뉴스</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ============================= BLOG-GRID TITLE AREA END  ============================== -->

<!-- ============================= BLOG-LIST LIST AREA START  ============================== -->
<div class="page-single">
	<div class="container">
		<div class="row ipad-width2">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="topbar-filter">
					<p>총 <span>1,608 </span> 개의 뉴스</p>
					<!-- <label>Sort by:</label> -->
					<select>
						<option value="popularity">최근순</option>
						<option value="popularity">인기순</option>
						<option value="rating">Rating Descending</option>
						<option value="date">Release date Ascending</option>
					</select>
					<a href="blogList.do" class="list"><i class="ion-ios-list-outline active"></i></a>
					<a href="blogGrid.do" class="grid"><i class="ion-grid"></i></a>
				</div>
				<div class="blog-item-style-1 blog-item-style-3">
            		<img src="../images/uploads/bloglist-it1.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="newsDetail.do">Godzilla: King Of The Monsters Adds O’Shea Jackson Jr</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>Africa's burgeoning animation scene got a boost this week with the announcement of an ambitious new partnership that will pair rising talents from across the continent ...</p>
            		</div>
            	</div>
            	<div class="blog-item-style-1 blog-item-style-3">
            		<img src="../images/uploads/bloglist-it2.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="blogDetail.do">Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>Magnolia Pictures has acquired U.S. and international rights to the comedic drama Lucky John Carroll Lynch’s directorial debut. Lynch is an in-demand character actor who ...</p>
            		</div>
            	</div>
				<div class="blog-item-style-1 blog-item-style-3">
            		<img src="../images/uploads/bloglist-it3.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="blogDetail.do">‘Going in Style’ Tops ‘Smurfs: The Lost Village’ at Thursday Box Office</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>New Line’s remake of “Going in Style” launched with a moderate $600,000 on Thursday night, while Sony’s animated “Smurfs: The Lost Village” debuted with $375,000 ...</p>
            		</div>
            	</div>
            	<div class="blog-item-style-1 blog-item-style-3">
            		<img src="../images/uploads/bloglist-it4.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="blogDetail.do">India’s National Film Awards: ‘Kaasav’ Wins Best Picture</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>Although it sporadically errs on the side of sentimentality and simplification, "The Case for Christ" sustains interest, and even generates mild suspense ...</p>
            		</div>
            	</div>
            	<div class="blog-item-style-1 blog-item-style-3">
            		<img src="../images/uploads/bloglist-it5.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="blogDetail.do">‘Kong: Skull Island’ Tops $500 Million at Worldwide Box Office</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>King Kong is still a box office giant. “Kong: Skull Island” has crossed the $500 million mark at the worldwide box office. It’s the third 2017 title to hit the milestone after Disney’s ...</p>
            		</div>
            	</div>
            	<div class="blog-item-style-1 blog-item-style-3">
            		<img src="../images/uploads/bloglist-it6.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="blogDetail.do">Film Review: ‘Aftermath’</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>"Aftermath" is a plane crash movie without a plane crash. Instead, the closest we get is a scene set in the control tower, where a computer screen shows two ...</p>
            		</div>
            	</div>
            	<ul class="pagination">
            		<li class="icon-prev"><a href=""><i class="ion-ios-arrow-left"></i></a></li>
            		<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">...</a></li>
					<li><a href="#">21</a></li>
					<li><a href="#">22</a></li>
					<li class="icon-next"><a href="#"><i class="ion-ios-arrow-right"></i></a></li>
            	</ul>
			</div>
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="sidebar">
					<div class="sb-search sb-it">
						<h4 class="sb-title">뉴스 검색</h4>
						<input type="text" placeholder="Enter keywords">
					</div>
					<div class="sb-cate sb-it">
						<h4 class="sb-title">카테고리</h4>
						<ul>
							<li><a href="blogDetail.do">Awards (50)</a></li>
							<li><a href="blogDetail.do">Box office (38)</a></li>
							<li><a href="blogDetail.do">Film reviews (72)</a></li>
							<li><a href="blogDetail.do">News (45)</a></li>
							<li><a href="blogDetail.do">Global (06)</a></li>
						</ul>
					</div>
					<div class="sb-recentpost sb-it">
						<h4 class="sb-title">인기 뉴스</h4>
						<div class="recent-item">
							<span>01</span><h6><a href="blogDetail.do">Korea Box Office: Beauty and the Beast Wins Fourth</a></h6>
						</div>
						<div class="recent-item">
							<span>02</span><h6><a href="blogDetail.do">Homeland Finale Includes Shocking Death </a></h6>
						</div>
						<div class="recent-item">
							<span>03</span><h6><a href="blogDetail.do">Fate of the Furious Reviews What the Critics Saying</a></h6>
						</div>
					</div>
					<div class="sb-tags sb-it">
						<h4 class="sb-title">태그</h4>
						<ul class="tag-items">
							<li><a href="#">Batman</a></li>
							<li><a href="#">film</a></li>
							<li><a href="#">homeland</a></li>
							<li><a href="#">Fast & Furious</a></li>
							<li><a href="#">Dead Walker</a></li>
							<li><a href="#">King</a></li>
							<li><a href="#">Beauty</a></li>
						</ul>
					</div>
					<div class="ads">
						<img src="../images/uploads/ads1.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ============================= BLOG-GRID LIST AREA END  ============================== -->
</body>
</html>