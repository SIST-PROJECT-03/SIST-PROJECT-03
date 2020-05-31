<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/celebGrid.css">
</head>
<body>
<!-- ============================= 영화인 정보 - TOP - TITLE AREA START  ============================== -->
<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>영화인 </h1>
					<ul class="breadcumb">
						<li class="active"><a href="main.do">홈</a></li>
						<li> <span class="ion-ios-arrow-right"></span> 영화인 목록</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ============================= 영화인 정보 TOP TITLE AREA END  ============================== -->

<!-- ============================= 영화인 정보 BOTTOM AREA START  ============================== -->
<div class="page-single">
	<div class="container">
		<div class="row ipad-width2">
		
			<!-- ============================= 영화인 목록 AREA START  ============================== -->
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="topbar-filter">
					<p class="pad-change celebPad"> '<span>레오나르도 디카프리오</span>'에 대한 <span>50</span>건의 검색 결과</p>
					<!-- <label>정렬순</label> -->
					<select class="selectChange">
						<option value="popularity">랭킹순</option>
						<option value="rating">평점순</option>
						<option value="date">Release date Descending</option>
						<option value="date">Release date Ascending</option>
					</select>
					<a href="celebList.do" class="list"><i class="ion-ios-list-outline "></i></a>
					<a href="celebGrid.do" class="grid"><i class="ion-grid active"></i></a>
				</div>
				<div class="row">
					<c:forEach items="${list }" var="vo">
						<div class="col-md-4">
							<div class="ceb-item-style-2">
								<img src="${vo.thumbnail }" alt="" style="width:120px; height:150px">
								<div class="ceb-infor">
									<h2><a href="celebDetail.do">${vo.name}</a></h2>
									<span>${vo.birth}</span>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="topbar-filter">
					<label>Reviews per page:</label>
					<select>
						<option value="range">36 Reviews</option>
						<option value="saab">18 Reviews</option>
					</select>
					
					<div class="pagination2">
						<span>Page 1 of ${totalPage }:</span>
						<a href="celebGrid.do?page=${curPage<=1?curPage:curPage-1 }"><i class="ion-arrow-left-b"></i></a>
						<!-- <a class="active" href="#">1</a> -->
						
						<c:choose>
							<c:when  test="${curPage >= totalPage-2 }" >
								<c:forEach begin="${totalPage-4}" end="${totalPage}" var="i">
									<c:if test="${i !=curPage }">
										<a href="celebGrid.do?page=${i}">${i }</a>
									</c:if>
									<c:if test="${i == curPage }">
										<a class="active" href="celebGrid.do?page=${i}">${i }</a>
									</c:if>
								</c:forEach>
							</c:when>
							<c:when test="${curPage > 2 }">
								<c:forEach begin="${curPage-2}" end="${curPage+2}" var="i">
									<c:if test="${i !=curPage }">
										<a href="celebGrid.do?page=${i}">${i }</a>
									</c:if>
									<c:if test="${i == curPage }">
										<a class="active" href="celebGrid.do?page=${i}">${i }</a>
									</c:if>
								</c:forEach>	
							</c:when>
							<c:otherwise>			
								<c:forEach begin="1" end="5" var="i">
									<c:if test="${i !=curPage }">
										<a href="celebGrid.do?page=${i}">${i }</a>
									</c:if>
									<c:if test="${i == curPage }">
										<a class="active" href="celebGrid.do?page=${i}">${i }</a>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						
						
						
						
					
						
					 	
					 
						<a href="celebGrid.do?page=${curPage>=totalPage?totalPage:curPage+1 }"><i class="ion-arrow-right-b"></i></a>
					</div>
				</div>
			</div>
			<!-- ============================= 영화인 목록 AREA END  ============================== -->
			
			
			<!-- ============================= 영화인 SEARCHING & OTHER AREA START  ============================== -->
			<div class="col-md-3 col-xs-12 col-sm-12">
				<div class="sidebar">
						<div class="searh-form">
						<h4 class="sb-title">영화인 검색</h4>
						<form class="form-style-1 celebrity-form" action="#">
							<div class="row">
								<div class="col-md-12 form-it">
									<label>이름</label>
									<input class="celebSearch" type="text" placeholder="Enter keywords">
								</div>
								<!-- <div class="col-md-12 form-it">
									<label>Celebrity Letter</label>
									<select>
									  <option value="range">A</option>
									  <option value="saab">B</option>
									</select>
								</div> -->
								<!-- <div class="col-md-12 form-it">
									<label>카테고리</label>
									<select>
									  <option value="range">전체</option>
									  <option value="range">배우</option>
									  <option value="saab">스텝</option>
									</select>
								</div>
								<div class="col-md-12 form-it">
									<label>출생연도</label>
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
								</div> -->
								<div class="col-md-12 ">
									<input class="celebSearchButton" type="button" value="검색하기">
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
			<!-- ============================= 영화인 SEARCHING & OTHER AREA END  ============================== -->
		</div>
	</div>
</div>
<!-- ============================= 영화인 CELEB BOTTOM AREA END  ============================== -->
</body>
</html>