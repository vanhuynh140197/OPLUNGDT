<%@page import="com.oplungdienthoai.model.CustomersEntity"%>
<%@page import="java.util.List"%>
<%@page import="com.oplungdienthoai.model.GioHang"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Obaju| Thanh toán hóa đơn</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"
	type="text/javascript"></script>
</head>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var email = $('#email');
						var email_ = $('#email_');
						var name = $('#name');
						var name_ = $('#name_');
						var address = $('#address');
						var address_ = $('#address_');
						var phone = $('#phone');
						var phone_ = $('#phone_');
						var dateofbirth = $('#dateofbirth');
						var dateofbirth_ = $('#dateofbirth_');

						var formCustomer = $('#formCustomer');
						var buttonCustomer = $('#buttonCustomer');

						var check = function() {
							email
									.on(
											"blur",
											function() {
												if (email.val() === "") {
													email.css("border",
															"solid 1px red");
													email_.css("color", "red");
													email_.html("Nhập email:");
												} else {
													email.removeAttr("style");
													email_.removeAttr("style");
													email_
															.html("<strong style='color:red;'>*</strong> Email:");
												}
											});
							name
									.on(
											"blur",
											function() {
												if (name.val() === "") {
													name.css("border",
															"solid 1px red");
													name_.css("color", "red");
													name_
															.html("Nhập họ và tên:");
												} else {
													name.removeAttr("style");
													name_.removeAttr("style");
													name_
															.html("<strong style='color:red;'>*</strong> Họ và tên:");
												}
											});
							address
									.on(
											"blur",
											function() {
												if (address.val() === "") {
													address.css("border",
															"solid 1px red");
													address_
															.css("color", "red");
													address_
															.html("Nhập địa chỉ:");
												} else {
													address.removeAttr("style");
													address_
															.removeAttr("style");
													address_
															.html("<strong style='color:red;'>*</strong> Địa chỉ:");
												}
											});
							phone
									.on(
											"blur",
											function() {
												if (phone.val() === "") {
													phone.css("border",
															"solid 1px red");
													phone_.css("color", "red");
													phone_
															.html("Nhập số điện thoại:");
												} else if (!validatePhone(phone
														.val())) {
													phone.css("border",
															"solid 1px red");
													phone_.css("color", "red");
													phone_
															.html("Số điện thoại chưa đúng định dạng:");
												} else {
													phone.removeAttr("style");
													phone_.removeAttr("style");
													phone_
															.html("<strong style='color:red;'>*</strong> Số điện thoại:");
												}
											});
							dateofbirth
									.on(
											"blur",
											function() {
												if (dateofbirth.val() === "") {
													dateofbirth.css("border",
															"solid 1px red");
													dateofbirth_.css("color",
															"red");
													dateofbirth_
															.html("Nhập ngày sinh:");
												} else {
													dateofbirth
															.removeAttr("style");
													dateofbirth_
															.removeAttr("style");
													dateofbirth_
															.html("<strong style='color:red;'>*</strong> Ngày sinh:");
												}
											});
						};

						var checkAll = function() {
							var check = true;
							if (email.val() === "") {
								check = false;
							}
							if (name.val() === "") {
								check = false;
							}
							if (address.val() === "") {
								check = false;
							}
							if (dateofbirth.val() === "") {
								check = false;
							}
							if (phone.val() === "") {
								check = false;
							}
							if (!validatePhone(phone.val())) {
								check = false;
							}
							return check;
						};
						email
								.on(
										'keyup',
										function(e) {
											e.preventDefault();
											if (validateEmail(email.val())) {
												email.removeAttr("style");
												email_.removeAttr("style");
												email_
														.html("<strong style='color:red;'>*</strong> Email:");
											} else {
												email.css("border",
														"solid 1px red");
												email_.css("color", "red");
												email_
														.html("Email chưa đúng định dạng");
											}
										});
						formCustomer
								.on(
										'keyup',
										function(e) {
											e.preventDefault();
											check();
											if (checkAll()) {
												if (validateEmail(email.val())) {
													email.removeAttr("style");
													email_.removeAttr("style");
													email_
															.html("<strong style='color:red;'>*</strong> Email:");
													buttonCustomer
															.removeAttr("disabled");
													buttonCustomer
															.on(
																	'click',
																	function() {
																		formCustomer
																				.submit();
																	});
												} else {
													email.css("border",
															"solid 1px red");
													email_.css("color", "red");
													email_
															.html("Email chưa đúng định dạng");
												}
											} else {
												buttonCustomer.attr("disabled",
														"disabled");
											}
										});
					});
	function validatePhone(txtPhone) {
		var filter = /^[0-9-+]+$/;
		if (filter.test(txtPhone + "") && txtPhone.length >= 10
				&& txtPhone.length < 12) {
			return true;
		} else {
			return false;
		}
	}

	function validateEmail(email) {
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		return re.test(String(email).toLowerCase());
	}
</script>
<body>
	<%!public String formatNumberGiaBan(Double giaban) {
		DecimalFormat decimalFormat = new DecimalFormat("###,###");
		return decimalFormat.format(giaban);
	}%>
	<!-- menu -->
	<%
		List<GioHang> gioHang = (List<GioHang>) session.getAttribute("gio_hang");
	%>
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
							<li aria-current="page" class="breadcrumb-item active">Thanh
								toán</li>
						</ol>
						</nav>
					</div>
					<%
						CustomersEntity customersEntity = session.getAttribute("customer") == null ? null
								: (CustomersEntity) session.getAttribute("customer");
						if (customersEntity == null) {
					%>
					<div id="checkout" class="col-lg-9">
						<div class="box">
							<form method="post" id="formCustomer"
								action="<c:url value="/oplungdienthoai/thanhtoan2"/>">
								<h3>Thanh toán</h3>
								<div class="nav flex-column flex-md-row nav-pills text-center">
									<a href="<c:url value="/oplungdienthoai/thanhtoan"/>"
										class="nav-link flex-sm-fill text-sm-center active"> <i
										class="fa fa-map-marker"> </i>Địa chỉ nhận hàng
									</a><a href="<c:url value="/oplungdienthoai/thanhtoan2"/>"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-truck"> </i>Đơn vị vận chuyển
									</a><a href="<c:url value="/oplungdienthoai/thanhtoan3"/>"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-money"> </i>Phương thức thanh toán
									</a><a href="<c:url value="/oplungdienthoai/thanhtoan4"/>"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-eye"> </i>Tổng hóa đơn
									</a>
								</div>
								<div class="content py-3" style="margin-left: 12%;">
									<!-- /.row-->
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="email_" for="email"><strong
													style="color: red;">*</strong>Email:</label> <input id="email"
													name="email" type="text" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="name_" for="name"><strong
													style="color: red;">*</strong> Họ và Tên </label> <input id="name"
													name="name" type="text" class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="address_" for="address"><strong
													style="color: red;">*</strong> Địa chỉ:</label> <input id="address"
													type="text" name="address" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="dateofbirth_" for="dateofbirth"><strong
													style="color: red;">*</strong> Ngày sinh:</label> <input
													id="dateofbirth" name="dateofbirth" type="date"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="phone_" for="phone"><strong
													style="color: red;">*</strong> Số điện thoại:</label> <input
													id="phone" type="number" name="phone" class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
								</div>

								<div class="box-footer d-flex justify-content-between">
									<a href="<c:url value="/oplungdienthoai/giohangcuaban"/>"
										class="btn btn-outline-secondary"><i
										class="fa fa-chevron-left"></i>Quay lại</a>
									<button id="buttonCustomer" type="submit" disabled="disabled"
										class="btn btn-primary5">
										Tiếp tục phương thức giao hàng<i class="fa fa-chevron-right"></i>
									</button>
								</div>
							</form>
						</div>
						<!-- /.box-->
					</div>
					<%
						} else {
					%>
					<div id="checkout" class="col-lg-9">
						<div class="box">
							<form method="post" id="formCustomer"
								action="<c:url value="/oplungdienthoai/thanhtoans2"/>">
								<h3>Thanh toán</h3>
								<div class="nav flex-column flex-md-row nav-pills text-center">
									<a href="<c:url value="/oplungdienthoai/thanhtoan"/>"
										class="nav-link flex-sm-fill text-sm-center active"> <i
										class="fa fa-map-marker"> </i>Địa chỉ nhận hàng
									</a><a href="<c:url value="/oplungdienthoai/thanhtoan2"/>"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-truck"> </i>Đơn vị vận chuyển
									</a><a href="<c:url value="/oplungdienthoai/thanhtoan3"/>"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-money"> </i>Phương thức thanh toán
									</a><a href="<c:url value="/oplungdienthoai/thanhtoan4"/>"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-eye"> </i>Tổng hóa đơn
									</a>
								</div>
								<div class="content py-3" style="margin-left: 12%;">
									<!-- /.row-->
									<div class="row" style="display: none;">
										<div class="col-md-10">
											<div class="form-group">
												<label id="customerid" for="customerid"><strong
													style="color: red;">*</strong>CustomerID:</label> <input
													id="customerid" name="customerid" type="text"
													value="<%=customersEntity.getCustomersId().trim()%>"
													readonly="readonly" class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="email_" for="email"><strong
													style="color: red;">*</strong>Email:</label> <input id="email"
													name="email" type="text"
													value="<%=customersEntity.getEmail().trim()%>"
													class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="name_" for="name"><strong
													style="color: red;">*</strong> Họ và Tên </label> <input id="name"
													name="name"
													value="<%=customersEntity.getCustomersName().trim()%>"
													type="text" class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="address_" for="address"><strong
													style="color: red;">*</strong> Địa chỉ:</label> <input id="address"
													type="text"
													value="<%=customersEntity.getAddress().trim()%>"
													name="address" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="dateofbirth_" for="dateofbirth"><strong
													style="color: red;">*</strong> Ngày sinh:</label> <input
													id="dateofbirth"
													value="<%=customersEntity.getDateBirth()%>"
													name="dateofbirth" type="date" class="form-control">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-10">
											<div class="form-group">
												<label id="phone_" for="phone"><strong
													style="color: red;">*</strong> Số điện thoại:</label> <input
													id="phone" value="<%=customersEntity.getPhone().trim()%>"
													type="number" name="phone" class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
								</div>

								<div class="box-footer d-flex justify-content-between">
									<a href="<c:url value="/oplungdienthoai/giohangcuaban"/>"
										class="btn btn-outline-secondary"><i
										class="fa fa-chevron-left"></i>Quay lại</a>
									<button id="buttonCustomer" type="submit"
										class="btn btn-primary5">
										Tiếp tục phương thức giao hàng<i class="fa fa-chevron-right"></i>
									</button>
								</div>
							</form>
						</div>
						<!-- /.box-->
					</div>
					<%
						}
					%>
					<!-- /.col-lg-9-->
					<div class="col-lg-3">
						<div id="order-summary" class="box">
							<div class="box-header">
								<h3 class="mb-0">Hóa đơn</h3>
							</div>
							<p class="text-muted">Vận chuyển và chi phí bổ sung được tính
								dựa trên các giá trị bạn đã nhập.</p>
							<div class="table-responsive">
								<%
									double totalPrices = 0;
									for (GioHang gh : gioHang) {
										totalPrices += (gh.getSoLuong() * gh.getProductsEntity().getPrices())
												- (gh.getSoLuong() * gh.getProductsEntity().getPrices()
														* gh.getProductsEntity().getPromotionByPromotionsId().getPromotionValues());
									}
								%>
								<table class="table">
									<tbody>
										<tr>
											<td>Tổng tiền hàng:</td>
											<th class="totals-value" id="cart-total1" style="width: 60%"><%=formatNumberGiaBan(totalPrices)%>
												đ</th>
										</tr>
										<tr>
											<td>Phí vận chuyển:</td>
											<th></th>
										</tr>
										<tr>
											<td>Tổng thanh toán:</td>
											<th class="totals-value" id="cart-total2"><%=formatNumberGiaBan(totalPrices)%>
												đ</th>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="box">
							<div class="box-header">
								<h4 class="mb-0">Lời nhắn</h4>
							</div>
							<p class="text-muted">Để lại lời nhắn cho người bán.</p>
							<form action="">
								<div class="input-group">
									<input type="text" class="form-control"><span
										class="input-group-append">
										<button type="button" class="btn btn-primary1">
											<i class="fa fa-gift"></i>
										</button>
									</span>
								</div>
								<!-- /input-group-->
							</form>
						</div>
					</div>
					<!-- /.col-lg-3-->
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