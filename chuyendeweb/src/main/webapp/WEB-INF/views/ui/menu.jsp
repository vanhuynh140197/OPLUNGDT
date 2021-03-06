<%@page import="com.oplungdienthoai.model.UsersEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href='<c:url value="/resources/ui/vendor/bootstrap/css/bootstrap.min.css"/>'>
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href='<c:url value="/resources/ui/vendor/font-awesome/css/font-awesome.min.css"/>'>
<!-- Google fonts - Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
<!-- owl carousel-->
<link rel="stylesheet"
	href='<c:url value="/resources/ui/vendor/owl.carousel/assets/owl.carousel.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/ui/vendor/owl.carousel/assets/owl.theme.default.css"/>'>
<!-- theme stylesheet-->
<link rel="stylesheet"
	href='<c:url value="/resources/ui/css/style.default.css"/>'
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet"
	href='<c:url value="/resources/ui/css/custom.css"/>'>
<!-- Favicon-->
<link rel="shortcut icon"
	href='<c:url value="/resources/ui/img/favicon.png"/>'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
</head>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#inputsearch')
								.on(
										'keyup',
										function(e) {
											e.preventDefault();
											if ($('#inputsearch').val() === "") {
												window.location.reload();
											} else {
												$
														.ajax({
															type : 'POST',
															url : '<c:url value="/oplungdienthoai/search/ajax"/>',
															dataType : 'json',
															data : {
																inputsearch : $(
																		'#inputsearch')
																		.val()
																		.trim()
															},
															success : function(
																	data) {
																if (data.length != 0) {
																	$(
																			'#viewproduct')
																			.empty();
																	$
																			.each(
																					data,
																					function(
																							index,
																							item) {
																						$(
																								'#viewproduct')
																								.append(
																										"<div class='col-lg-4 col-md-6'>"
																												+ "<div class='product'>"
																												+ "<div class='flip-container'>"
																												+ "<div class='flipper'>"
																												+ "<div class='front'>"
																												+ "<a href='<c:url value='/oplungdienthoai/chitiet/"
																												+ item.productsId
																														.trim()
																												+ "'/>'>"
																												+ "<img src='<c:url value='/"+item.productsImages1+"'/>' alt='' class='img-fluid'></a>"
																												+ "</div>"
																												+ "<div class='back'>"
																												+ "<a href='<c:url value='/oplungdienthoai/chitiet/"
																												+ item.productsId
																														.trim()
																												+ "'/>'> <img src='<c:url value='/"
																										+item.productsImages2
																										+"'/>' alt='' class='img-fluid'></a>"
																												+ "</div>"
																												+ "</div>"
																												+ "</div>"
																												+ "<a href='<c:url value='/oplungdienthoai/chitiet/"
																												+ item.productsId
																														.trim()
																												+ "'/>' class='invisible'>"
																												+ "<img src='<c:url value='/"
																										+item.productsImages1
																										+"'/>' alt='' class='img-fluid'></a>"
																												+ "<div class='text'>"
																												+ "<h3>"
																												+ item.productsName
																												+ "</h3>"
																												+ "<p class='price'>"
																												+ "<del></del>"
																												+ "<i class='fas fa-caret-right'></i> Giá bán: <strong style='color: red;'>"
																												+ numeral(
																														item.prices)
																														.format(
																																'0,0')
																												+ " đ</strong>"
																												+ "</p>"
																												+ "<br>"
																												+ "<p class='buttons'>"
																												+ "<a href='<c:url value='/oplungdienthoai/chitiet/"
																												+ item.productsId
																														.trim()
																												+ "'/>' class='btn btn-outline-secondary'>Chi tiết</a>"
																												+ "<a href='<c:url value='/oplungdienthoai/giohang/"
																												+ item.productsId
																														.trim()
																												+ "'/>' class='btn btn-primary5'><i class='fa fa-shopping-cart'></i>Đặt hàng nhanh</a>"
																												+ "</p>"
																												+ "</div>"
																												+ "<div class='ribbon sale'>"
																												+ "<div class='theribbon'>SALE</div>"
																												+ "<div class='ribbon-background'></div>"
																												+ "</div>"
																												+ "<div class='ribbon new'>"
																												+ "<div class='theribbon'>NEW</div>"
																												+ "<div class='ribbon-background'></div>"
																												+ "</div>"
																												+ "</div>"
																												+ "</div>")
																					});
																} else {
																	$(
																			'#viewproduct')
																			.empty()
																			.append(
																					"<div class='col-lg-12 col-md-12'><h5>Sản phẩm bạn tìm hiện tại chưa có</h5></div>");
																}
															},
															error : function(
																	error) {
																console
																		.log("error"
																				+ error);
															}
														});
											}
										});
					});
</script>
<body>
	<!-- navbar-->
	<header class="header mb-5"> <!--
      *** TOPBAR ***
      _________________________________________________________
      -->
	<div id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offer mb-3 mb-lg-0">
					<a class="ml-1"><i class="fas fa-bell"></i> HOTLINE: +1900 63
						22 46 </a>
				</div>
				<div class="col-lg-6 text-center text-lg-right">
					<ul class="menu list-inline mb-0">
						<li class="list-inline-item"><a href="#"><i
								class="fas fa-map-marker-alt"></i> Địa chỉ cửa hàng</a></li>
						<li class="list-inline-item"><a href="#"><i
								class="fas fa-phone-volume"></i> Chăm sóc khách hàng</a></li>
						<security:authorize access="!isAuthenticated()">
							<li class="list-inline-item"><a
								href='<c:url value="/oplungdienthoai/dangky"/>'><i
									class="fas fa-user-edit"></i> Đăng ký</a></li>
							<li class="list-inline-item"><a
								href='<c:url value="/oplungdienthoai/dangnhap"/>'> <i
									class="fas fa-user-tag"></i> Đăng nhập
							</a></li>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
							<security:authentication property="principal" var="user" />
							<li class="list-inline-item" class="dropdown"><a href="#"
								id="dropdownMenuButton" data-toggle="dropdown"><i
									class="fab fa-angellist"></i> Xin chào,<strong
									style="color: red;">${user.username}</strong> <i
									class="fas fa-caret-down"></i></a>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<security:authorize access="hasRole('ROLE_1')">
										<a class="dropdown-item" target="_blank"
											href='<c:url value="/admin/oplungdienthoai"/>'> <i
											class="fas fa-angle-right"></i> Quản lý admin
										</a>
									</security:authorize>
									<a class="dropdown-item" href="#"><i
										class="fas fa-angle-right"></i> Thông tin tài khoản </a> <a
										class="dropdown-item"
										href="<%=application.getContextPath()%>/oplungdienthoai/doimatkhau/${user.username}"><i
										class="fas fa-angle-right"></i> Đổi mật khẩu</a> <a
										class="dropdown-item"
										href='<c:url value="/oplungdienthoai/logout"/>'><i
										class="fas fa-angle-right"></i> Đăng xuất</a>
								</div></li>
						</security:authorize>
					</ul>
				</div>
			</div>
		</div>
		<!-- *** TOP BAR END ***-->
	</div>
	<nav class="navbar navbar-expand-lg">
	<div class="container">
		<a href='<c:url value="/oplungdienthoai/home"/>'
			class="navbar-brand home"><img
			src='<c:url value="/resources/ui/img/logo.png"/>' alt="Obaju logo"
			class="d-none d-md-inline-block"><img
			src='<c:url value="/resources/ui/img/logo-small.png"/>'
			alt="Obaju logo" class="d-inline-block d-md-none"><span
			class="sr-only">Obaju - go to homepage</span></a>
		<div class="navbar-buttons">
			<button type="button" data-toggle="collapse"
				data-target="#navigation"
				class="btn btn-outline-secondary navbar-toggler">
				<span class="sr-only">Toggle navigation</span><i
					class="fa fa-align-justify"></i>
			</button>
			<button type="button" data-toggle="collapse" data-target="#search"
				class="btn btn-outline-secondary navbar-toggler">
				<span class="sr-only">Toggle search</span><i class="fa fa-search"></i>
			</button>
			<a href="basket.html"
				class="btn btn-outline-secondary navbar-toggler"><i
				class="fa fa-shopping-cart"></i></a>
		</div>
		<div id="navigation" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<!-- <li class="nav-item"><a href="#" class="nav-link active">Home</a></li> -->
				<li class="nav-item dropdown menu-large"><a href="#"
					data-toggle="dropdown" data-hover="dropdown" data-delay="200"
					class="dropdown-toggle nav-link">Phụ kiện Apple<b class="caret"></b></a>
					<ul class="dropdown-menu megamenu">
						<li>
							<div class="row">
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Iphone
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a
											href='<c:url value="/oplungdienthoai/sanpham"/>'
											class="nav-link">Iphone XS Max</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												XS/X</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												XR</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												X</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												8 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												8</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												7 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												7</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												6/6S Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												6/6S</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												5C</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Iphone
												5/5S</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện iPad
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">iPad
												Pro 12.9 inch (2018)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												Pro 11 inch</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												9.7 (2018)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												Pro 12.9 2017</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												9.7 (2017)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												Pro 10.5 inch</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												Pro 12.9 inch 2015</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												Pro 9.7 inch</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												Mini 4</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												Mini 1/2/3</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Macbook
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Macbook
												Air 13 inch (2018)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">
												Macbook Pro 15 inch <br> Touch Bar 2016/2017/2018
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Macbook
												Pro 13 inch <br>Touch Bar 2016/2017/2018
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Macbook
												Retina 12 inch</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Macbook
												Air 13.3 inch</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Macbook
												Air 11.6 inch</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Macbook
												Pro Retina 15.4 inch</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Macbook
												Pro Retina 13.3 inch</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Macbook
												Pro 15.4 inch <br>With CD ROM
										</a></li>
										<li class="nav-item"><a href="#" class="nav-link">iPad
												2/3/4</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Apple Watch
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Apple
												Watch Series 1</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Apple
												Watch Series 2</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Apple
												Watch Series 3</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Apple
												Watch Series 4</a></li>
									</ul>
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Air Pods
									</h5>
								</div>
							</div>
						</li>
					</ul></li>
				<li class="nav-item dropdown menu-large"><a href="#"
					data-toggle="dropdown" data-hover="dropdown" data-delay="200"
					class="dropdown-toggle nav-link">Phụ kiện Samsung<b
						class="caret"></b></a>
					<ul class="dropdown-menu megamenu">
						<li>
							<div class="row">
								<div class="col-md-6 col-lg-4">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Galaxy 2019
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a
											href='<c:url value="/oplungdienthoai/sanpham"/>'
											class="nav-link">Galaxy S10 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy S10</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy S10E</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy M20</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy M10</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy M30</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A50</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A30</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A10</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-4">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Galaxy 2018
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J4 Core</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J2 Core</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A9s</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A8s</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A6s</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A9 (2018)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A7 (2018)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J6 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J4 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy Note 9</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J8 (2018)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J4</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A6 Plus (2018)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J3 Pro (2018)</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-4">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Galaxy 2017
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy C10</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy Note 8</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy Note FE</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J7 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J7 Pro</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy S8 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy S8</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J7 2017</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J5 2017</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy A7 2017</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J7 Prime</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J5 Prime</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J2 Prime</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J3 Pro</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Samsung
												Galaxy J2 Pro</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul></li>
				<li class="nav-item dropdown menu-large"><a href="#"
					data-toggle="dropdown" data-hover="dropdown" data-delay="200"
					class="dropdown-toggle nav-link">Phụ kiện Sonny<b class="caret"></b></a>
					<ul class="dropdown-menu megamenu">
						<li>
							<div class="row">
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2019
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Phụ
												Kiện Sony Xperia 1</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2018
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZ3</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZ2 Premium</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XA2 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZ2</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZ2 Compact</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XA2</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XA2 Ultra</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia L2</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2017
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZ1</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XA1 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZ1 Compact</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia X1</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZ Premium</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZs</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XA1</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XA1 Ultra</a></li>

									</ul>
								</div>
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2016
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XZ</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XA Ultra</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia XA</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia X</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia X Performance</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia E5</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia Z5 Mini</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2015
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia Z5 Premium</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia Z5</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia Z5 Mini</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia C5 Ultra</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia Z3+/Z4</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia Z4 Mini</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Sony
												Xperia C4</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul></li>
				<li class="nav-item dropdown menu-large"><a href="#"
					data-toggle="dropdown" data-hover="dropdown" data-delay="200"
					class="dropdown-toggle nav-link">Phụ kiện HTC<b class="caret"></b></a>
					<ul class="dropdown-menu megamenu">
						<li>
							<div class="row">
								<div class="col-md-6 col-lg-4">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> HTC 2018
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">HTC
												Desire 12 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">HTC
												Desire 12</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-4">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> HTC 2017
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">HTC
												U11 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">HTC
												U11</a></li>
										<li class="nav-item"><a href="#" class="nav-link">HTC
												10 Evo</a></li>
										<li class="nav-item"><a href="#" class="nav-link">HTC
												U Play</a></li>
										<li class="nav-item"><a href="#" class="nav-link">HTC
												U Ultra</a></li>
										<li class="nav-item"><a href="#" class="nav-link">HTC
												Ocean</a></li>
										<li class="nav-item"><a href="#" class="nav-link">HTC
												Ocean Note</a></li>
										<li class="nav-item"><a href="#" class="nav-link">HTC
												10 Pro</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul></li>
				<li class="nav-item dropdown menu-large"><a href="#"
					data-toggle="dropdown" data-hover="dropdown" data-delay="200"
					class="dropdown-toggle nav-link">Phụ kiện LG<b class="caret"></b></a>
					<ul class="dropdown-menu megamenu">
						<li>
							<div class="row">
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> LG 2018
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">LG
												G7 ThinQ</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> LG 2017
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">LG
												X Power 2</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												V30</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												K10 2017</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												G6</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> LG 2016
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">LG
												K7</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												K10</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												V20</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												X Power</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> LG 2015
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">LG
												G5</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												V10</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												Magna</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												G4</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												G4 Stylus G Stylo</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												Nexus 5X</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												G3</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												G3 Beat</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												G3 Stylus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												L Fino</a></li>
										<li class="nav-item"><a href="#" class="nav-link">LG
												G Flex 2</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul></li>
				<li class="nav-item dropdown menu-large"><a href="#"
					data-toggle="dropdown" data-hover="dropdown" data-delay="200"
					class="dropdown-toggle nav-link">Phụ kiện ốp lưng hãng khác<b
						class="caret"></b></a>
					<ul class="dropdown-menu megamenu">
						<li>
							<div class="row">
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện OPPO
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												R17 Pro</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												A3s</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												F9</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												Find X</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												F7</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												A83</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												F5 Youth</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												F5</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												A71</a></li>
										<li class="nav-item"><a href="#" class="nav-link">OPPO
												F3</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Xiaomi
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Redmi Note 7</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Mi Play</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Mi Mix 3</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Redmi Note 6 Pro</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Mi 8 Pro</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Mi 8 Lite</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Mi 8 Explorer</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Mi A2 Lite</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Mi 8</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Xiaomi
												Mi 8 SE</a></li>

									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Huawei
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Y7 Pro 2019</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Mate 20 Pro</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Mate 20</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Y9 (2019)</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Nova 3i</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Nova 3</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												P20 Pro</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Nova 3e</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Y7 Pro 2018</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Y7 Prime 2018</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Honor
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor 10</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor View10</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor 9 Lite</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor 7X</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor 8X</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor 7</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor 6 Plus</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor 4X</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Huawei
												Honor 4C</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Vivo
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="#" class="nav-link">Vivo
												V9</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Vivo
												V3</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Vivo
												Y51</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Vivo
												Y31</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Vivo
												V1</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Vivo
												V1 Max</a></li>
										<li class="nav-item"><a href="#" class="nav-link">Vivo
												V3 Max</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul></li>
			</ul>
			<div class="navbar-buttons d-flex justify-content-end">
				<!-- /.nav-collapse-->
				<div id="search-not-mobile" class="navbar-collapse collapse"></div>
				<a data-toggle="collapse" href="#search"
					class="btn navbar-btn btn-primary5 d-none d-lg-inline-block"><span
					class="sr-only">Toggle search</span><i class="fa fa-search"></i></a>
				<div id="basket-overview"
					class="navbar-collapse collapse d-none d-lg-block">
					<a href='<c:url value="/oplungdienthoai/giohangcuaban"/>'
						class="btn btn-primary5 navbar-btn"><i
						class="fa fa-shopping-cart"></i></a>
				</div>
			</div>
		</div>
	</div>
	</nav>
	<div id="search" class="collapse">
		<div class="container">
			<form role="search" class="ml-auto" action="">
				<div class="input-group">
					<input type="text" id="inputsearch" name="inputsearch"
						placeholder="Tìm kiếm" class="form-control">
					<div class="input-group-append">
						<button type="button" class="btn btn-primary5">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	</header>
	<!-- JavaScript files-->
	<script
		src='<c:url value="/resources/ui/vendor/jquery/jquery.min.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/ui/vendor/bootstrap/js/bootstrap.bundle.min.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/ui/vendor/jquery.cookie/jquery.cookie.js"/>'
		type="text/javascript">
		
	</script>
	<script
		src='<c:url value="/resources/ui/vendor/owl.carousel/owl.carousel.min.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/ui/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"/>'
		type="text/javascript"></script>
	<script src='<c:url value="/resources/ui/js/front.js"/>'
		type="text/javascript"></script>
</body>
</html>