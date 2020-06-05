
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script src="js/movieListPage.js"></script>
	<div class="flex-wrap-movielist">
		<c:forEach items="${list}" var="vo">
			<div class="movie-item-style-2 movie-item-style-1">
				<img src="${vo.poster }" alt="">
				<div class="hvr-inner">
					<a href="seriesSingle.do"> Read more <i
						class="ion-android-arrow-dropright"></i>
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
		 <select class="selectRowSizeChange" >
			<c:forEach begin="30" end="60" step="30" var="i">
				<c:choose >
					<c:when test="${rowSize == i}">
						<option value="${i }" selected="selected">${i } Movies</option>
					</c:when>
					<c:otherwise>				
						<option value="${i }">${i } Movies</option>
					</c:otherwise>
				</c:choose>	
			</c:forEach>
		</select>
		<div class="pagination2">
			<span>Page</span><span class="totalPagePrint"> ${totalPage }</span><span>
				of</span> <span>${curPage } :</span> <a href="movieGrid.do"><i
				class="ion-arrow-left-b"></i><i class="ion-arrow-left-b"></i></a>

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
							<c:forEach begin="${totalPage-4}" end="${totalPage}" var="i">
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
			<a href="movieGrid.do?page=${totalPage}&genre=${genre}&country=${country}&grade=${grade}&range=${range}&rowSize=${rowSize}"><i class="ion-arrow-right-b"></i><i
				class="ion-arrow-right-b"></i></a>
		</div>
	</div>
	
</body>

</html>
