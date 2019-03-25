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
							<li class="breadcrumb-item"><a href="#">Home</a></li>
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
											<li><a href="category.html" class="nav-link">Iphone
													XS Max</a></li>
											<li><a href="category.html" class="nav-link">Iphone
													XS/X</a></li>
											<li><a href="category.html" class="nav-link">Iphone
													8 plus</a></li>
											<li><a href="category.html" class="nav-link">Iphone
													8</a></li>
											<li><a href="category.html" class="nav-link">Iphone
													7 plus</a></li>
											<li><a href="category.html" class="nav-link">Iphone
													7</a></li>
											<li><a href="category.html" class="nav-link">Iphone
													6/6s plus</a></li>
											<li><a href="category.html" class="nav-link">Iphone
													6/6s</a></li>
										</ul></li>
									<li><a href="category.html" class="nav-link active"><i
											class="fas fa-caret-right"></i> SamSung <span
											class="badge badge-light">123</span> </a>
										<ul class="list-unstyled">
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy S10</a></li>
											<li><a href="category.html" class="nav-link">Galaxy
													S10 Plus</a></li>
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy S10E</a></li>
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy M20</a></li>
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy M10</a></li>
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy M30</a></li>
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy S10E</a></li>
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy A50</a></li>
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy A30</a></li>
											<li><a href="category.html" class="nav-link">Samsung
													Galaxy A10</a></li>
										</ul></li>
									<li><a href="category.html" class="nav-link active"><i
											class="fas fa-caret-right"></i> Huawei <span
											class="badge badge-secondary">11</span> </a>

										<ul class="list-unstyled">
											<li><a href="category.html" class="nav-link">Huawei
													Y7 Pro 2019</a></li>
											<li><a href="category.html" class="nav-link">Huawei
													Mate 20 Pro</a></li>
											<li><a href="category.html" class="nav-link">Huawei
													Mate 20</a></li>
											<li><a href="category.html" class="nav-link">Huawei
													Y9 (2019)</a></li>
											<li><a href="category.html" class="nav-link">Huawei
													Nova 3i</a></li>
											<li><a href="category.html" class="nav-link">Huawei
													Nova 3</a></li>
											<li><a href="category.html" class="nav-link">Huawei
													P20 Pro</a></li>
											<li><a href="category.html" class="nav-link">Huawei
													Nova 3e</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
						<div class="card sidebar-menu mb-4">
							<div class="card-header">
								<h3 class="h4 card-title">
									Brands <a href="#" class="btn btn-sm btn-danger pull-right"><i
										class="fa fa-times-circle"></i> Clear</a>
								</h3>
							</div>
							<div class="card-body">
								<form>
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Armani (10)
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"> Versace (12)
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"> Carlo Bruni
												(15)
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"> Jack Honey
												(14)
											</label>
										</div>
									</div>
									<button class="btn btn-default btn-sm btn-primary">
										<i class="fa fa-pencil"></i> Apply
									</button>
								</form>
							</div>
						</div>
						<div class="card sidebar-menu mb-4">
							<div class="card-header">
								<h3 class="h4 card-title">
									Colours <a href="#" class="btn btn-sm btn-danger pull-right"><i
										class="fa fa-times-circle"></i> Clear</a>
								</h3>
							</div>
							<div class="card-body">
								<form>
									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"><span
												class="colour white"></span> White (14)
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"><span
												class="colour blue"></span> Blue (10)
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"><span
												class="colour green"></span> Green (20)
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"><span
												class="colour yellow"></span> Yellow (13)
											</label>
										</div>
										<div class="checkbox">
											<label> <input type="checkbox"><span
												class="colour red"></span> Red (10)
											</label>
										</div>
									</div>
									<button class="btn btn-default btn-sm btn-primary">
										<i class="fa fa-pencil"></i> Apply
									</button>
								</form>
							</div>
						</div>
						<!-- *** MENUS AND FILTERS END ***-->
						<div class="banner">
							<a href="#"><img src="img/banner.jpg" alt="sales 2014"
								class="img-fluid"></a>
						</div>
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
									<h1 class="text-center">White Blouse Armani</h1>
									<p class="goToDescription">
										<a href="#details" class="scroll-to">Scroll to product
											details, material &amp; care and sizing</a>
									</p>
									<p class="price">$124.00</p>
									<p class="text-center buttons">
										<a href="<c:url value="/oplungdienthoai/home/giohang"/>"
											class="btn btn-primary"><i class="fa fa-shopping-cart"></i>
											Add to cart</a><a href="basket.html"
											class="btn btn-outline-primary"><i class="fa fa-heart"></i>
											Add to wishlist</a>
									</p>
								</div>
								<div data-slider-id="1" class="owl-thumbs">
									<button class="owl-thumb-item">
										<img src="img/detailsquare.jpg" alt="" class="img-fluid">
									</button>
									<button class="owl-thumb-item">
										<img src="img/detailsquare2.jpg" alt="" class="img-fluid">
									</button>
									<button class="owl-thumb-item">
										<img src="img/detailsquare3.jpg" alt="" class="img-fluid">
									</button>
								</div>
							</div>
						</div>
						<div id="details" class="box">
							<p></p>
							<h4>Product details</h4>
							<p>White lace top, woven, has a round neck, short sleeves,
								has knitted lining attached</p>
							<h4>Material &amp; care</h4>
							<ul>
								<li>Polyester</li>
								<li>Machine wash</li>
							</ul>
							<h4>Size &amp; Fit</h4>
							<ul>
								<li>Regular fit</li>
								<li>The model (height 5'8" and chest 33") is wearing a size
									S</li>
							</ul>
							<blockquote>
								<p>
									<em>Define style this season with Armani's new range of
										trendy tops, crafted with intricate details. Create a chic
										statement look by teaming this lace number with skinny jeans
										and pumps.</em>
								</p>
							</blockquote>
							<hr>
							<div class="social">
								<h4>Show it to your friends</h4>
								<p>
									<a href="#" class="external facebook"><i
										class="fa fa-facebook"></i></a><a href="#" class="external gplus"><i
										class="fa fa-google-plus"></i></a><a href="#"
										class="external twitter"><i class="fa fa-twitter"></i></a><a
										href="#" class="email"><i class="fa fa-envelope"></i></a>
								</p>
							</div>
						</div>
						<div class="row same-height-row">
							<div class="col-md-3 col-sm-6">
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
						<div class="row same-height-row">
							<div class="col-md-3 col-sm-6">
								<div class="box same-height">
									<h3>Products viewed recently</h3>
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
					<!-- /.col-md-9-->
				</div>
			</div>
		</div>
	</div>
	<!--  *** FOOTER *** -->
	<%@include file="footer.jsp"%>
</body>
</html>