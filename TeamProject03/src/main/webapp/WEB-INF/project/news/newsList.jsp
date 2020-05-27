<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/newsList.css">
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
					<p class="totalnews">총 <span>${count } </span> 개의 뉴스</p>
					<!-- <label>Sort by:</label> -->
					<select class="newsSelect">
						<option value="popularity">최근순</option>
					</select>
					<a href="newsList.do" class="list"><i class="ion-ios-list-outline active"></i></a>
					<a href="newsGrid.do" class="grid"><i class="ion-grid"></i></a>
				</div>
				
				<c:forEach var="vo" items="${list }">
					<div class="blog-item-style-1 blog-item-style-3">
						<c:choose>
							<c:when test="${empty vo.thumbnail }">
								<img src="images/news_noimg.PNG">							
							</c:when>
							<c:otherwise>
								<img src="${vo.thumbnail }">
							</c:otherwise>
						</c:choose>
						
	            		<div class="blog-it-infor">
	            			<h3><a href="newsDetail.do?no=${vo.news_id }">${vo.title }</a></h3>
	            			<span class="time">${vo.regdate }</span>
	            			<p>${vo.subject }</p>
	            		</div>
	            	</div>
				</c:forEach>
            	
            	<ul class="pagination">
            		<c:if test="${curpage>5 }">
            			<li class="icon-next"><a href="newsList.do?page=1"><i class="ion-ios-arrow-left"></i><i class="ion-ios-arrow-left"></i></a></li>
            			<li class="icon-prev"><a href="newsList.do?page=${startblock-1}"><i class="ion-ios-arrow-left"></i></a></li>
            		</c:if>
            		<c:choose>
            			<c:when test="${totalpage<endblock }">
            				<c:forEach var="i" begin="${startblock }" end="${totalpage }">
            					<li class="active"><a href="newsList.do?page=${i }">${i }</a></li>
            				</c:forEach>
            			</c:when>
            			<c:otherwise>
            				<c:forEach var="i" begin="${startblock }" end="${endblock }">
            					<li class="active"><a href="newsList.do?page=${i }">${i }</a></li>
            				</c:forEach>
            			</c:otherwise>
            		</c:choose>
            		<c:if test="${endblock<totalpage }">
            			<li class="icon-next"><a href="newsList.do?page=${endblock+1 }"><i class="ion-ios-arrow-right"></i></a></li>
            			<li class="icon-next"><a href="newsList.do?page=${totalpage }"><i class="ion-ios-arrow-right"></i><i class="ion-ios-arrow-right"></i></a></li>
            		</c:if>
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