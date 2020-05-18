<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/userProfile.css">
</head>
<body>

<!-- ========================== userFavoriteList ========================== -->

<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
				<h1>범블비 님의 프로필</h1>
					<ul class="breadcumb">
						<li class="active"><a href="../main/home.do">홈</a></li>
						<li> <span class="ion-ios-arrow-right"></span>프로필</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="page-single">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="user-information">
					<div class="user-img">
						<a href="#"><img src="../images/uploads/user-img.png" alt=""><br></a>
						<a href="#" class="redbtn">프로필 사진 변경</a>
					</div>
					<div class="user-fav">
						<!-- <p>Account Details</p> -->
						<ul>
							<li><a href="userProfile.do">프로필</a></li>
							<li class="active"><a href="userfavoriteGrid.do">컬렉션</a></li>
							<li><a href="userRate.do">평점/리뷰</a></li>
						</ul>
					</div>
					<div class="user-fav">
						<!-- <p>Others</p> -->
						<ul>
							<li><a href="#">비밀번호 변경</a></li>
							<li><a href="#">로그아웃</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="form-style-1 user-pro" action="#">
					<form action="#" class="user">
						<h4>프로필 정보</h4>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>아이디</label>
								<input type="text" placeholder="edwardkennedy">
							</div>
							<div class="col-md-6 form-it">
								<label>이메일</label>
								<input type="text" placeholder="edward@kennedy.com">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>성</label>
								<input type="text" placeholder="Edward ">
							</div>
							<div class="col-md-6 form-it">
								<label>이름</label>
								<input type="text" placeholder="Kennedy">
							</div>
						</div>
						<div class="row">
						<!-- 	<div class="col-md-6 form-it">
								<label>Country</label>
								<select>
								  <option value="united">United States</option>
								  <option value="saab">Others</option>
								</select>
							</div>
							<div class="col-md-6 form-it">
								<label>State</label>
								<select>
								  <option value="united">New York</option>
								  <option value="saab">Others</option>
								</select>
							</div> -->
						</div>
						<div class="row">
							<div class="col-md-2">
								<input class="submit" type="submit" value="저장하기">
							</div>
						</div>	
					</form>
					<form action="#" class="password">
						<h4>비밀번호 변경</h4>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>이전 비밀번호</label>
								<input type="text" placeholder="**********">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>새 비밀번호</label>
								<input type="text" placeholder="***************">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>새 비밀번호 확인</label>
								<input type="text" placeholder="*************** ">
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								<input class="submit" type="submit" value="변경완료">
							</div>
						</div>	
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>