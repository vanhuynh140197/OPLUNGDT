<%@page import="com.sun.mail.imap.protocol.Item"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.oplungdienthoai.model.ProductsEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ốp lưng điện thoại giá rẻ|Home</title>
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
			<div class="container" style="margin-top: -2%;">
				<div class="row">
					<div class="col-md-8">
						<div id="main-slider" class="owl-carousel owl-theme">
							<div class="item">
								<img
									src="<c:url value="/resources/ui/img/oplungdt/iphone1.jpg"/>"
									alt="" class="img-fluid">
							</div>
							<div class="item">
								<img
									src="<c:url value="/resources/ui/img/oplungdt/4500737slide2.jpg"/>"
									alt="" class="img-fluid">
							</div>
							<div class="item">
								<img src="<c:url value="/resources/ui/img/oplungdt/op.jpg"/>"
									alt="" class="img-fluid">
							</div>
							<div class="item">
								<img
									src="<c:url value="/resources/ui/img/oplungdt/4501283slide3.jpg"/>"
									alt="" class="img-fluid">
							</div>
						</div>
						<!-- /#main-slider-->
					</div>
					<div class="col-md-4">
						<img src="<c:url value="/resources/ui/img/oplungdt/call(1).png"/>"
							alt="" class="img-fluid"> <br> <br> <img
							src="<c:url value="/resources/ui/img/oplungdt/giaohang2.png"/>"
							alt="" class="img-fluid">
					</div>
				</div>
			</div>
			<!--
        *** ADVANTAGES HOMEPAGE ***
        _________________________________________________________
        -->
			<div id="advantages">
				<div class="container">
					<div class="row mb-4">
						<div class="col-md-4">
							<div
								class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
								<h3>
									<a href="#"><i class="fab fa-asymmetrik"></i> Uy tín hàng
										đầu</a>
								</h3>
								<p class="mb-0">Thành lập hơn 5 Năm, đã phục vụ hơn 300.000
									khách hàng trên cả nước...</p>
							</div>
						</div>
						<div class="col-md-4">
							<div
								class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
								<h3>
									<a href="#"><i class="fas fa-shipping-fast"></i> Giao hàng
										nhanh chóng</a>
								</h3>
								<p class="mb-0">Giao hàng 24h trong nội thành và giao hàng
									qua bưu điện ở tỉnh khác...</p>
							</div>
						</div>
						<div class="col-md-4">
							<div
								class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
								<h3>
									<a href="#"><i class="fab fa-stack-overflow"></i> Sản phẩm
										đa dạng</a>
								</h3>
								<p class="mb-0">Cung cấp tất cả các phụ kiện, bao da, thẻ
									nhớ cho điện thoại, Tablet...</p>
							</div>
						</div>
					</div>
					<!-- /.row-->
				</div>
				<!-- /.container-->
			</div>
			<!-- /#advantages-->
			<!-- *** ADVANTAGES END ***-->
			<!--
        *** HOT PRODUCT SLIDESHOW ***
<!--         _________________________________________________________ -->

			<div id="hot">
				<div class="box py-4">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<h2 class="mb-0">
									<marquee>
										<i class="fas fa-braille"></i> Phụ kiện ốp lưng điện thoại bán
										chạy nhất
									</marquee>
								</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="product-slider owl-carousel owl-theme">
						<div class="item">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Iphone_XS_Max/iphone-xs-max-1.png"/>"
												alt="" class="img-fluid"></a>
										</div>
										<div class="back">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Iphone_XS_Max/iphone-xs-max-2.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
									</div>
								</div>
								<a href="#" class="invisible"><img
									src="<c:url value="/resources/ui/img/Iphone_XS_Max/iphone-xs-max-1.png" />"
									alt="" class="img-fluid"></a>
								<div class="text">
									<br> <br> <br>
									<h3>
										Ốp lưng <br>Iphone XS Max
									</h3>
									<p class="price">
										<del></del>
										<i class="fas fa-caret-right"></i> Giá bán:<strong
											style="color: red;"> 80,000 đ</strong>
									</p>
									<br>
								</div>
								<!-- /.text-->
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
							<!-- /.product-->
						</div>
						<div class="item">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="#"> <img
												src="<c:url value="/resources/ui/img/Xiaomi_Redmi_Note_3Pro/xiaomi1.jpg"/>"
												alt="" class="img-fluid">
											</a>
										</div>
										<div class="back">
											<a href="#"> <img
												src="<c:url value="/resources/ui/img/Xiaomi_Redmi_Note_3Pro/xiaomi2.jpg"/>"
												alt="" class="img-fluid">
											</a>
										</div>
									</div>
								</div>
								<a href="#" class="invisible"><img
									src="<c:url value="/resources/ui/img/Xiaomi_Redmi_Note_3Pro/xiaomi1.jpg"/>"
									alt="" class="img-fluid"></a>
								<div class="text">
									<h3>Xiaomi Redmi Note 3 Pro</h3>
									<p class="price">
										<i class="fas fa-caret-right"></i> Giá bán:
										<del>50,000 đ</del>
										<strong style="color: red;"> 45,000 đ</strong>
									</p>
								</div>
								<!-- /.text-->
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
							<!-- /.product-->
						</div>
						<div class="item">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Zenfone_Max/Zenfone_1.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
										<div class="back">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Zenfone_Max/Zenfone_2.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
									</div>
								</div>
								<a href="#" class="invisible"><img
									src="<c:url value="/resources/ui/img/Zenfone_Max/Zenfone_1.jpg"/>"
									alt="" class="img-fluid"></a>
								<div class="text">
									<h3>Zenfone Max</h3>
									<p class="price">
										<del></del>
										<i class="fas fa-caret-right"></i> Giá bán: <strong
											style="color: red;"> 40,000 đ</strong>
									</p>
									<br>
								</div>
								<!-- /.text-->
							</div>
							<!-- /.product-->
						</div>
						<div class="item">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Huawei_Novo_3i/novo_1.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
										<div class="back">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Huawei_Novo_3i/novo_2.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
									</div>
								</div>
								<a href="#" class="invisible"><img
									src="<c:url value="/resources/ui/img/Huawei_Novo_3i/novo_1.jpg"/>"
									alt="" class="img-fluid"></a>
								<div class="text">
									<br> <br>
									<h3>SamSung Note 9</h3>
									<p class="price">
										<del></del>
										<i class="fas fa-caret-right"></i> Giá bán: <strong
											style="color: red;"> 60,000 đ</strong>
									</p>
									<br>
								</div>
								<!-- /.text-->
							</div>
							<!-- /.product-->
						</div>
						<div class="item">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Iphone7_Plus/iphone7_1.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
										<div class="back">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Iphone7_Plus/iphone7_2.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
									</div>
								</div>
								<a href="#" class="invisible"><img
									src="<c:url value="/resources/ui/img/Iphone7_Plus/iphone7_1.jpg"/>"
									alt="" class="img-fluid"></a>
								<div class="text">
									<br> <br>
									<h3>Iphone 7 plus</h3>
									<p class="price">
										<del></del>
										<i class="fas fa-caret-right"></i> Giá bán: <strong
											style="color: red;"> 50,000 đ</strong>
									</p>
									<br>
								</div>
								<!-- /.text-->
								<div class="ribbon new">
									<div class="theribbon">NEW</div>
									<div class="ribbon-background"></div>
								</div>
								<!-- /.ribbon-->
							</div>
							<!-- /.product-->
						</div>
						<div class="item">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/SamSungNote9/note_1.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
										<div class="back">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/SamSungNote9/note_2.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
									</div>
								</div>
								<a href="#" class="invisible"><img
									src="<c:url value="/resources/ui/img/SamSungNote9/note_1.jpg"/>"
									alt="" class="img-fluid"></a>
								<div class="text">
									<br>
									<h3>SamSung Note 9</h3>
									<p class="price">
										<del></del>
										<i class="fas fa-caret-right"></i> Giá bán: <strong
											style="color: red;"> 60,000 đ</strong>
									</p>
									<br>
								</div>
								<!-- /.text-->
							</div>
							<!-- /.product-->
						</div>
						<div class="item">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Sony_Xperia_XA1_Plus/sony_1.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
										<div class="back">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/Sony_Xperia_XA1_Plus/sony_2.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
									</div>
								</div>
								<a href="#" class="invisible"><img
									src="<c:url value="/resources/ui/img/Sony_Xperia_XA1_Plus/sony_1.jpg"/>"
									alt="" class="img-fluid"></a>
								<div class="text">
									<br> <br>
									<h3>Sony Xperia XA1 Plus</h3>
									<p class="price">
										<i class="fas fa-caret-right"></i> Giá bán:
										<del>70,000 đ</del>
										<strong style="color: red;"> 55,000 đ</strong>
									</p>
								</div>
								<!-- /.text-->
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
							<!-- /.product-->
						</div>
						<div class="item">
							<div class="product">
								<div class="flip-container">
									<div class="flipper">
										<div class="front">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/HTC_U11_Plus/htc_1.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
										<div class="back">
											<a href="#"><img
												src="<c:url value="/resources/ui/img/HTC_U11_Plus/htc_2.jpg"/>"
												alt="" class="img-fluid"></a>
										</div>
									</div>
								</div>
								<a href="#" class="invisible"><img
									src="<c:url value="/resources/ui/img/HTC_U11_Plus/htc_1.jpg"/>"
									alt="" class="img-fluid"></a>
								<div class="text">
									<br> <br>
									<h3>HTC U11 Plus</h3>
									<p class="price">
										<del></del>
										<i class="fas fa-caret-right"></i> Giá bán:<strong
											style="color: red;"> 70,000 đ</strong>
									</p>
									<br>
								</div>
								<!-- /.text-->
							</div>
							<!-- /.product-->
						</div>
						<!-- /.product-slider-->
					</div>
					<!-- /.container-->
				</div>
				<!-- /#hot-->
				<!-- *** HOT END ***-->
			</div>
			<!--
			
			<!-- --------------------------------------------------------- -->
			<!-- NOI DUNG -->
			<div id="all">
				<div id="content">
					<div class="container">
						<div class="row">
							<div class="col-lg-3">
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
														href="<c:url value="/oplungdienthoai/sanpham"/>"
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
													<li><a href="#" class="nav-link">Samsung Galaxy
															S10</a></li>
													<li><a href="#" class="nav-link">Galaxy S10 Plus</a></li>
													<li><a href="#" class="nav-link">Samsung Galaxy
															S10E</a></li>
													<li><a href="#" class="nav-link">Samsung Galaxy
															M20</a></li>
													<li><a href="#" class="nav-link">Samsung Galaxy
															M10</a></li>
													<li><a href="#" class="nav-link">Samsung Galaxy
															M30</a></li>
													<li><a href="#" class="nav-link">Samsung Galaxy
															S10E</a></li>
													<li><a href="#" class="nav-link">Samsung Galaxy
															A50</a></li>
													<li><a href="#" class="nav-link">Samsung Galaxy
															A30</a></li>
													<li><a href="#" class="nav-link">Samsung Galaxy
															A10</a></li>
												</ul></li>
											<li><a href="#" class="nav-link active"><i
													class="fas fa-caret-right"></i> Huawei <span
													class="badge badge-secondary">11</span> </a>

												<ul class="list-unstyled">
													<li><a href="#" class="nav-link">Huawei Y7 Pro
															2019</a></li>
													<li><a href="#" class="nav-link">Huawei Mate 20
															Pro</a></li>
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
							<div class="col-lg-9">
								<div class="box">
									<h3>Obaju- Ốp lưng điện thoại</h3>
									<p>
										<i class="fab fa-centos"></i> ĐÚNG HÀNG - ĐÚNG GIÁ - ĐÚNG CHẤT
										LƯỢNG
									</p>
								</div>
								<div class="box info-bar">
									<div class="row">
										<div class="col-md-12 col-lg-4 products-showing">
											Hiển thị <strong>6</strong> trên <strong>25</strong> sản phẩm
										</div>
										<div class="col-md-12 col-lg-8 products-number-sort">
											<form
												class="form-inline d-block d-lg-flex justify-content-between flex-column flex-md-row">
												<div class="products-number">
													<strong>Hiển thị</strong><a href="#"
														style="margin-left: 2px;" class="btn btn-sm btn-primary5">6</a><a
														href="#" class="btn btn-outline-secondary btn-sm">24</a><a
														href="#" class="btn btn-outline-secondary btn-sm">Tất
														cả</a>
												</div>
												<div class="products-sort-by mt-2 mt-lg-0">
													<strong>Sắp xếp theo</strong> <select name="sort-by"
														class="form-control">
														<option>Giá</option>
														<option>Tên</option>
														<option>Sản phẩm SALE</option>
													</select>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="row products">
									<jsp:useBean id="pagedListHolder" scope="request"
										type="org.springframework.beans.support.PagedListHolder" />
									<c:url value="/oplungdienthoai/home" var="pagedLink">
										<c:param name="page" value="~" />
									</c:url>
									<c:forEach items="${pagedListHolder.pageList}" var="item">
										<div class="col-lg-4 col-md-6">
											<div class="product">
												<div class="flip-container">
													<div class="flipper">
														<div class="front">
															<a
																href="<c:url value="/oplungdienthoai/chitiet/${item.productsId.trim()}"/>"><img
																src="<c:url value="${item.productsImages1}"/>" alt=""
																class="img-fluid"></a>
														</div>
														<div class="back">
															<a
																href="<c:url value="/oplungdienthoai/chitiet/${item.productsId.trim()}"/>"><img
																src="<c:url value="${item.productsImages2}"/>" alt=""
																class="img-fluid"></a>
														</div>
													</div>
												</div>
												<a
													href="<c:url value="/oplungdienthoai/chitiet/${item.productsId.trim()}"/>"
													class="invisible"><img
													src="<c:url value="${item.productsImages1}"/>" alt=""
													class="img-fluid"></a>
												<div class="text">
													<h3>${item.productsName}</h3>
													<p class="price">
														<del></del>
														<i class="fas fa-caret-right"></i> Giá bán: <strong
															style="color: red;"><fmt:formatNumber
																type="currency" value="${item.prices}"></fmt:formatNumber></strong>
													</p>
													<br>
													<p class="buttons">
														<a
															href="<c:url value="/oplungdienthoai/chitiet/${item.productsId.trim()}"/>"
															class="btn btn-outline-secondary">Chi tiết</a><a
															href="<c:url value="/oplungdienthoai/giohang/${item.productsId.trim()}"/>"
															class="btn btn-primary5"><i
															class="fa fa-shopping-cart"></i>Đặt hàng nhanh</a>
													</p>
												</div>
												<!-- /.text-->
												<div class="ribbon sale">
													<div class="theribbon">SALE</div>
													<div class="ribbon-background"></div>
												</div>
												<div class="ribbon new">
													<div class="theribbon">NEW</div>
													<div class="ribbon-background"></div>
												</div>
												<!-- /.ribbon-->
											</div>
											<!-- /.product            -->
										</div>
									</c:forEach>
								</div>
								<!-- /.products-->
							</div>
							<div style="margin-left: 55%; margin-top: -1%;">
								<tg:paging pagedListHolder="${pagedListHolder}"
									pagedLink="${pagedLink}" />
							</div>
						</div>
						<!-- /.col-lg-9-->
					</div>
				</div>
			</div>
		</div>
		<!-- END:NOI DUNG -->
	</div>
	<!-- FOOTER -->
	<%@include file="footer.jsp"%>
	<!-- Return to Top|ScrollTop -->
	<a href="javascript:" id="return-to-top" title="Về đầu trang"><i
		class="icon-chevron-up"></i></a>
	<script src="<c:url value="/resources/ui/js/scrollTop.js"/>"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>