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
	href='<c:url value="/resources/admin/css/form/all-type-forms.css"/>'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"
	type="text/javascript"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		var productname = $("#productname");
		var color = $("#color").val();
		var amount = $("#amount");
		var images1 = $("#images1");
		var images2 = $("#images2");
		var prices = $("#prices");
		
		var formAddProduct = $("#formAddProduct");
		var buttonAdd = $("#buttonAdd");
		var checkAll = function() {
			var check = true;
			if (productname.val() === "") {
				check = false;
			}
			if (amount.val() === "") {
				check = false;
			}
			if (prices.val() === "") {
				check = false;
			}
			if (images1.val().length <= 0) {
				check = false;
			}
			if (images2.val().length <= 0) {
				check = false;
			}
			return check;
		};
		var check = function() {
			productname.on("blur", function() {
				if (productname.val() === "") {
					productname.css("border", "solid 1px red");
				} else {
					productname.removeAttr("style");
				}
			});
			amount.on("blur", function() {
				if (amount.val() === "") {
					amount.css("border", "solid 1px red");
				} else {
					amount.removeAttr("style");
				}
			});
			prices.on("blur", function() {
				if (prices.val() === "") {
					prices.css("border", "solid 1px red");
				} else {
					prices.removeAttr("style");
				}
			});
			images1.on("blur", function() {
				if (images1.val().length <= 0) {
					images1.css("border", "solid 1px red");
				} else {
					images1.removeAttr("style");
				}
			});
			images2.on("blur", function() {
				if (images2.val().length <= 0) {
					images2.css("border", "solid 1px red");
				} else {
					images2.removeAttr("style");
				}
			});
		};
		formAddProduct.on('keyup', function(e) {
			e.preventDefault();
			check();
			if (checkAll()) {
				if (images1.val().length > 0 && images2.val().length > 0) {
					buttonAdd.removeAttr("disabled");
					buttonAdd.on('click', function() {
						formAddProduct.submit();
					});
				} else {
					buttonAdd.attr("disabled", "disabled");
				}
			} else {
				buttonAdd.attr("disabled", "disabled");
			}
		});
	});
</script>
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
							src='<c:url value="/resources/admin/images/logo/logo.png"/>'
							alt="" /></a>
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
											<form role="search" class="sr-input-func" action="">
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
													<form
														action='<c:url value="/admin/oplungdienthoai/themsanpham/xuLyThem"/>'
														method="POST" enctype="multipart/form-data"
														id="formAddProduct"
														class="dropzone dropzone-custom needsclick add-professors">
														<div class="row">
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="form-group">
																	<input id="productname" name="productname" type="text"
																		class="form-control" placeholder="Product name">
																</div>
																<div class="file-upload-inner ts-forms">
																	<div class="input prepend-big-btn">
																		<label class="icon-right" for="images1"> <i
																			class="fa fa-download"></i>
																		</label>
																		<div class="file-button">
																			Images 1<input type="file"
																				name="images1"
																				onchange="document.getElementById('images1').value = this.value;">
																		</div>
																		<input type="text" id="images1"
																			placeholder="Choose images">
																	</div>
																</div>
																<div class="file-upload-inner ts-forms">
																	<div class="input prepend-big-btn">
																		<label class="icon-right" for="images2"> <i
																			class="fa fa-download"></i>
																		</label>
																		<div class="file-button">
																			Images 2<input  type="file"
																				name="images2"
																				onchange="document.getElementById('images2').value = this.value;">
																		</div>
																		<input type="text" id="images2"
																			placeholder="Choose images">
																	</div>
																</div>
																<div class="form-group">
																	<select id="color" name="color" class="form-control">
																		<option value="khongmau">Chọn màu sắc...</option>
																		<%
																			String[] mauSacc = { "Đỏ", "Tím", "Vàng", "Trắng", "Đen", "Xám", "Hồng", "Nâu", "Xanh" };
																			for (String mauSac : mauSacc)
																				out.print("<option value=\"" + mauSac + "\">" + mauSac + "</option>");
																		%>
																	</select>
																</div>
																<div class="form-group">
																	<input id="amount" name="amount" type="number" min="1"
																		class="form-control" placeholder="Amount">
																</div>
																<div class="form-group">
																	<input id="prices" name="prices" type="number" min="1"
																		class="form-control" placeholder="Prices">
																</div>
															</div>
															<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																<div class="form-group">
																	<select id="producttype" name="producttype"
																		class="form-control">
																		<c:forEach items="${listProductType}"
																			var="listProductTypes">
																			<option value="${listProductTypes.productTypesId}">${listProductTypes.productTypesName}</option>
																		</c:forEach>
																	</select>
																</div>
																<div class="form-group">
																	<select id="promotions" name="promotions"
																		class="form-control">
																		<c:forEach items="${listPromotions}"
																			var="listPromotion">
																			<option value="${listPromotion.promotionsId}">${listPromotion.promotionsName}</option>
																		</c:forEach>
																	</select>
																</div>
																<div class="form-group res-mg-t-15">
																	<textarea name="description" placeholder="Description"
																		cols="" rows=""></textarea>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-lg-12">
																<div class="payment-adress">
																	<button type="submit" disabled="disabled"
																		id="buttonAdd"
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