<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/newsDetail.css">
</head>
<body>
<!-- ============================= BLOG DETAIL TITLE AREA START  ============================== -->
<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1> 뉴스 상세보기</h1>
					<ul class="breadcumb">
						<li class="active"><a href="../main/home.do">홈</a></li>
						<li> <span class="ion-ios-arrow-right"></span> 뉴스</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ============================= BLOG DETAIL TITLE AREA END  ============================== -->

<!-- ============================= BLOG DETAIL BOTTOM AREA START  ============================== -->
<div class="page-single">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="blog-detail-ct">
					<h1>${vo.title }</h1>
					<span class="author" style="color:white;">${vo.author }</span>
					<span class="time"><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
					<div class="content">
						<br><span style="white-space: pre-wrap;">${vo.content }</span>
					</div>
					<!-- share link -->
					<div class="flex-it share-tag">
						<div class="social-link">
							<h4>공유하기</h4>
							<a href="#"><i class="ion-social-facebook"></i></a>
							<a href="#"><i class="ion-social-twitter"></i></a>
							<a href="#"><i class="ion-social-googleplus"></i></a>
							<a href="#"><i class="ion-social-pinterest"></i></a>
							<a href="#"><i class="ion-social-linkedin"></i></a>
						</div>
						<div class="right-it">
							<h4>태그</h4>
							<a href="#">Gray,</a>
							<a href="#">Film,</a>
							<a href="#">Poster</a>
						</div>
					</div>
					<!-- comment items -->
					<h4>총 ${newsReviewTotal }개의 댓글</h4>
					<c:forEach var="rvo" items="${rlist }">
						<div class="comments">
							<div class="cmt-item flex-it">
								<!-- <img src="../images/uploads/author.png" alt=""> -->
								<div class="author-infor">
									<div class="flex-it2">
										<h6 style="color: white;">${rvo.email }</h6> 
										<span class="time"><fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd"/></span>
									</div>
									<p style="white-space: pre-wrap;">${rvo.msg }</p>
									<p><a class="rep-btn" href="#">+ Reply</a></p>
								</div>
							</div>
						</div>
					</c:forEach>
					<c:if test="${sessionScope.email!=null }">
						<div class="comment-form">
							<h4>댓글 작성</h4>
							<form method="post" action="newsReview.do">
								<div class="row">
									<div class="col-md-12">
										<textarea name="msg" placeholder="내용"></textarea>
									</div>
								</div>
								<input class="submit newsDetailSubmit" type="submit" placeholder="작성완료">
								<input type="hidden" name="news_no" value="${vo.news_id }"/>
							</form>
						</div>
					</c:if>
					<!-- comment form -->
				</div>
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
							<li><a href="#">Awards (50)</a></li>
							<li><a href="#">Box office (38)</a></li>
							<li><a href="#">Film reviews (72)</a></li>
							<li><a href="#">News (45)</a></li>
							<li><a href="#">Global (06)</a></li>
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
						<h4 class="sb-title">tags</h4>
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
<!-- ============================= BLOG DETAIL BOTTOM AREA END  ============================== -->
</body>
</html>