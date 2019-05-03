<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ốp lưng điện thoại giá rẻ|Xác nhận</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resources/ui/css/alertify.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/ui/css/semantic.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/ui/css/semantic.min.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<!-- menu -->
	<%@include file="menu.jsp"%>
	<!-- menu -->
	<div id="all">
		<div id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- breadcrumb-->
						<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
							<li aria-current="page" class="breadcrumb-item active">Xác
								nhận đăng ký</li>
						</ol>
						</nav>
					</div>
					<div class="container ">
						<div class="box">
							<div class="row">
								<div class="col-md-6">
									<h4>Chào mừng bạn đến với Shop Obaju.</h4>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-1"></div>
								<div class="col-md-8">
									<h4>Tài khoản của bạn đã được đăng ký. Vui lòng xác nhận
										email để kích hoạt tài khoản.</h4>
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<%@include file="footer.jsp"%>
	<!-- Return to Top|ScrollTop -->
	<a href="javascript:" id="return-to-top" title="Về đầu trang"><i
		class="icon-chevron-up"></i></a>
	<script src="<c:url value="/resources/ui/js/scrollTop.js"/>"></script>
	<script src="<c:url value="/resources/ui/js/alertify.js"/>"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>