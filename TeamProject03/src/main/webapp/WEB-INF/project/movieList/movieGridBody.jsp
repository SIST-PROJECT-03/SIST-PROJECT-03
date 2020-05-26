<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ============================= INFO TITLE AREA START  ============================== -->
<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>인기 액션 영화 Top 30</h1>

				</div>
			</div>
		</div>
	</div>
</div>
<!-- ============================= INFO TITLE AREA END  ============================== -->




<!-- ============================= BOTTOM WHOLE AREA START  ============================== -->
<div class="page-single">
	<div class="container">
		<div class="row ipad-width">
			<!-- ============================= MOVIE LIST AREA START  ============================== -->
			<div class="topbar-filter">
				<p class="pad-change celebPad"> '<span>해리포터</span>'에 대한 <span>50</span>건의 검색 결과</p>
				<!-- <label>정렬순</label> -->
				<select class="selectChange">
					<option value="ranking" >추천순</option>
					<option value="rating">평점순</option>
					<option value="date">최신순</option>
				</select>
				<a href="movieList.do" class="list"><i class="ion-ios-list-outline "></i></a>
				<a href="movieGrid.do" class="grid"><i class="ion-grid active"></i></a>
			</div>
			<div class="topbar-filter">
		
				<p class="pad-change celebPad">상세 선택</p>
				<select class="a">
					<option value="ranking">장르</option>
					<option value="rating">공포</option>
					<option value="date">스릴</option>
				</select>
		
				<select class="b">
					<option value="ranking">국가</option>
					<option value="rating">한국</option>
					<option value="date">미국</option>				
				</select>

				<select class="b">
					<option value="ranking">관람등급</option>
					<option value="rating">한국</option>
					<option value="date">미국</option>				
				</select>


			</div>
			<div class="flex-wrap-movielist">
				<c:forEach items="${list}" var="vo">
					<div class="movie-item-style-2 movie-item-style-1">
						<img src="${vo.poster }" alt="">
						<div class="hvr-inner">
            				<a  href="seriesSingle.do"> Read more <i class="ion-android-arrow-dropright"></i> </a>
            			</div>
						<div class="mv-item-infor">
							<h6><a href="seriesSingle.do">${vo.title}</a></h6>
						</div>
					</div>	
				</c:forEach>				
			</div>		
			<div class="topbar-filter">
				<label>Movies per page:</label>
				<select>
					<option value="range">20 Movies</option>
					<option value="saab">10 Movies</option>
				</select>
				
				<div class="pagination2">
					<span>Page ${totalPage } of ${curPage } :</span>
					<a href="#"><i class="ion-arrow-left-b"></i><i class="ion-arrow-left-b"></i></a>
						<c:choose>
							<c:when  test="${curPage >= totalPage-2 }" >
								<c:forEach begin="${totalPage-4}" end="${totalPage}" var="i">
									<c:if test="${i !=curPage }">
										<a href="movieGrid?page=${i}">${i }</a>
									</c:if>
									<c:if test="${i == curPage }">
										<a class="active" href="movieGrid?page=${i}">${i }</a>
									</c:if>
								</c:forEach>
							</c:when>
							<c:when test="${curPage > 2 }">
								<c:forEach begin="${curPage-2}" end="${curPage+2}" var="i">
									<c:if test="${i !=curPage }">
										<a href="movieGrid.do?page=${i}">${i }</a>
									</c:if>
									<c:if test="${i == curPage }">
										<a class="active" href="movieGrid.do?page=${i}">${i }</a>
									</c:if>
								</c:forEach>	
							</c:when>
							<c:otherwise>			
								<c:forEach begin="1" end="5" var="i">
									<c:if test="${i !=curPage }">
										<a href="movieGrid.do?page=${i}">${i }</a>
									</c:if>
									<c:if test="${i == curPage }">
										<a class="active" href="movieGrid.do?page=${i}">${i }</a>
									</c:if>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					<a href="#"><i class="ion-arrow-right-b"></i><i class="ion-arrow-right-b"></i></a>

				</div>
			</div>
		</div>
		<!-- ============================= MOVIE LIST AREA END  ============================== -->
		
		<!-- ============================= RIGHT SEARCH AREA START  ============================== -->
		<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="sidebar">

				<div class="ads">
					<img src="images/uploads/ads1.png" alt="">
				</div>
			</div>
		</div>
		<!-- ============================= RIGHT SEARCH AREA END  ============================== -->
	</div>
</div>

<!-- ============================= BOTTOM WHOLE AREA END  ============================== --> 
</body>
</html>