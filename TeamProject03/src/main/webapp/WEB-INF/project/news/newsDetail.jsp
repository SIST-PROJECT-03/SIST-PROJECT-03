<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/newsDetail.css">
</head>
<body>
<!-- ============================= BLOG DETAIL TITLE AREA START  ============================== -->
<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1> 뉴스 상세보기</h1>
					<ul class="breadcumb">
						<li class="active"><a href="../main/home.do">홈</a></li>
						<li> <span class="ion-ios-arrow-right"></span> 뉴스</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ============================= BLOG DETAIL TITLE AREA END  ============================== -->

<!-- ============================= BLOG DETAIL BOTTOM AREA START  ============================== -->
<div class="page-single">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="blog-detail-ct">
					<h1>${vo.title }</h1>
					<span class="author" style="color:white;">${vo.author }</span>
					<span class="time"><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
					<div class="content">
						<br><span style="white-space: pre-wrap;">${vo.content }</span>
					</div>
					<!-- share link -->
					<div class="flex-it share-tag">
						<div class="social-link">
							<h4>공유하기</h4>
							<a href="#"><i class="ion-social-facebook"></i></a>
							<a href="#"><i class="ion-social-twitter"></i></a>
							<a href="#"><i class="ion-social-googleplus"></i></a>
							<a href="#"><i class="ion-social-pinterest"></i></a>
							<a href="#"><i class="ion-social-linkedin"></i></a>
						</div>
					</div>
					<!-- comment items -->
					
					<h4>총 ${newsReviewTotal }개의 댓글</h4>
					<c:forEach var="rvo" items="${rlist }">
						<div class="comments">
							<div class="cmt-item flex-it">
								<!-- <img src="../images/uploads/author.png" alt=""> -->
								<div class="author-infor">
									<div class="flex-it2">
										<c:forEach var="i" begin="1" end="${rvo.group_tab }">
											&nbsp;&nbsp;&nbsp;&nbsp;
										</c:forEach>
										<c:if test="${rvo.group_tab>0 }">
											<img  src="images/arrow.PNG" width="50px" height="50px"/>
										</c:if>
										<h6 style="color: white;">${rvo.email }</h6> 
										<span class="time"><fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd"/></span>
										<div class="reply">
											<c:if test="${sessionScope.email!=null&&sessionScope.email==rvo.email }">
												<h6 class="reply_btn"><span class="updateBtn" data-no="${rvo.no }">수정</span></h6> 
												<h6 class="reply_btn"><a href="newsReplyDelete.do?pno=${rvo.no }" style="font-size: 16px">삭제</a></h6>
											</c:if>
											<c:if test="${sessionScope.email!=null }">
												<h6 class="reply_btn"><span class="insertBtn" data-no="${rvo.no }">댓글</span></h6>
											</c:if>
										</div>
									</div>
									<p style="white-space: pre-wrap;">${rvo.msg }</p>
									
									<div id="r${rvo.no }" class="comment-form replyReplyInsert" style="display: none">
										<form method="post" action="newsReplyReplyInsert.do">
											<div class="row">
												<div class="col-md-10">
													<textarea name="msg" placeholder="내용" style="height: 120px; width: 800px; margin-bottom: 0px"></textarea>
													<input type="hidden" name="pno" value="${rvo.no }"/>
													<input type="hidden" name="news_no" value="${rvo.news_no }"/>
												</div>
												<div class="col-md-2">
													<input class="submit newsDetailSubmit reviewBtn" type="submit" placeholder="작성완료">
												</div>
											</div>
										</form>
									</div>
									
									<div id="u${rvo.no }" class="comment-form replyUpdate" style="display: none">
										<form method="post" action="newsReviewUpdate.do">
											<div class="row">
												<div class="col-md-10">
													<textarea name="msg" placeholder="내용" style="height: 120px; width: 800px; margin-bottom: 0px">${rvo.msg }</textarea>
													<input type="hidden" name="no" value="${rvo.no }"/>
													<input type="hidden" name="news_no" value="${rvo.news_no }"/>
												</div>
												<div class="col-md-2">
													<input class="submit newsDetailSubmit reviewBtn" type="submit" placeholder="작성완료">
												</div>
											</div>
										</form>
									</div>
								<%-- 	<tr id="m${rvo.no }" style="display:none" class="replys">
							<td>
								<form method="post" action="reply_reply_insert.do">
									<textarea rows="3" cols="120" name="msg" style="float:left"></textarea>
									<input type="hidden" name="mno" value="${mno }"/>
									<input type="hidden" name="pno" value="${rvo.no }"/>
									<button class="btn btn-sm btn-primary" style="float:left; height: 65px;">댓글쓰기</button>
								</form>
							</td>
						</tr>
						<tr id="u${rvo.no }" style="display:none" class="replys_update">
							<td>
								<form method="post" action="reply_update.do">
									<textarea rows="3" cols="120" name="msg" style="float:left">${rvo.msg }</textarea>
									<input type="hidden" name="no" value="${rvo.no }"/>
									<input type="hidden" name="mno" value="${mno }"/>
									<button class="btn btn-sm btn-primary" style="float:left; height: 65px;">수정</button>
								</form>
							</td>
						</tr> --%>
									<!-- <p><a class="rep-btn" href="#">+ Reply</a></p> -->
								</div>
							</div>
						</div>
					</c:forEach>
					<c:if test="${sessionScope.email!=null }">
						<div class="comment-form">
							<h4>댓글 작성</h4>
							<form method="post" action="newsReview.do">
								<div class="row">
									<div class="col-md-12">
										<textarea name="msg" placeholder="내용"></textarea>
									</div>
								</div>
								<input class="submit newsDetailSubmit" type="submit" placeholder="작성완료">
								<input type="hidden" name="news_no" value="${vo.news_id }"/>
							</form>
						</div>
					</c:if>
					<!-- comment form -->
				</div>
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
							<li><a href="#">Awards (50)</a></li>
							<li><a href="#">Box office (38)</a></li>
							<li><a href="#">Film reviews (72)</a></li>
							<li><a href="#">News (45)</a></li>
							<li><a href="#">Global (06)</a></li>
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
						<h4 class="sb-title">tags</h4>
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
<!-- ============================= BLOG DETAIL BOTTOM AREA END  ============================== -->
</body>
</html>