<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Obaju| Chi tiết sản phẩm</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
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
							<li class="breadcrumb-item"><a href="#">Ladies</a></li>
							<li class="breadcrumb-item"><a href="#">Tops</a></li>
							<li aria-current="page" class="breadcrumb-item active">White
								Blouse Armani</li>
						</ol>
						</nav>
					</div>
					<div class="col-lg-3 order-2 order-lg-1">
						<!--
              *** MENUS AND FILTERS ***
              _________________________________________________________
              -->
						<div class="card sidebar-menu mb-4">
							<div class="card-header">
								<h3 class="h4 card-title">
									<i class="fab fa-fly"></i> Phụ kiện ốp lưng
								</h3>
							</div>
							<div class="card-body">
								<ul class="nav nav-pills flex-column category-menu">
									<li><a href="category.html" class="nav-link active"><i
											class="fas fa-caret-right"></i> Apple <span
											class="badge badge-secondary">42</span> </a>
										<ul class="list-unstyled">
											<li><a
												href=<c:url value="/oplungdienthoai/home/sanpham"/>
												class="nav-link">Iphone XS Max</a></li>
											<li><a href="#" class="nav-link">Iphone XS/X</a></li>
											<li><a href="#" class="nav-link">Iphone 8 plus</a></li>
											<li><a href="#" class="nav-link">Iphone 8</a></li>
											<li><a href="#" class="nav-link">Iphone 7 plus</a></li>
											<li><a href="#" class="nav-link">Iphone 7</a></li>
											<li><a href="#" class="nav-link">Iphone 6/6s plus</a></li>
											<li><a href="#" class="nav-link">Iphone 6/6s</a></li>
										</ul></li>
									<li><a href="#" class="nav-link active"><i
											class="fas fa-caret-right"></i> SamSung <span
											class="badge badge-light">123</span> </a>
										<ul class="list-unstyled">
											<li><a href="#" class="nav-link">Samsung Galaxy S10</a></li>
											<li><a href="#" class="nav-link">Galaxy S10 Plus</a></li>
											<li><a href="#" class="nav-link">Samsung Galaxy S10E</a></li>
											<li><a href="#" class="nav-link">Samsung Galaxy M20</a></li>
											<li><a href="#" class="nav-link">Samsung Galaxy M10</a></li>
											<li><a href="#" class="nav-link">Samsung Galaxy M30</a></li>
											<li><a href="#" class="nav-link">Samsung Galaxy S10E</a></li>
											<li><a href="#" class="nav-link">Samsung Galaxy A50</a></li>
											<li><a href="#" class="nav-link">Samsung Galaxy A30</a></li>
											<li><a href="#" class="nav-link">Samsung Galaxy A10</a></li>
										</ul></li>
									<li><a href="#" class="nav-link active"><i
											class="fas fa-caret-right"></i> Huawei <span
											class="badge badge-secondary">11</span> </a>

										<ul class="list-unstyled">
											<li><a href="#" class="nav-link">Huawei Y7 Pro 2019</a></li>
											<li><a href="#" class="nav-link">Huawei Mate 20 Pro</a></li>
											<li><a href="#" class="nav-link">Huawei Mate 20</a></li>
											<li><a href="#" class="nav-link">Huawei Y9 (2019)</a></li>
											<li><a href="#" class="nav-link">Huawei Nova 3i</a></li>
											<li><a href="#" class="nav-link">Huawei Nova 3</a></li>
											<li><a href="#" class="nav-link">Huawei P20 Pro</a></li>
											<li><a href="#" class="nav-link">Huawei Nova 3e</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
						<!-- *** MENUS AND FILTERS END ***-->
					</div>
					<div class="col-lg-9 order-1 order-lg-2">
						<div id="productMain" class="row">
							<div class="col-md-6">
								<div data-slider-id="1"
									class="owl-carousel shop-detail-carousel">
									<div class="item">
										<img src="<c:url value="/resources/ui/img/detailbig1.jpg"/>"
											alt="" class="img-fluid">
									</div>
									<div class="item">
										<img src="<c:url value="/resources/ui/img/detailbig2.jpg"/>"
											alt="" class="img-fluid">
									</div>
									<div class="item">
										<img src="<c:url value="/resources/ui/img/detailbig3.jpg"/>"
											alt="" class="img-fluid">
									</div>
								</div>
								<div class="ribbon sale">
									<div class="theribbon">SALE</div>
									<div class="ribbon-background"></div>
								</div>
								<!-- /.ribbon-->
								<div class="ribbon new">
									<div class="theribbon">NEW</div>
									<div class="ribbon-background"></div>
								</div>
								<!-- /.ribbon-->
							</div>
							<div class="col-md-6">
								<div class="box">
									<h3 class="text-center">Ốp lưng Iphone 7 plus</h3>
									<p align="center" style="margin-left: 3%;">
										<i class="fas fa-angle-double-right"></i> Mã sản phẩm: COP178
									</p>
									<p align="center">
										<i class="fas fa-angle-double-right"></i> Tình trạng: <strong
											style="color: red;">Còn hàng</strong>
									</p>
									<h4 align="center">
										<i class="fas fa-caret-right"></i> Giá bán: <strong
											style="color: red;"> 90,000 đ </strong>
									</h4>
									<p class="goToDescription">
										<a href="#details" class="scroll-to"><h4 align="center">Xem
												thông tin chi tiết sản phẩm</h4></a>
									</p>
									<p class="text-center buttons" style="margin-left: 20%;">
										<a href="<c:url value="/oplungdienthoai/home/giohang"/>"
											class="btn btn-primary5"><i class="fa fa-shopping-cart"></i>
											Đặt hàng nhanh</a>
									</p>
									<br>
									<p>
										<i class="fas fa-bell"></i> Thông tin & Khuyến mãi
									</p>
									<hr>
									<p>
										✪ Giao hàng toàn quốc <br> ✪ Thanh toán khi nhận hàng <br>
										✪ Đơn hàng trên 500.000đ miễn phí vận chuyển <br> ✪
										Thường xuyên có khuyến mãi cho thành viên
									</p>
								</div>
								<div data-slider-id="1" class="owl-thumbs">
									<button class="owl-thumb-item">
										<img src="<c:url value="/resources/ui/img/detailsquare.jpg"/>"
											alt="" class="img-fluid">
									</button>
									<button class="owl-thumb-item">
										<img
											src="<c:url value="/resources/ui/img/detailsquare2.jpg"/>"
											alt="" class="img-fluid">
									</button>
									<button class="owl-thumb-item">
										<img
											src="<c:url value="/resources/ui/img/detailsquare3.jpg"/>"
											alt="" class="img-fluid">
									</button>
								</div>
							</div>
						</div>
						<div id="details" class="box">
							<h3>
								<i class="fas fa-bell"></i> Thông tin sản phẩm
							</h3>
							<hr>
							<h4>Ốp lưng iPhone Xs Max Ringke Fusion kèm bộ Kit tiện lợi</h4>
							<p>
								Trọn bộ bao gồm: <br> - Dây đeo cổ tay màu ngẫu nhiên. Trên
								ốp lưng Ringke Fusion có chỗ móc dây, đây là thiết kế đặc trưng
								của Ringke. Dây đeo này sẽ giúp bạn cầm điện thoại trên tay chắc
								chắn hơn. <br> - Miếng dán đựng card có thể dán trực tiếp
								mặt lưng của ốp. <br> - Ốp lưng Ringke Fusion Thiết kế siêu
								mỏng và hoàn toàn phù hợp từng chi tiết nhỏ trên iPhone Xs Max.
								<br>- Dễ dàng tháo lắp không làm trầy máy nhờ thiết kế viền
								TPU dẻo. <br> - Chất liệu nhựa cao cấp có cảm giác như bạn
								cầm chính cái điện thoại mà không có bất gì cản trở nào. <br>
								- Chống va đập và ảnh hưởng tuyệt đối. <br> - Chống trầy
								màn hình iPhone Xs Max khi để trên mặt phẵng nhờ phần ốp mặt
								trước nhô cao.
							<hr>
							<div class="social">
								<h4>
									<i class="fas fa-angle-double-right"></i> Chia sẻ
								</h4>
								<p>
									<a href="#" class="external facebook"><i
										class="fa fa-facebook"></i></a><a href="#" class="external gplus"><i
										class="fa fa-google-plus"></i></a><a href="#"
										class="external twitter"><i class="fa fa-twitter"></i></a><a
										href="#" class="email"><i class="fa fa-envelope"></i></a>
								</p>
							</div>
						</div>
						<div id="details" style="margin-left: 2%;">
							<h3>
								<i class="fas fa-bell"></i> Sản phẩm yêu thích
							</h3>
							<hr>
						</div>
						<div class="row same-height-row">
							<div class="col-md-3 col-sm-6">
								<div class="product same-height">
									<div class="flip-container">
										<div class="flipper">
											<div class="front">
												<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"><img
													src="<c:url value="/resources/ui/img/SP YeuThich/iphone10.jpg"/>"
													alt="" class="img-fluid"></a>
											</div>
											<div class="back">
												<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"><img
													src="<c:url value="/resources/ui/img/SP YeuThich/iphone11.jpg"/>"
													alt="" class="img-fluid"></a>
											</div>
										</div>
									</div>
									<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"
										class="invisible"><img
										src="<c:url value="/resources/ui/img/SP YeuThich/iphone10.jpg"/>"
										alt="" class="img-fluid"></a>
									<div class="text">
										<h3>Ốp lưng đính đá Iphone 7 Plus</h3>
										<p class="price">
											<i class="fas fa-caret-right"></i> Giá bán: <strong
												style="color: red;"> 120,000 đ </strong>
										</p>
									</div>
								</div>
								<!-- /.product-->
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="product same-height">
									<div class="flip-container">
										<div class="flipper">
											<div class="front">
												<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"><img
													src="<c:url value="/resources/ui/img/SP YeuThich/iphone12.jpg"/>"
													alt="" class="img-fluid"></a>
											</div>
											<div class="back">
												<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"><img
													src="<c:url value="/resources/ui/img/SP YeuThich/iphone13.jpg"/>"
													alt="" class="img-fluid"></a>
											</div>
										</div>
									</div>
									<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"
										class="invisible"><img
										src="<c:url value="/resources/ui/img/SP YeuThich/iphone12.jpg"/>"
										alt="" class="img-fluid"></a>
									<div class="text">
										<h3>Ốp lưng dẻo chống sốc Iphone 7 Plus</h3>
										<p class="price">
											<i class="fas fa-caret-right"></i> Giá bán: <strong
												style="color: red;"> 90,000 đ </strong>
										</p>
									</div>
								</div>
								<!-- /.product-->
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="product same-height">
									<div class="flip-container">
										<div class="flipper">
											<div class="front">
												<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"><img
													src="<c:url value="/resources/ui/img/SP YeuThich/huawei novo 3i.jpg"/>"
													alt="" class="img-fluid"></a>
											</div>
											<div class="back">
												<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"><img
													src="<c:url value="/resources/ui/img/SP YeuThich/huawei novo 3i1.jpg"/>"
													alt="" class="img-fluid"></a>
											</div>
										</div>
									</div>
									<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"
										class="invisible"><img
										src="<c:url value="/resources/ui/img/SP YeuThich/huawei novo 3i.jpg"/>"
										alt="" class="img-fluid"></a>
									<div class="text">
										<h3>Ốp lưng Huawei Novo 3e</h3>
										<p class="price">
											<i class="fas fa-caret-right"></i> Giá bán: <strong
												style="color: red;"> 120,000 đ </strong>
										</p>
									</div>
								</div>
								<!-- /.product-->
							</div>
							<div class="col-md-3 col-sm-6">
								<div class="product same-height">
									<div class="flip-container">
										<div class="flipper">
											<div class="front">
												<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"><img
													src="<c:url value="/resources/ui/img/SP YeuThich/oppo1.jpg"/>"
													alt="" class="img-fluid"></a>
											</div>
											<div class="back">
												<a href="<c:url value="/oplungdienthoai/home/chitiet"/>"><img
													src="<c:url value="/resources/ui/img/SP YeuThich/oppo2.jpg"/>"
													alt="" class="img-fluid"></a>
											</div>
										</div>
									</div>
									<a
										href="detail.html<c:url value="/oplungdienthoai/home/chitiet"/>"
										class="invisible"><img
										src="<c:url value="/resources/ui/img/SP YeuThich/oppo1.jpg"/>"
										alt="" class="img-fluid"></a>
									<div class="text">
										<h3>Ốp lưng Oppo F9 Full màu</h3>
										<p class="price">
											<i class="fas fa-caret-right"></i> Giá bán: <strong
												style="color: red;"> 100,000 đ </strong>
										</p>
									</div>
								</div>
								<!-- /.product-->
							</div>
						</div>
					</div>
					<!-- /.col-md-9-->
				</div>
			</div>
		</div>
	</div>
	<!--  *** FOOTER *** -->
	<%@include file="footer.jsp"%>
	<!-- Return to Top|ScrollTop -->
	<a href="javascript:" id="return-to-top" title="Về đầu trang"><i
		class="icon-chevron-up"></i></a>
	<script src="<c:url value="/resources/ui/js/scrollTop.js"/>"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>