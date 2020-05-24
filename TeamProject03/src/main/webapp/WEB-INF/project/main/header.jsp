<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- =========================== PRELOADING SECTION START ============================-->
<div id="preloader">
    <img class="logo" src="images/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!-- =========================== PRELOADING SECTION END ============================-->

<!-- =========================== LOGIN FORM START ============================-->
<div class="login-wrapper" id="login-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>Login</h3>
        <form method="post" action="login_ok.do">
        	<!-- <div class="row">
        		 <label for="username">
                     이메일
                    <input type="text" name="email" placeholder="BlockBuster@blockbuster.com" pattern="^[\S]+@([a-z]+\.)+[a-z]{2,3}$" required="required" />
                </label>
        	</div>
           
            <div class="row">
            	<label for="password">
                    패스워드
                    <input type="password" name="password" id="password" placeholder="******" />
                </label>
            </div>
           	 <div class="row">
            	<div class="remember">
					<div>
						<input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
					</div>
            		<a href="#">비밀번호찾기</a>
            	</div>
            </div> -->
            <div class="row">
            	<label class="col-sm-5">이메일</label>
          		<input type="text" name="email" placeholder="BlockBuster@blockbuster.com" required="required">
          		<%= session.getAttribute("email") %>
            </div>
            <div class="row">
            	<label class="col-sm-5">비밀번호</label>
          		<input type="password" name="pwd" placeholder="********" required="required">
            </div>
           <div class="row">
           	 <button type="submit">로그인</button>
           </div>
        </form>
        <!-- <div class="row">
        	<p>Or via social</p>
            <div class="social-btn-2">
            	<a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
            	<a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
            </div>
        </div> -->  
    </div>  
</div>
<!-- =========================== LOGIN FORM END ============================-->
<!-- =========================== SIGNUP FORM START ============================-->
<div class="login-wrapper"  id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>회원가입</h3>
        <form method="post" action="signup.do">
            <div class="row">
            <!-- pattern 은 html5이상에서 사용가능 -->
            	<label class="col-sm-5">이메일</label>
            	<!-- 공백을 제외한 모든문자허용 @ 영어소문자 . 2~3글자 허용  https://regexr.com/ 에서 연습 가능.-->
          		<input type="text" name="email" placeholder="BlockBuster@blockbuster.com" pattern="^[\S]+@([a-z]+\.)+[a-z]{2,3}$" required="required">
            </div>
            <div class="row">
            	<label class="col-sm-5">비밀번호</label>
            	<!-- 공백을 제외한 모든문자허용 8~20글자 허용  -->
          		<input type="password" name="pwd" placeholder="공백을 제외한 8자 ~ 20자 이내로 입력해주세요." pattern="^[\S]{8,20}$" required="required" >
            </div>
             <div class="row">
            	<label class="col-sm-5">닉네임</label>
            	<!-- 영어 소문자/대문자/숫자조합으로 8~20글자 허용  -->
          		<input type="text" name="nick" placeholder="소문자, 대문자 및 숫자 조합으로 3자 ~ 20자 이내로 입력해주세요." pattern="^[a-zA-Z0-9]{3,20}$" required="required" >
            </div>
            <div class="row">
            	<label class="col-sm-5">선호 장르</label>
	          	<select name="genre">
	          		<option value="가족">가족</option>
	          		<option value="공연실황">공연실황</option>
	          		<option value="공포">공포</option>
	          		<option value="느와르">느와르</option>
	          		<option value="다큐">다큐</option>
	         		<option value="드라마">드라마</option>
	          		<option value="멜로/드라마">멜로/로멘스</option>
	          		<option value="모험">모험</option>
	          		<option value="무협">무협</option>
	          		<option value="뮤지컬">뮤지컬</option>
	          		<option value="미스터리">미스터리</option>
	          		<option value="범죄">범죄</option>
	          		<option value="블랙코미디">블랙코미디</option>
	          		<option value="서부">서부</option>
	          		<option value="서사">서사</option>
	          		<option value="서스펜스">서스펜스</option>
	          		<option value="스릴러">스릴러</option>
	          		<option value="실험">실험</option>
	          		<option value="애니메이션">애니메이션</option>
	          		<option value="액션">액션</option>
	          		<option value="에로">에로</option>
	          		<option value="전쟁">전쟁</option>
	          		<option value="컬트">컬트</option>
	          		<option value="코미디">코미디</option>
	          		<option value="판타지">판타지</option>
	          		<option value="SF">SF</option>
	          	</select>
            </div>
            <div class="row">
            	<label class="col-sm-5">성별</label>
            	<div class="genders text-center">
            		<input type="radio" name="gender" id="man"><span for="man">남자</span>
	          		<input type="radio" name="gender" id="woman"><span for="woman">여자</span>
	          	</div>	
            </div>
            <div class="row">
            	<label class="col-sm-5">나이대</label>
	          	<select name="age">
	          		<option value="10대">10대</option>
	          		<option value="20대">20대</option>
	          		<option value="30대">30대</option>
	          		<option value="40대">40대</option>
	          		<option value="50대">50대</option>
	          	</select>
            </div>
            <div class="row">
            	<label class="col-sm-5">감상 포인트</label>
	          	<select name="point">
	          		<option value="연출">연출</option>
	          		<option value="연기">연기</option>
	          		<option value="스토리">스토리</option>
	          		<option value="영상미">영상미</option>
	          		<option value="OST">OST</option>
	          	</select>
            </div>
            <div class="row">
   				<label class="col-sm-5">선호제작지역</label>
	          	<select name="loc">
	          		<option value="아시아">아시아</option>
	          		<option value="오세아니아">오세아니아</option>
	          		<option value="북미주">북미주</option>
	        		<option value="중남미">중남미</option>
	        		<option value="유럽">유럽</option>
	          		<option value="중동/아프리카">중동/아프리카</option>
	          	</select>
            </div>
            <div class="row">
            	<label class="col-sm-5">선호 배우</label>
          		<input type="text" name="actor">
            </div>
	       	<div class="row">
	        	<button type="submit">회원가입</button>
	        </div>
        </form>
    </div>
</div>
<!-- =========================== SIGNUP FORM END ============================-->

<!-- =========================== HEADER SECTION START ============================-->
<header class="ht-header full-width-hd">
		<div class="row">
			<nav id="mainNav" class="navbar navbar-default navbar-custom">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header logo">
				    <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					    <span class="sr-only">Toggle navigation</span>
					    <div id="nav-icon1">
							<span></span>
							<span></span>
							<span></span>
						</div>
				    </div>
				    <a href="main.do"><img class="logo" src="images/logo1.png" alt="" width="119" height="58"></a>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav genrenavbar-nav flex-child-menu menu-left">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li class="dropdown first">
							<!-- <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							Home <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a> -->
							<a class="btn btn-default lv1" href="main.do">홈</a>
							<!-- <ul class="dropdown-menu level1">
								<li><a href="index-2.html">Home 01</a></li>
								<li><a href="homev2.html">Home 02</a></li>
								<li><a href="homev3.html">Home 03</a></li>
							</ul> -->
						</li>	
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							영화탐색<i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li class="dropdown">
									<a href="javascript:void(0)" style="cursor: default;">장르<i class="fa fa-caret-right" aria-hidden="true" onclick="false"></i></a>
									<ul class="dropdown-menu level2 hearderLevel" style="list-style: none;">
										<li class="navLi"><a href="movieGrid.do">액션</a></li>
										<li class="navLi"><a href="movieGrid.do">드라마</a></li>
										<li class="navLi"><a href="movieGrid.do">애니메이션</a></li>
										<li class="navLi"><a href="movieGrid.do">코미디</a></li>
										<li class="navLi"><a href="movieGrid.do">멜로/로맨스</a></li>
										<li class="navLi"><a href="movieGrid.do">공포</a></li>
										<li class="navLi"><a href="movieGrid.do">SF</a></li>
										<li class="navLi"><a href="movieGrid.do">드라마</a></li>
										<li class="navLi"><a href="movieGrid.do">가족</a></li>
										<li class="navLi"><a href="movieGrid.do">스릴러</a></li>
									</ul>
								</li> 
								<!-- <li class="dropdown">
									<a href="movieGrid.do">about us <i class="fa fa-caret-right" aria-hidden="true"></i></a>
									<ul class="dropdown-menu level2">
										<li><a href="movieGrid.do">About Us 01</a></li>
										<li><a href="movieGrid.do">About Us 02</a></li>
										<li><a href="movieGrid.do">About Us 02</a></li>
									</ul>
								</li> 
								<li class="dropdown">
									<a href="movieGrid.do">about us <i class="fa fa-caret-right" aria-hidden="true"></i></a>
									<ul class="dropdown-menu level2">
										<li><a href="movieGrid.do">About Us 01</a></li>
										<li><a href="movieGrid.do">About Us 02</a></li>
									</ul>
								</li> 
								<li class="dropdown">
									<a href="movieGrid.do">about us <i class="fa fa-caret-right" aria-hidden="true"></i></a>
									<ul class="dropdown-menu level2">
										<li><a href="movieGrid.do">About Us 01</a></li>
										<li><a href="movieGrid.do">About Us 02</a></li>
									</ul>
								</li>  -->
								<!-- <li><a href="../movieList/movieList.do">Movie list</a></li>
								<li><a href="../movieList/movieList.do">Movie list</a></li>
								<li><a href="../movieList/movieList.do">Movie list</a></li> -->
							<!-- 	<li><a href="moviegridfw.html">movie grid full width</a></li>  -->
								
							<!-- 	<li class="it-last"><a href="moviesingle.html">Movie single</a></li>  -->
							</ul>
						</li>
						<li class="dropdown first">
							<!-- <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							Home <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a> -->
							<a class="btn btn-default lv1" href="celebGrid.do">
							영화인</a>
							<!-- <ul class="dropdown-menu level1">
								<li><a href="index-2.html">Home 01</a></li>
								<li><a href="homev2.html">Home 02</a></li>
								<li><a href="homev3.html">Home 03</a></li>
							</ul> -->
						</li>	
						
						<li class="dropdown first">
							<!-- <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							Home <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a> -->
							<a class="btn btn-default lv1" href="newsList.do">영화 뉴스</a>
						<!-- <ul class="dropdown-menu level1">
								<li><a href="index-2.html">Home 01</a></li>
								<li><a href="homev2.html">Home 02</a></li>
								<li><a href="homev3.html">Home 03</a></li>
							</ul> -->
						</li>	
						
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							나의 영화<i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li><a href="userProfile.do">프로필</a></li>
								<li><a href="userFavoriteGrid.do">컬렉션</a></li>
								<li class="it-last"><a href="userRate.do">평점/리뷰</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav navbar-nav flex-child-menu menu-right">
						<!--  <li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							pages <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li><a href="landing.html">Landing</a></li>
								<li><a href="404.html">404 Page</a></li>
								<li class="it-last"><a href="comingsoon.html">Coming soon</a></li>
							</ul>
						</li>                
						<li><a href="#">Help</a></li> --> 
						<li class="loginLink"><a href="signin">로그인</a></li>
						<li class="btn signupLink"><a href="signup">회원가입</a></li>
					</ul>
				</div>
			<!-- /.navbar-collapse -->
	    </nav>
	    <!-- search form -->
	    <div class="top-search">
	    	<select>
				<option value="saab">영화 제목</option>
				<option value="saab">뉴스</option>
				<option value="saab">영화인</option>
				<option value="saab">장르</option>
			</select>
			<input type="text" placeholder="제목, 배우, 감독으로 검색">
	    </div>
		</div>	
</header>
<!-- =========================== HEADER SECTION END ============================-->
</body>
</html>