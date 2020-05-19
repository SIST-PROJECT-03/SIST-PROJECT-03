<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/header.css">
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
        <form method="post" action="#">
        	<div class="row">
        		 <label for="username">
                    아이디:
                    <input type="text" name="username" id="username" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
        	</div>
           
            <div class="row">
            	<label for="password">
                    패스워드:
                    <input type="password" name="password" id="password" placeholder="******" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
            	<div class="remember">
					<div>
						<input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
					</div>
            		<a href="#">비밀번호찾기</a>
            	</div>
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
        <form method="post" action="#">
            <div class="row">
                 <label for="username-2">
                    아이디:
                    <input type="text" name="username" id="username-2" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
            </div>
           
            <div class="row">
                <label for="email-2">
                    이메일:
                    <input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
             <div class="row">
                <label for="password-2">
                    패스워드:
                    <input type="password" name="password" id="password-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
             <div class="row">
                <label for="repassword-2">
                    패스워드 재입력:
                    <input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
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
				    <a href="../main/main.do"><img class="logo" src="images/logo1.png" alt="" width="119" height="58"></a>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav flex-child-menu menu-left">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li class="dropdown first">
							<!-- <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							Home <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a> -->
							<a class="btn btn-default lv1" href="../main/main.do">홈</a>
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
									<ul class="dropdown-menu level2" style="list-style: none;">
										<li class="navLi"><a href="../movieList/movieGrid.do">액션</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">드라마</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">애니메이션</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">코미디</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">멜로/로맨스</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">공포</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">SF</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">드라마</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">가족</a></li>
										<li class="navLi"><a href="../movieList/movieGrid.do">스릴러</a></li>
									</ul>
								</li> 
								<li class="dropdown">
									<a href="../movieList/movieGrid.do">about us <i class="fa fa-caret-right" aria-hidden="true"></i></a>
									<ul class="dropdown-menu level2">
										<li><a href="../movieList/movieGrid.do">About Us 01</a></li>
										<li><a href="../movieList/movieGrid.do">About Us 02</a></li>
										<li><a href="../movieList/movieGrid.do">About Us 02</a></li>
									</ul>
								</li> 
								<li class="dropdown">
									<a href="../movieList/movieGrid.do">about us <i class="fa fa-caret-right" aria-hidden="true"></i></a>
									<ul class="dropdown-menu level2">
										<li><a href="../movieList/movieGrid.do">About Us 01</a></li>
										<li><a href="../movieList/movieGrid.do">About Us 02</a></li>
									</ul>
								</li> 
								<li class="dropdown">
									<a href="../movieList/movieGrid.do">about us <i class="fa fa-caret-right" aria-hidden="true"></i></a>
									<ul class="dropdown-menu level2">
										<li><a href="../movieList/movieGrid.do">About Us 01</a></li>
										<li><a href="../movieList/movieGrid.do">About Us 02</a></li>
									</ul>
								</li> 
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
							<a class="btn btn-default lv1" href="../celeb/celebGrid.do">
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
							<a class="btn btn-default lv1" href="../news/blogList.do">
							영화 뉴스</a>
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
								<li><a href="../myMovie/userFavoriteGrid.do">컬렉션</a></li>
								<li class="it-last"><a href="../myMovie/userRate.do">평점/리뷰</a></li>
								<li><a href="../myMovie/userProfile.do">프로필</a></li>
								
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
						<li class="loginLink"><a href="#">로그인</a></li>
						<li class="btn signupLink"><a href="#">회원가입</a></li>
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