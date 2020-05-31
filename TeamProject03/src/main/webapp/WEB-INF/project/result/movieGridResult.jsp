<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>