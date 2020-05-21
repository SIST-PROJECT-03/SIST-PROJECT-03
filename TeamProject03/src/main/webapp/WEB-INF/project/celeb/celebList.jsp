<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/celebList.css">
</head>
<body>
<!-- ============================= TOP - TITLE AREA START  ============================== -->
<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>영화인 </h1>
					<ul class="breadcumb">
						<li class="active"><a href="../main.do">홈</a></li>
						<li> <span class="ion-ios-arrow-right"></span> 영화인 목록</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- =============================TOP TITLE AREA END  ============================== -->


<!-- ============================= CELEB BOTTOM AREA START  ============================== -->
<div class="page-single">
	<div class="container">
		<div class="row ipad-width2">
		
			<!-- ============================= CELEB LIST AREA START  ============================== -->
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="topbar-filter">
					<p class="pad-change"> '<span>엠마 왓슨</span>'에 대한 <span>50</span>건의 검색 결과</p>
					<!-- <label>정렬순</label> -->
					<select>
						<option value="popularity">랭킹순</option>
						<option value="rating">평점순</option>
						<option value="date">Release date Descending</option>
						<option value="date">Release date Ascending</option>
					</select>
					<a href="celebList.do" class="list"><i class="ion-ios-list-outline active"></i></a>
					<a href="celebGrid.do" class="grid"><i class="ion-grid "></i></a>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="ceb-item-style-2">
							<img src="images/uploads/ceblist1.jpg" alt="">
							<div class="ceb-infor">
								<h2><a href="celebDetail.do">Dan Stevens</a></h2>
								<span>actor, usa</span>
								<p>Dan Stevens was born at Croydon in Surrey on 10th October 1982. His parents are teachers. He was educated at Tonbridge School and trained in acting at the National Youth Theatre of Great Britain... </p>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="ceb-item-style-2">
							<img src="images/uploads/ceblist2.jpg" alt="">
							<div class="ceb-infor">
								<h2><a href="celebDetail.do">Luke Evans</a></h2>
								<span>actor, mexico</span>
								<p>Luke George Evans was born in Pontypool, Wales, and grew up in Aberbargoed, in the south of Wales. He is the son of Yvonne (Lewis) and David Evans. He moved to Cardiff at the age 17...</p>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="ceb-item-style-2">
							<img src="images/uploads/ceblist3.jpg" alt="">
							<div class="ceb-infor">
								<h2><a href="celebDetail.do">Scarlett Johansson</a></h2>
								<span>actress, france</span>
								<p>Scarlett Ingrid Johansson was born in New York City. Her mother, Melanie Sloan, is from a Jewish family from the Bronx, and her father, Karsten Johansson, is a Danish-born architect, from Copenhagen...</p>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="ceb-item-style-2">
							<img src="images/uploads/ceblist4.jpg" alt="">
							<div class="ceb-infor">
								<h2><a href="celebDetail.do">Emma Watson</a></h2>
								<span>actress, uk</span>
								<p>Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five...</p>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="ceb-item-style-2">
							<img src="images/uploads/ceblist5.jpg" alt="">
							<div class="ceb-infor">
								<h2><a href="celebDetail.do">Tom Hardy</a></h2>
								<span>actor, italy	</span>
								<p>Joan Crawford was born Lucille Fay LeSueur on March 23, 1905, in San Antonio, Texas, to Anna Belle (Johnson) and Thomas E. LeSueur, a laundry laborer. By the time she was born her parents had separated....</p>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="ceb-item-style-2">
							<img src="images/uploads/ceblist6.jpg" alt="">
							<div class="ceb-infor">
								<h2><a href="celebDetail.do">Joan Crawford</a></h2>
								<span>director, sweden</span>
								<p>Joan Crawford was born Lucille Fay LeSueur on March 23, 1905, in San Antonio, Texas, to Anna Belle (Johnson) and Thomas E. LeSueur, a laundry laborer. By the time she was born her parents had separated....</p>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="ceb-item-style-2">
							<img src="images/uploads/ceblist7.jpg" alt="">
							<div class="ceb-infor">
								<h2><a href="celebDetail.do">Margot Robbie</a></h2>
								<span>actress, chile</span>
								<p>Margot Robbie is an Australian actress born in Dalby, Queensland, and raised on the Gold Coast, spending much of her time at the farm belonging to her grandparents. Her mother, Sarie Kessler, is a physiotherapist....</p>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="ceb-item-style-2">
							<img src="images/uploads/ceblist8.jpg" alt="">
							<div class="ceb-infor">
								<h2><a href="celebDetail.do">Jason Momoa</a></h2>
								<span>actor, usa</span>
								<p>Joseph Jason Namakaeha Momoa was born on August 1, 1979 in Honolulu, Hawaii. He is the son of Coni (Lemke), a photographer, and Joseph Momoa, a painter...</p>
							</div>
						</div>
					</div>
				</div>
				<div class="topbar-filter">
					<label>Reviews per page:</label>
					<select>
						<option value="range">36 Reviews</option>
						<option value="saab">18 Reviews</option>
					</select>
					
					<div class="pagination2">
						<span>Page 1 of 6:</span>
						<a class="active" href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						<a href="#">6</a>
						<a href="#"><i class="ion-arrow-right-b"></i></a>
					</div>
				</div>
			</div>
			<!-- ============================= CELEB LIST AREA END  ============================== -->
			
			
			<!-- ============================= CELEB SEARCHING & OTHER AREA START  ============================== -->
			<div class="col-md-3 col-xs-12 col-sm-12">
				<div class="sidebar">
						<div class="searh-form">
						<h4 class="sb-title">영화인 검색</h4>
						<form class="form-style-1 celebrity-form" action="#">
							<div class="row">
								<div class="col-md-12 form-it">
									<label>이름</label>
									<input type="text" placeholder="Enter keywords">
								</div>
								<div class="col-md-12 form-it">
									<label>카테고리</label>
									<select>
									  <!-- <option value="range">전체</option> -->
									  <option value="range">배우</option>
									  <option value="saab">스텝</option>
									</select>
								</div>
								<div class="col-md-12 form-it">
									<label>출생년도</label>
									<div class="row">
										<div class="col-md-6">
											<select>
											  <option value="range">1970</option>
											  <option value="number">Other</option>
											</select>
										</div>
										<div class="col-md-6">
											<select>
											  <option value="range">1990</option>
											  <option value="number">others</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-12 ">
									<input class="submit" type="submit" value="검색하기">
								</div>
							</div>
						</form>
					</div>
					<div class="ads">
						<img src="images/uploads/ads1.png" alt="">
					</div>
					<div class="celebrities">
						<h4 class="sb-title">주목받는 영화인</h4>
						<div class="celeb-item">
							<a href="celebDetail.do"><img src="images/uploads/ava1.jpg" alt=""></a>
							<div class="celeb-author">
								<h6><a href="celebDetail.do">Samuel N. Jack</a></h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="celebDetail.do"><img src="images/uploads/ava2.jpg" alt=""></a>
							<div class="celeb-author">
								<h6><a href="celebDetail.do">Benjamin Carroll</a></h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="celebDetail.do"><img src="images/uploads/ava3.jpg" alt=""></a>
							<div class="celeb-author">
								<h6><a href="celebDetail.do">Beverly Griffin</a></h6>
								<span>Actor</span>
							</div>
						</div>
						<div class="celeb-item">
							<a href="celebDetail.do"><img src="images/uploads/ava4.jpg" alt=""></a>
							<div class="celeb-author">
								<h6><a href="celebDetail.do">Justin Weaver</a></h6>
								<span>Actor</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================= CELEB SEARCHING & OTHER AREA END  ============================== -->
		</div>
	</div>
</div>
<!-- ============================= CELEB BOTTOM AREA END  ============================== -->
</body>
</html>