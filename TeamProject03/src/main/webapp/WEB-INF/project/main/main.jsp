<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Basic need -->
	<title>Open Pediatrics</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
	<!-- Mobile specific meta -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone-no">
	
	<!-- CSS files -->
	<link rel="stylesheet" href="css/plugins.css">
	<link rel="stylesheet" href="css/style.css">

</head>
<body>

<!--preloading-->
<!--TeamProject03/src/main/java/com/sist/spring/MainController.java  -->
<!--end of preloading-->

<!-- BEGIN | Header -->
<!--login form popup-->
<!--end of login form popup-->
<!--signup form popup-->
<!--end of signup form popup-->
<tiles:insertAttribute name="header" />
<!-- END | Header -->

<!--begin of latest new v2 section-->
<tiles:insertAttribute name="home" />
<!--end of latest new v2 section-->

<!-- footer section-->
<tiles:insertAttribute name="footer" />
<!-- end of footer section-->

<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
<script src="js/ajax.js"></script>
<script src="js/detailPrint.js"></script>
</body>
</html>