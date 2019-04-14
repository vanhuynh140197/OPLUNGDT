<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu|Admin</title>
<!-- favicon
        ============================================ -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/resources/admin/images/favicon.ico"/>">
<!-- Google Fonts
        ============================================ -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<!-- Bootstrap CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/bootstrap.min.css"/>">
<!-- Bootstrap CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/font-awesome.min.css"/>">
<!-- owl.carousel CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/owl.carousel.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/owl.theme.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/owl.transitions.css"/>">
<!-- animate CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/animate.css"/>">
<!-- normalize CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/normalize.css"/>">
<!-- meanmenu icon CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/meanmenu.min.css"/>">
<!-- main CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/main.css"/>">
<!-- educate icon CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/educate-custon-icon.css"/>">
<!-- morrisjs CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/morrisjs/morris.css"/>">
<!-- mCustomScrollbar CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/scrollbar/jquery.mCustomScrollbar.min.css"/>">
<!-- metisMenu CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/metisMenu/metisMenu.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/metisMenu/metisMenu-vertical.css"/>">
<!-- calendar CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/calendar/fullcalendar.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/calendar/fullcalendar.print.min.css"/>">
<!-- style CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/style.css"/>">
<!-- responsive CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/responsive.css"/>">
<!-- modernizr JS
        ============================================ -->
<script
	src="<c:url value="/resources/admin/js/vendor/modernizr-2.8.3.min.js"/>"></script>
</head>
<body>
	<!-- Start Left menu area -->
	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">
		<div class="sidebar-header">
			<a href="index.html"><img class="main-logo"
				src="<c:url value="/resources/admin/images/logo/logo.png"/>" alt="" /></a>
			<strong><a href="index.html"><img
					src="<c:url value="/resources/admin/images/logo/logosn.png"/>"
					alt="" /></a></strong>
		</div>
		<div class="left-custom-menu-adp-wrap comment-scrollbar">
			<nav class="sidebar-nav left-sidebar-menu-pro">
			<ul class="metismenu" id="menu1">
				<li class="active"><a class="has-arrow" href="index.html">
						<span class="educate-icon educate-home icon-wrap"></span> <span
						class="mini-click-non">Thống kê</span>
				</a>
					<ul class="submenu-angle" aria-expanded="true">
						<li><a title="Thống kê chung" href="#"><span
								class="mini-sub-pro">Thống kê chung</span></a></li>
						<li><a title="Thống kê doanh thu" href="#"><span
								class="mini-sub-pro">Thống kê doanh thu</span></a></li>
						<li><a title="Thống kê sản phẩm" href="#"><span
								class="mini-sub-pro">Thống kê sản phẩm</span></a></li>
						<li><a title="Thống kê kho" href="#"><span
								class="mini-sub-pro">Thống kê kho</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-professor icon-wrap"></span> <span
						class="mini-click-non">Nhân viên</span></a>
					<ul class="submenu-angle" aria-expanded="false">
						<li><a title="Quản lý nhân viên" href="#"><span
								class="mini-sub-pro">Quản lý nhân viên</span></a></li>
						<li><a title="Thêm nhân viên" href="#"><span
								class="mini-sub-pro">Thêm nhân viên</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-apps icon-wrap"></span> <span
						class="mini-click-non">Chức vụ</span></a>
					<ul class="submenu-angle app-mini-nb-dp" aria-expanded="false">
						<li><a title="Quản lý chức vụ" href="#"><span
								class="mini-sub-pro">Quản lý chức vụ</span></a></li>
						<li><a title="Thêm chức vụ" href="#"><span
								class="mini-sub-pro">Thêm chức vụ</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-student icon-wrap"></span> <span
						class="mini-click-non">Khách hàng</span></a>
					<ul class="submenu-angle" aria-expanded="false">
						<li><a title="Quản lý khách hàng" href="#"><span
								class="mini-sub-pro">Quản lý khách hàng</span></a></li>
						<li><a title="Thêm khách hàng" href="#"><span
								class="mini-sub-pro">Thêm khách hàng</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-student icon-wrap"></span> <span
						class="mini-click-non">Hóa đơn</span></a>
					<ul class="submenu-angle" aria-expanded="false">
						<li><a title="Quản lý khách hàng" href="#"><span
								class="mini-sub-pro">Quản lý hóa đơn</span></a></li>
						<li><a title="Thêm khách hàng" href="#"><span
								class="mini-sub-pro">Thêm hóa đơn</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-course icon-wrap"></span> <span
						class="mini-click-non">Sản phẩm</span></a>
					<ul class="submenu-angle" aria-expanded="false">
						<li><a title="Quản lý sản phẩm"
							href="<c:url value="/admin/oplungdienthoai/sanpham"/>"><span
								class="mini-sub-pro">Quản lý sản phẩm</span></a></li>
						<li><a title="Thêm sản phẩm" href="<c:url value="/admin/oplungdienthoai/themsanpham"/>"><span
								class="mini-sub-pro">Thêm sản phẩm</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-library icon-wrap"></span> <span
						class="mini-click-non">Loại sản phẩm</span></a>
					<ul class="submenu-angle" aria-expanded="false">
						<li><a title="Quản lý loại sản phẩm" href="#"><span
								class="mini-sub-pro">Quản lý loại sản phẩm</span></a></li>
						<li><a title="Thêm loại sản phẩm" href="#"><span
								class="mini-sub-pro">Thêm loại sản phẩm</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-department icon-wrap"></span> <span
						class="mini-click-non">Nhà cung cấp</span></a>
					<ul class="submenu-angle" aria-expanded="false">
						<li><a title="Quản lý nhà cung cấp" href="#"><span
								class="mini-sub-pro">Quản lý nhà cung cấp</span></a></li>
						<li><a title="Thêm nhà cung cấp" href="#"><span
								class="mini-sub-pro">Thêm nhà cung cấp</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-event icon-wrap sub-icon-mg"></span> <span
						class="mini-click-non">Khuyến mãi</span></a>
					<ul class="submenu-angle" aria-expanded="false">
						<li><a title="Quản lý khuyến mãi" href="#"><span
								class="mini-sub-pro">Quản lý khuyến mãi</span></a></li>
						<li><a title="Thêm khuyến mãi" href="#"><span
								class="mini-sub-pro">Thêm khuyến mãi</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-interface icon-wrap"></span> <span
						class="mini-click-non">Giá bán</span></a>
					<ul class="submenu-angle interface-mini-nb-dp"
						aria-expanded="false">
						<li><a title="Quản lý giá bán" href="#"><span
								class="mini-sub-pro">Quản lý giá bán</span></a></li>
						<li><a title="Thêm giá bán" href="#"><span
								class="mini-sub-pro">Thêm giá bán</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-charts icon-wrap"></span> <span
						class="mini-click-non">Tài khoản</span></a>
					<ul class="submenu-angle chart-mini-nb-dp" aria-expanded="false">
						<li><a title="Quản lý tài khoản" href="#"><span
								class="mini-sub-pro">Quản lý tài khoản</span></a></li>
						<li><a title="Thêm tài khoản" href="#"><span
								class="mini-sub-pro">Thêm tài khoản</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-data-table icon-wrap"></span> <span
						class="mini-click-non">Thanh toán</span></a>
					<ul class="submenu-angle" aria-expanded="false">
						<li><a title="Phương thức thanh toán" href="#"><span
								class="mini-sub-pro">Phương thức thanh toán</span></a></li>
						<li><a title="Thêm phương thức thanh toán" href="#"><span
								class="mini-sub-pro">Thêm phương thức thanh toán</span></a></li>
					</ul></li>
				<li><a class="has-arrow" href="#" aria-expanded="false"><span
						class="educate-icon educate-form icon-wrap"></span> <span
						class="mini-click-non">Vận chuyển</span></a>
					<ul class="submenu-angle form-mini-nb-dp" aria-expanded="false">
						<li><a title="Phương thức vận chuyển" href="#"><span
								class="mini-sub-pro">Phương thức vận chuyển</span></a></li>
						<li><a title="Thêm phương thức vận chuyển" href="#"><span
								class="mini-sub-pro"> Thêm phương thức vận chuyển</span></a></li>
					</ul></li>
			</ul>
			</nav>
		</div>
		</nav>
	</div>
	<!-- End Left menu area -->
	<!-- jquery
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/vendor/jquery-1.12.4.min.js"/>"></script>
	<!-- bootstrap JS
        ============================================ -->
	<script src="<c:url value="/resources/admin/js/bootstrap.min.js"/>"></script>
	<!-- wow JS
        ============================================ -->
	<script src="<c:url value="/resources/admin/js/wow.min.js"/>"></script>
	<!-- price-slider JS
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/jquery-price-slider.js"/>"></script>
	<!-- meanmenu JS
        ============================================ -->
	<script src="<c:url value="/resources/admin/js/jquery.meanmenu.js"/>"></script>
	<!-- owl.carousel JS
        ============================================ -->
	<script src="<c:url value="/resources/admin/js/owl.carousel.min.js"/>"></script>
	<!-- sticky JS
        ============================================ -->
	<script src="<c:url value="/resources/admin/js/jquery.sticky.js"/>"></script>
	<!-- scrollUp JS
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/jquery.scrollUp.min.js"/>"></script>
	<!-- counterup JS
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/counterup/jquery.counterup.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/counterup/waypoints.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/counterup/counterup-active.js"/>"></script>
	<!-- mCustomScrollbar JS
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/scrollbar/mCustomScrollbar-active.js"/>"></script>
	<!-- metisMenu JS
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/metisMenu/metisMenu.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/metisMenu/metisMenu-active.js"/>"></script>
	<!-- morrisjs JS
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/morrisjs/raphael-min.js"/>"></script>
	<script src="<c:url value="/resources/admin/js/morrisjs/morris.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/morrisjs/morris-active.js"/>"></script>
	<!-- morrisjs JS
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/sparkline/jquery.sparkline.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/sparkline/jquery.charts-sparkline.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/sparkline/sparkline-active.js"/>"></script>
	<!-- calendar JS
        ============================================ -->
	<script
		src="<c:url value="/resources/admin/js/calendar/moment.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/calendar/fullcalendar.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/calendar/fullcalendar-active.js"/>"></script>
	<!-- plugins JS
        ============================================ -->
	<script src="<c:url value="/resources/admin/js/plugins.js"/>"></script>
	<!-- main JS
        ============================================ -->
	<script src="<c:url value="/resources/admin/js/main.js"/>"></script>
	<!-- tawk chat JS
        ============================================ -->
	<script src="<c:url value="/resources/admin/js/tawk-chat.js"/>"></script>
</body>
</html>