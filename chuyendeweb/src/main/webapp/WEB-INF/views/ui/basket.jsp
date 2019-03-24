<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Obaju |Giỏ hàng</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="<c:url value="/resources/ui/vendor/bootstrap/css/bootstrap.min.css"/>">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="<c:url value="/resources/ui/vendor/font-awesome/css/font-awesome.min.css"/>">
<!-- Google fonts - Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
<!-- owl carousel-->
<link rel="stylesheet"
	href="<c:url value="/resources/ui/vendor/owl.carousel/assets/owl.carousel.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/ui/vendor/owl.carousel/assets/owl.theme.default.css"/>">
<!-- theme stylesheet-->
<link rel="stylesheet"
	href="<c:url value="/resources/ui/css/style.default.css"/>"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet"
	href="<c:url value="/resources/ui/css/custom.css"/>">
<!-- Favicon-->
<link rel="shortcut icon"
	href="<c:url value="/resources/ui/img/favicon.png"/>">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
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
						<li class="list-inline-item"><a href="register.html"><i
								class="fas fa-user-edit"></i> Đăng ký</a></li>
						<li class="list-inline-item"><a href="#" data-toggle="modal"
							data-target="#login-modal"><i class="fas fa-user-tag"></i>
								Đăng nhập</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="Login" aria-hidden="true" class="modal fade">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Customer login</h5>
						<button type="button" data-dismiss="modal" aria-label="Close"
							class="close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="customer-orders.html" method="post">
							<div class="form-group">
								<input id="email-modal" type="text" placeholder="email"
									class="form-control">
							</div>
							<div class="form-group">
								<input id="password-modal" type="password"
									placeholder="password" class="form-control">
							</div>
							<p class="text-center">
								<button class="btn btn-primary">
									<i class="fa fa-sign-in"></i> Log in
								</button>
							</p>
						</form>
						<p class="text-center text-muted">Not registered yet?</p>
						<p class="text-center text-muted">
							<a href="register.html"><strong>Register now</strong></a>! It is
							easy and done in 1 minute and gives you access to special
							discounts and much more!
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- *** TOP BAR END ***-->


	</div>
	<nav class="navbar navbar-expand-lg">
	<div class="container">
		<a href="index.html" class="navbar-brand home"><img
			src="<c:url value="/resources/ui/img/logo.png"/>" alt="Obaju logo"
			class="d-none d-md-inline-block"><img
			src="<c:url value="/resources/ui/img/logo-small.png"/>"
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
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone XS Max</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone XS/X</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone XR</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone X</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone 8 Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone 8</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone 7 Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone 7</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone 6/6S Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone 6/6S</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone 5C</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Iphone 5/5S</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện iPad
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad Pro 12.9 inch (2018)</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad Pro 11 inch</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad 9.7 (2018)</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad Pro 12.9 2017</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad 9.7 (2017)</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad Pro 10.5 inch</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad Pro 12.9 inch 2015</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad Pro 9.7 inch</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad Mini 4</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad Mini 1/2/3</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Macbook
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="category.html"
											class="nav-link">Macbook Air 13 inch (2018)</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link"> Macbook Pro 15 inch <br> Touch Bar
												2016/2017/2018
										</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Macbook Pro 13 inch <br>Touch Bar
												2016/2017/2018
										</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Macbook Retina 12 inch</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Macbook Air 13.3 inch</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Macbook Air 11.6 inch</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Macbook Pro Retina 15.4 inch</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Macbook Pro Retina 13.3 inch</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Macbook Pro 15.4 inch <br>With CD
												ROM
										</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">iPad 2/3/4</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Apple Watch
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="category.html"
											class="nav-link">Apple Watch Series 1</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Apple Watch Series 2</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Apple Watch Series 3</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Apple Watch Series 4</a></li>
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
										<li class="nav-item"><a href="category.html"
											class="nav-link">Galaxy S10 Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy S10</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy S10E</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy M20</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy M10</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy M30</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A50</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A30</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A10</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-4">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Galaxy 2018
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J4 Core</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J2 Core</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A9s</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A8s</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A6s</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A9 (2018)</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A7 (2018)</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J6 Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J4 Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy Note 9</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J8 (2018)</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J4</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A6 Plus (2018)</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J3 Pro (2018)</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-4">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Galaxy 2017
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy C10</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy Note 8</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy Note FE</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J7 Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J7 Pro</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy S8 Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy S8</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J7 2017</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J5 2017</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy A7 2017</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J7 Prime</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J5 Prime</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J2 Prime</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J3 Pro</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">Samsung Galaxy J2 Pro</a></li>
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
										<li class="nav-item"><a href="index.html"
											class="nav-link">Phụ Kiện Sony Xperia 1</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2018
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="register.html"
											class="nav-link">Sony Xperia XZ3</a></li>
										<li class="nav-item"><a href="customer-orders.html"
											class="nav-link">Sony Xperia XZ2 Premium</a></li>
										<li class="nav-item"><a href="customer-order.html"
											class="nav-link">Sony Xperia XA2 Plus</a></li>
										<li class="nav-item"><a href="customer-wishlist.html"
											class="nav-link">Sony Xperia XZ2</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">Sony Xperia XZ2 Compact</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">Sony Xperia XA2</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">Sony Xperia XA2 Ultra</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">Sony Xperia L2</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2017
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="basket.html"
											class="nav-link">Sony Xperia XZ1</a></li>
										<li class="nav-item"><a href="checkout1.html"
											class="nav-link">Sony Xperia XA1 Plus</a></li>
										<li class="nav-item"><a href="checkout2.html"
											class="nav-link">Sony Xperia XZ1 Compact</a></li>
										<li class="nav-item"><a href="checkout3.html"
											class="nav-link">Sony Xperia X1</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia XZ Premium</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia XZs</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia XA1</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia XA1 Ultra</a></li>

									</ul>
								</div>
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2016
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia XZ</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia XA Ultra</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia XA</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia X</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia X Performance</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia E5</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia Z5 Mini</a></li>
									</ul>
								</div>
								<div class="col-md-3 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Xperia 2015
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia Z5 Premium</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia Z5</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia Z5 Mini</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia C5 Ultra</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia Z3+/Z4</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia Z4 Mini</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Sony Xperia C4</a></li>
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
										<li class="nav-item"><a href="index.html"
											class="nav-link">HTC Desire 12 Plus</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">HTC Desire 12</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-4">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> HTC 2017
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="register.html"
											class="nav-link">HTC U11 Plus</a></li>
										<li class="nav-item"><a href="customer-orders.html"
											class="nav-link">HTC U11</a></li>
										<li class="nav-item"><a href="customer-order.html"
											class="nav-link">HTC 10 Evo</a></li>
										<li class="nav-item"><a href="customer-wishlist.html"
											class="nav-link">HTC U Play</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">HTC U Ultra</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">HTC Ocean</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">HTC Ocean Note</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">HTC 10 Pro</a></li>
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
										<li class="nav-item"><a href="index.html"
											class="nav-link">LG G7 ThinQ</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> LG 2017
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="register.html"
											class="nav-link">LG X Power 2</a></li>
										<li class="nav-item"><a href="customer-orders.html"
											class="nav-link">LG V30</a></li>
										<li class="nav-item"><a href="customer-order.html"
											class="nav-link">LG K10 2017</a></li>
										<li class="nav-item"><a href="customer-wishlist.html"
											class="nav-link">LG G6</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> LG 2016
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="basket.html"
											class="nav-link">LG K7</a></li>
										<li class="nav-item"><a href="checkout1.html"
											class="nav-link">LG K10</a></li>
										<li class="nav-item"><a href="checkout2.html"
											class="nav-link">LG V20</a></li>
										<li class="nav-item"><a href="checkout3.html"
											class="nav-link">LG X Power</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> LG 2015
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="blog.html" class="nav-link">LG
												G5</a></li>
										<li class="nav-item"><a href="post.html" class="nav-link">LG
												V10</a></li>
										<li class="nav-item"><a href="faq.html" class="nav-link">LG
												Magna</a></li>
										<li class="nav-item"><a href="text.html" class="nav-link">LG
												G4</a></li>
										<li class="nav-item"><a href="text-right.html"
											class="nav-link">LG G4 Stylus G Stylo</a></li>
										<li class="nav-item"><a href="404.html" class="nav-link">LG
												Nexus 5X</a></li>
										<li class="nav-item"><a href="contact.html"
											class="nav-link">LG G3</a></li>
										<li class="nav-item"><a href="contact.html"
											class="nav-link">LG G3 Beat</a></li>
										<li class="nav-item"><a href="contact.html"
											class="nav-link">LG G3 Stylus</a></li>
										<li class="nav-item"><a href="contact.html"
											class="nav-link">LG L Fino</a></li>
										<li class="nav-item"><a href="contact.html"
											class="nav-link">LG G Flex 2</a></li>
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
										<li class="nav-item"><a href="index.html"
											class="nav-link">OPPO R17 Pro</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">OPPO A3s</a></li>
										<li class="nav-item"><a href="category-right.html"
											class="nav-link">OPPO F9</a></li>
										<li class="nav-item"><a href="category-full.html"
											class="nav-link">OPPO Find X</a></li>
										<li class="nav-item"><a href="detail.html"
											class="nav-link">OPPO F7</a></li>
										<li class="nav-item"><a href="index.html"
											class="nav-link">OPPO A83</a></li>
										<li class="nav-item"><a href="category.html"
											class="nav-link">OPPO F5 Youth</a></li>
										<li class="nav-item"><a href="category-right.html"
											class="nav-link">OPPO F5</a></li>
										<li class="nav-item"><a href="category-full.html"
											class="nav-link">OPPO A71</a></li>
										<li class="nav-item"><a href="detail.html"
											class="nav-link">OPPO F3</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Xiaomi
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="register.html"
											class="nav-link">Xiaomi Redmi Note 7</a></li>
										<li class="nav-item"><a href="customer-orders.html"
											class="nav-link">Xiaomi Mi Play</a></li>
										<li class="nav-item"><a href="customer-order.html"
											class="nav-link">Xiaomi Mi Mix 3</a></li>
										<li class="nav-item"><a href="customer-wishlist.html"
											class="nav-link">Xiaomi Redmi Note 6 Pro</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">Xiaomi Mi 8 Pro</a></li>
										<li class="nav-item"><a href="register.html"
											class="nav-link">Xiaomi Mi 8 Lite</a></li>
										<li class="nav-item"><a href="customer-orders.html"
											class="nav-link">Xiaomi Mi 8 Explorer</a></li>
										<li class="nav-item"><a href="customer-order.html"
											class="nav-link">Xiaomi Mi A2 Lite</a></li>
										<li class="nav-item"><a href="customer-wishlist.html"
											class="nav-link">Xiaomi Mi 8</a></li>
										<li class="nav-item"><a href="customer-account.html"
											class="nav-link">Xiaomi Mi 8 SE</a></li>

									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Huawei
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="basket.html"
											class="nav-link">Huawei Y7 Pro 2019</a></li>
										<li class="nav-item"><a href="checkout1.html"
											class="nav-link">Huawei Mate 20 Pro</a></li>
										<li class="nav-item"><a href="checkout2.html"
											class="nav-link">Huawei Mate 20</a></li>
										<li class="nav-item"><a href="checkout3.html"
											class="nav-link">Huawei Y9 (2019)</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Huawei Nova 3i</a></li>
										<li class="nav-item"><a href="basket.html"
											class="nav-link">Huawei Nova 3</a></li>
										<li class="nav-item"><a href="checkout1.html"
											class="nav-link">Huawei P20 Pro</a></li>
										<li class="nav-item"><a href="checkout2.html"
											class="nav-link">Huawei Nova 3e</a></li>
										<li class="nav-item"><a href="checkout3.html"
											class="nav-link">Huawei Y7 Pro 2018</a></li>
										<li class="nav-item"><a href="checkout4.html"
											class="nav-link">Huawei Y7 Prime 2018</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Honor
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="blog.html" class="nav-link">Huawei
												Honor 10</a></li>
										<li class="nav-item"><a href="post.html" class="nav-link">Huawei
												Honor View10</a></li>
										<li class="nav-item"><a href="faq.html" class="nav-link">FAQ</a></li>
										<li class="nav-item"><a href="text.html" class="nav-link">Huawei
												Honor 9 Lite</a></li>
										<li class="nav-item"><a href="text-right.html"
											class="nav-link">Huawei Honor 7X</a></li>
										<li class="nav-item"><a href="404.html" class="nav-link">Huawei
												Honor 8X</a></li>
										<li class="nav-item"><a href="contact.html"
											class="nav-link">Huawei Honor 7</a></li>
										<li class="nav-item"><a href="blog.html" class="nav-link">Huawei
												Honor 6 Plus</a></li>
										<li class="nav-item"><a href="post.html" class="nav-link">Huawei
												Honor 4X</a></li>
										<li class="nav-item"><a href="faq.html" class="nav-link">Huawei
												Honor 4C</a></li>
									</ul>
								</div>
								<div class="col-md-6 col-lg-3">
									<h5>
										<i class="fas fa-chevron-circle-down"></i> Phụ kiện Vivo
									</h5>
									<ul class="list-unstyled mb-3">
										<li class="nav-item"><a href="blog.html" class="nav-link">Vivo
												V9</a></li>
										<li class="nav-item"><a href="post.html" class="nav-link">Vivo
												V3</a></li>
										<li class="nav-item"><a href="faq.html" class="nav-link">Vivo
												Y51</a></li>
										<li class="nav-item"><a href="text.html" class="nav-link">Vivo
												Y31</a></li>
										<li class="nav-item"><a href="text-right.html"
											class="nav-link">Vivo V1</a></li>
										<li class="nav-item"><a href="404.html" class="nav-link">Vivo
												V1 Max</a></li>
										<li class="nav-item"><a href="contact.html"
											class="nav-link">Vivo V3 Max</a></li>
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
					class="btn navbar-btn btn-primary d-none d-lg-inline-block"><span
					class="sr-only">Toggle search</span><i class="fa fa-search"></i></a>
				<div id="basket-overview"
					class="navbar-collapse collapse d-none d-lg-block">
					<a href="basket.html" class="btn btn-primary navbar-btn"><i
						class="fa fa-shopping-cart"></i></a>
				</div>
			</div>
		</div>
	</div>
	</nav>
	<div id="search" class="collapse">
		<div class="container">
			<form role="search" class="ml-auto">
				<div class="input-group">
					<input type="text" placeholder="Search" class="form-control">
					<div class="input-group-append">
						<button type="button" class="btn btn-primary">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	</header>
	<div id="all">
		<div id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- breadcrumb-->
						<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li aria-current="page" class="breadcrumb-item active">Shopping
								cart</li>
						</ol>
						</nav>
					</div>
					<div id="basket" class="col-lg-9">
						<div class="box">
							<form method="post" action="checkout1.html">
								<h1>Shopping cart</h1>
								<p class="text-muted">You currently have 3 item(s) in your
									cart.</p>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th colspan="2">Product</th>
												<th>Quantity</th>
												<th>Unit price</th>
												<th>Discount</th>
												<th colspan="2">Total</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="#"><img src="img/detailsquare.jpg"
														alt="White Blouse Armani"></a></td>
												<td><a href="#">White Blouse Armani</a></td>
												<td><input type="number" value="2" class="form-control">
												</td>
												<td>$123.00</td>
												<td>$0.00</td>
												<td>$246.00</td>
												<td><a href="#"><i class="fa fa-trash-o"></i></a></td>
											</tr>
											<tr>
												<td><a href="#"><img src="img/basketsquare.jpg"
														alt="Black Blouse Armani"></a></td>
												<td><a href="#">Black Blouse Armani</a></td>
												<td><input type="number" value="1" class="form-control">
												</td>
												<td>$200.00</td>
												<td>$0.00</td>
												<td>$200.00</td>
												<td><a href="#"><i class="fa fa-trash-o"></i></a></td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<th colspan="5">Total</th>
												<th colspan="2">$446.00</th>
											</tr>
										</tfoot>
									</table>
								</div>
								<!-- /.table-responsive-->
								<div
									class="box-footer d-flex justify-content-between flex-column flex-lg-row">
									<div class="left">
										<a href="category.html" class="btn btn-outline-secondary"><i
											class="fa fa-chevron-left"></i> Continue shopping</a>
									</div>
									<div class="right">
										<button class="btn btn-outline-secondary">
											<i class="fa fa-refresh"></i> Update cart
										</button>
										<button type="submit" class="btn btn-primary">
											Proceed to checkout <i class="fa fa-chevron-right"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
						<!-- /.box-->
						<div class="row same-height-row">
							<div class="col-lg-3 col-md-6">
								<div class="box same-height">
									<h3>You may also like these products</h3>
								</div>
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="product same-height">
									<div class="flip-container">
										<div class="flipper">
											<div class="front">
												<a href="detail.html"><img src="img/product2.jpg" alt=""
													class="img-fluid"></a>
											</div>
											<div class="back">
												<a href="detail.html"><img src="img/product2_2.jpg"
													alt="" class="img-fluid"></a>
											</div>
										</div>
									</div>
									<a href="detail.html" class="invisible"><img
										src="img/product2.jpg" alt="" class="img-fluid"></a>
									<div class="text">
										<h3>Fur coat</h3>
										<p class="price">$143</p>
									</div>
								</div>
								<!-- /.product-->
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="product same-height">
									<div class="flip-container">
										<div class="flipper">
											<div class="front">
												<a href="detail.html"><img src="img/product1.jpg" alt=""
													class="img-fluid"></a>
											</div>
											<div class="back">
												<a href="detail.html"><img src="img/product1_2.jpg"
													alt="" class="img-fluid"></a>
											</div>
										</div>
									</div>
									<a href="detail.html" class="invisible"><img
										src="img/product1.jpg" alt="" class="img-fluid"></a>
									<div class="text">
										<h3>Fur coat</h3>
										<p class="price">$143</p>
									</div>
								</div>
								<!-- /.product-->
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="product same-height">
									<div class="flip-container">
										<div class="flipper">
											<div class="front">
												<a href="detail.html"><img src="img/product3.jpg" alt=""
													class="img-fluid"></a>
											</div>
											<div class="back">
												<a href="detail.html"><img src="img/product3_2.jpg"
													alt="" class="img-fluid"></a>
											</div>
										</div>
									</div>
									<a href="detail.html" class="invisible"><img
										src="img/product3.jpg" alt="" class="img-fluid"></a>
									<div class="text">
										<h3>Fur coat</h3>
										<p class="price">$143</p>
									</div>
								</div>
								<!-- /.product-->
							</div>
						</div>
					</div>
					<!-- /.col-lg-9-->
					<div class="col-lg-3">
						<div id="order-summary" class="box">
							<div class="box-header">
								<h3 class="mb-0">Order summary</h3>
							</div>
							<p class="text-muted">Shipping and additional costs are
								calculated based on the values you have entered.</p>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<td>Order subtotal</td>
											<th>$446.00</th>
										</tr>
										<tr>
											<td>Shipping and handling</td>
											<th>$10.00</th>
										</tr>
										<tr>
											<td>Tax</td>
											<th>$0.00</th>
										</tr>
										<tr class="total">
											<td>Total</td>
											<th>$456.00</th>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="box">
							<div class="box-header">
								<h4 class="mb-0">Coupon code</h4>
							</div>
							<p class="text-muted">If you have a coupon code, please enter
								it in the box below.</p>
							<form>
								<div class="input-group">
									<input type="text" class="form-control"><span
										class="input-group-append">
										<button type="button" class="btn btn-primary">
											<i class="fa fa-gift"></i>
										</button>
									</span>
								</div>
								<!-- /input-group-->
							</form>
						</div>
					</div>
					<!-- /.col-md-3-->
				</div>
			</div>
		</div>
	</div>
	<!--
    *** FOOTER ***
    _________________________________________________________
    -->
	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h4>
						<i class="fab fa-galactic-senate"></i> Thông tin cửa hàng
					</h4>
					<ul class="list-unstyled">
						<li><a href="text.html"><i class="fas fa-caret-right"></i>
								Giới thiệu chung</a></li>
						<li><a href="text.html"><i class="fas fa-caret-right"></i>
								Liên hệ</a></li>
					</ul>
				</div>
				<!-- /.col-lg-3-->
				<div class="col-lg-4">
					<h4>
						<i class="fab fa-galactic-senate"></i> Hỗ trợ khách hàng
					</h4>
					<ul class="list-unstyled">
						<li><a href="category.html"><i class="fas fa-caret-right"></i>
								Bảo hành - Đổi trả</a></li>
						<li><a href="category.html"><i class="fas fa-caret-right"></i>
								Hỗ trợ mua hàng online</a></li>
						<li><a href="category.html"><i class="fas fa-caret-right"></i>
								Chính sách vận chuyển</a></li>
					</ul>
				</div>
				<!-- /.col-lg-3-->
				<div class="col-lg-4">
					<h4>
						<i class="fab fa-galactic-senate"></i> Địa chỉ cửa hàng
					</h4>
					<p>
						<i class="fas fa-map-marker-alt"></i> Địa chỉ: <br> <strong
							style="color: red;">Thủ Đức, TP Hồ Chí Minh</strong>
					</p>
					<p>
						<i class="fas fa-tty"></i> Số điện thoại: <strong
							style="color: red;">1900 63 22 46</strong>
					</p>
				</div>
			</div>
			<!-- /.row-->
		</div>
		<!-- /.container-->
	</div>
	<!-- /#footer-->
	<!-- *** FOOTER END ***-->


	<!--
    *** COPYRIGHT ***
    _________________________________________________________
    -->
	<div id="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mb-2 mb-lg-0">
					<p class="text-center text-lg-left">©2019 H&D_16102016</p>
				</div>
				<div class="col-lg-6">
					<p class="text-center text-lg-right">
						Design by <a href="#">H&D_16102016</a>
						<!-- If you want to remove this backlink, pls purchase an Attribution-free License @ https://bootstrapious.com/p/obaju-e-commerce-template. Big thanks!-->
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- *** COPYRIGHT END ***-->
	<!-- JavaScript files-->
	<script
		src="<c:url value="/resources/ui/vendor/jquery/jquery.min.js"/>"></script>
	<script
		src="<c:url value="/resources/ui/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
	<script
		src="<c:url value="/resources/ui/vendor/jquery.cookie/jquery.cookie.js"/>">
		
	</script>
	<script
		src="<c:url value="/resources/ui/vendor/owl.carousel/owl.carousel.min.js"/>"></script>
	<script
		src="<c:url value="/resources/ui/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"/>"></script>
	<script src="<c:url value="/resources/ui/js/front.js"/>"></script>
</body>
</html>