<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/movieGrid.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/react/0.14.0/react.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/react/0.14.0/react-dom.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.23/browser.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
	<div className="container" id="root"></div>
	<script type="text/babel">
	class App extends React.Component{
	
		constructor(props){
			super(props); 
			this.state={
				movie:[],
				curpage:1,
				totalpage:0,
				rowsize:30
			}	
		}

		render(){
			return(
				<div classNameName="row">
					<div className="hero common-hero">
						<div className="container">
							<div className="row">
								<div className="col-md-12">
									<div className="hero-ct">
										<h1>인기 액션 영화 Top 30</h1>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div className="page-single">
						<div className="container">
							<div className="row ipad-width">	
								<div className="topbar-filter">
									<p className="pad-change celebPad"> '<span>해리포터</span>'에 대한 <span>50</span>건의 검색 결과</p>
									<select className="selectChange">
										<option value="ranking" >추천순</option>
										<option value="rating">평점순</option>
										<option value="date">최신순</option>
									</select>
									<a href="movieList.do" className="list"><i className="ion-ios-list-outline "></i></a>
									<a href="movieGrid.do" className="grid"><i className="ion-grid active"></i></a>
								</div>
								<div className="topbar-filter">
									<p className="pad-change celebPad">상세 선택</p>
									<select className="a">
										<option value="ranking">장르</option>
										<option value="rating">공포</option>
										<option value="date">스릴</option>
									</select>		
									<select className="b">
										<option value="ranking">국가</option>
										<option value="rating">한국</option>
										<option value="date">미국</option>				
									</select>
									<select className="b">
										<option value="ranking">관람등급</option>	
										<option value="rating">한국</option>
										<option value="date">미국</option>				
									</select>
								</div>
								<div className="flex-wrap-movielist">
									<c:forEach items="${list}" var="vo">
										<div className="movie-item-style-2 movie-item-style-1">
											<img src="${vo.poster }" alt=""/>
											<div className="hvr-inner">
            									<a  href="seriesSingle.do"> Read more <i className="ion-android-arrow-dropright"></i> </a>
            								</div>
											<div className="mv-item-infor">
												<h6><a href="seriesSingle.do">${vo.title}</a></h6>
											</div>
										</div>	
									</c:forEach>				
								</div>		
								<div className="topbar-filter">
									<label>Movies per page:</label>
									<select>
										<option value="range">20 Movies</option>
										<option value="saab">10 Movies</option>
									</select>
									<div className="pagination2">
										<span>Page ${totalPage } of ${curPage } :</span>
										<a href="#"><i className="ion-arrow-left-b"></i><i className="ion-arrow-left-b"></i></a>
										
										<c:choose>
											<c:when  test="${curPage >= totalPage-2 }" >
												<c:forEach begin="${totalPage-4}" end="${totalPage}" var="i">
													<c:if test="${i !=curPage }">
														<a href="movieGrid?page=${i}">${i }</a>
													</c:if>
													<c:if test="${i == curPage }">
														<a className="active" href="movieGrid?page=${i}">${i }</a>
													</c:if>
												</c:forEach>	
											</c:when>
											
											<c:when test="${curPage > 2 }">
												<c:forEach begin="${curPage-2}" end="${curPage+2}" var="i">
													<c:if test="${i !=curPage }">
														<a href="movieGrid.do?page=${i}">${i }</a>
													</c:if>
													<c:if test="${i == curPage }">
														<a className="active" href="movieGrid.do?page=${i}">${i }</a>
													</c:if>
												</c:forEach>	
											</c:when>
											<c:otherwise>			
												<c:forEach begin="1" end="5" var="i">
													<c:if test="${i !=curPage }">
														<a href="movieGrid.do?page=${i}">${i }</a>
													</c:if>
													<c:if test="${i == curPage }">
														<a className="active" href="movieGrid.do?page=${i}">${i }</a>
													</c:if>
												</c:forEach>
											</c:otherwise>
										</c:choose>
										<a href="#"><i className="ion-arrow-right-b"></i><i className="ion-arrow-right-b"></i></a>
									</div>
								</div>
							</div>
							<div className="col-md-4 col-sm-12 col-xs-12">
								<div className="sidebar">
									<div className="ads">
										<img src="images/uploads/ads1.png" alt=""/>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			)	
		}
	}
	ReactDOM.render(<App/>,document.getElementById('root'));
	</script>



</body>
</html>