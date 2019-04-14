<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Admin | Thêm sản phẩm</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- forms CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/form/all-type-forms.css"/>">

</head>

<body>
	<!-- menu -->
	<%@include file="menu_admin.jsp"%>
	<!-- menu -->
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="logo-pro">
						<a href="index.html"><img class="main-logo"
							src="img/logo/logo.png" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
		<div class="header-advance-area">

			<!-- content -->
			<%@include file="content.jsp"%>
			<!-- content -->
			<div class="breadcome-area" style="margin-top: 6%;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="breadcome-list single-page-breadcome">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<div class="breadcome-heading">
											<form role="search" class="sr-input-func">
												<input type="text" placeholder="Search..."
													class="search-int form-control"> <a href="#"><i
													class="fa fa-search"></i></a>
											</form>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<ul class="breadcome-menu">
											<li><a href="#">Trang chủ</a> <span class="bread-slash">/</span>
											</li>
											<li><a href="#">Sản phẩm</a> <span class="bread-slash">/</span>
											</li>
											<li><span class="bread-blod">Thêm sản phẩm</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Single pro tab review Start-->
		<div class="single-pro-review-area mt-t-30 mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-payment-inner-st">
							<h3>
								<a href="#">Thêm sản phẩm</a>
							</h3>
							<hr>
							<div id="myTabContent" class="tab-content custom-product-edit">
								<div class="product-tab-list tab-pane fade active in"
									id="description">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="review-content-section">
												<div id="dropzone1" class="pro-ad">
													<form action="<c:url value="../upload"/>"
														class="dropzone dropzone-custom needsclick add-professors"
														id="demo1-upload">
														<div class="row">
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="form-group">
																	<input name="firstname" type="text"
																		class="form-control" placeholder="Tên sản phẩm">
																</div>
																<div class="file-upload-inner ts-forms">
																	<div class="input prepend-big-btn">
																		<label class="icon-right" for="prepend-big-btn">
																			<i class="fa fa-download"></i>
																		</label>
																		<div class="file-button">
																			Hình ảnh SP1<input type="file"
																				onchange="document.getElementById('prepend-big-btn').value = this.value;">
																		</div>
																		<input type="text" id="prepend-big-btn"
																			placeholder="Chọn hình ảnh">
																	</div>
																</div>
																<div class="file-upload-inner ts-forms">
																	<div class="input prepend-big-btn">
																		<label class="icon-right" for="prepend-big-btn">
																			<i class="fa fa-download"></i>
																		</label>
																		<div class="file-button">
																			Hình ảnh SP1_1<input type="file"
																				onchange="document.getElementById('prepend-big-btn').value = this.value;">
																		</div>
																		<input type="text" id="prepend-big-btn"
																			placeholder="Chọn hình ảnh">
																	</div>
																</div>
																<div class="form-group">
																	<select name="color" class="form-control">
																		<%
																			String[] mauSacc = { "Màu sắc", "Đỏ", "Tím", "Vàng", "Trắng", "Đen", "Xám", "Hồng", "Nâu", "Xanh" };
																			for (String mauSac : mauSacc)
																				out.print("<option value=\"" + mauSac + "\">" + mauSac + "</option>");
																		%>
																	</select>
																</div>
															</div>
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="form-group">
																	<input name="number" type="number" class="form-control"
																		placeholder="Số lượng">
																</div>
																<div class="form-group res-mg-t-15">
																	<textarea name="description" placeholder="Mô tả"></textarea>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-lg-12">
																<div class="payment-adress">
																	<button type="submit"
																		class="btn btn-primary waves-effect waves-light">Thêm</button>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-copyright-area" style="margin-top: 5%;">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="footer-copy-right">
							<p>
								Design by <a href="#">H&D_16102016</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- End Left menu area -->
</body>
</html>