<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:choose>
	<c:when test="${result=='NOID'}">
		<script>
			alert("아이디가 존재하지 않습니다.");
			history.back();
		</script>
	</c:when>
	<c:when test="${result=='NOPWD'}">
		<script>
			alert("비밀번호가 일치하지 않습니다.");
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		<%-- <% System.out.print("hi"); %> --%>
		<%-- <c:redirect url="main.do" /> --%>
		<script>
			location.href="main.do";
		</script>
	</c:otherwise>
</c:choose>
