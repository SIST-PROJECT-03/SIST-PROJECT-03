
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/movieGrid.css">
</head>
<body>
	<input type="hidden" class="genre" value="">
	<input type="hidden" class="country" value="">
	<input type="hidden" class="grade" value="">
	<input type="hidden" class="range" value="opening_date">
	<input type="hidden" class="rowSize" value="60">
	<div id="a">
		<div class="row">
			<div class="hero common-hero">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="hero-ct">
								<h1>보고싶은 작품을 찾아보세요</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="page-single">
				<div class="container">
					<div class="row ipad-width">
						<div class="topbar-filter">
							<p class="pad-change celebPad">
								'<span></span>'에 대한 <span></span>건의 검색 결과
							</p>
							<select class="selectRangeChange">
								<option value="opening_date">최신순</option>
								<option value="running_time">러닝타임순</option>

							</select>
						</div>

						<div class="topbar-filter">
							<p class="pad-change celebPad">상세 선택</p>
							<select class="selectGenreChange">
								<option value="">장르 전체</option>
								<option value="공포">공포</option>
								<option value="스릴">스릴</option>
							</select> <select class="selectCountryChange" >
								<option value="">국가 전체</option>
								<option value="한국">한국</option>
								<option value="미국">미국</option>
							</select> <select class="selectGradeChange">
								<option value="">관람등급 전체</option>
								<option value="12세 관람가">12세 관람가</option>
								<option value="15세 관람가">15세 관람가</option>
							</select>
						</div>
						<div id="movieGridPrint">
							<div class="flex-wrap-movielist">
								<c:forEach items="${list}" var="vo">
									<div class="movie-item-style-2 movie-item-style-1">
										<img src="${vo.poster }" alt="">
										<div class="hvr-inner">
											<a href="seriesSingle.do?movie_id=${vo.movie_id}"> Read more <i class="ion-android-arrow-dropright"></i>
											</a>
										</div>
										<div class="mv-item-infor">
											<h6>
												<a href="seriesSingle.do">${vo.title}</a>
											</h6>
										</div>
									</div>
								</c:forEach>

							</div>
							<div class="topbar-filter">
								<label>Movies per page:</label>
								 <select class="selectRowSizeChange">
									<option value="30">30 Movies</option>
									<option value="60" selected="selected">60 Movies</option>
								</select>
								<div class="pagination2">

									<span>Page</span><span class="totalPagePrint">
										${totalPage }</span><span> of</span> <span>${curPage } :</span> <a
										href="movieGrid.do"><i class="ion-arrow-left-b"></i><i
										class="ion-arrow-left-b"></i></a>

									<c:choose>
										<c:when test="${totalPage<=5 }">
											<c:forEach begin="1" end="${totalPage}" var="i">
												<c:if test="${i !=curPage }">
													<span class="pageButton"><a>${i }</a></span>
												</c:if>
												<c:if test="${i == curPage }">
													<span class="pageButton"><a class="active">${i }</a></span>
												</c:if>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${curPage >= totalPage-2 }">
													<c:forEach begin="${totalPage-4}" end="${totalPage}"
														var="i">
														<c:if test="${i !=curPage }">
															<span class="pageButton"><a>${i }</a></span>
														</c:if>
														<c:if test="${i == curPage }">
															<span class="pageButton"><a class="active">${i }</a></span>
														</c:if>
													</c:forEach>
												</c:when>

												<c:when test="${curPage > 3 }">
													<c:forEach begin="${curPage-2}" end="${curPage+2}" var="i">
														<c:if test="${i !=curPage }">
															<span class="pageButton"><a>${i }</a></span>
														</c:if>
														<c:if test="${i == curPage }">
															<span class="pageButton"><a class="active">${i }</a></span>
														</c:if>
													</c:forEach>
												</c:when>

												<c:otherwise>
													<c:forEach begin="1" end="5" var="i">
														<c:if test="${i !=curPage }">
															<span class="pageButton"><a>${i }</a></span>
														</c:if>
														<c:if test="${i == curPage }">
															<span class="pageButton"><a class="active">${i }</a></span>
														</c:if>
													</c:forEach>

												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>

									<a href="movieGrid.do?page=${totalPage}"><i class="ion-arrow-right-b"></i><i
										class="ion-arrow-right-b"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

