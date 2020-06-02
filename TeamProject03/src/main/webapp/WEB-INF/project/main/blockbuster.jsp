<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/blockbuster.css">
</head>
<body>
<c:if test="${empty sessionScope.email}">
 <div class="movie-items  full-width">
  <div class="container" style="width:100%; height:528px;text-align:center;">
	<h1 style="font-size: 56px;color: #ffffff; margin-top:150px;!important"> 지금 블록버스터의 회원이 되어 <br/>더욱 다양한 영화를 추천 받으세요</h1>
	<ul class="nav navbar-nav flex-child-menu menu-right" id="sign">
		<li class="btn signupLink" style="margin: 50px 470px auto;">
			<a href="signup">회원가입</a>
			<a href="signin">로그인</a>
		</li>
	</ul>
  </div>
 </div>
</c:if>
</body>
</html>