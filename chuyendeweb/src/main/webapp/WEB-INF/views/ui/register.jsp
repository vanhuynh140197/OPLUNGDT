<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ốp lưng điện thoại giá rẻ|Đăng ký</title>
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
						var pass = $('#pass');
						var pass_ = $('#pass_');
						var re_pass = $('#re_pass');
						var re_pass_ = $('#re_pass_');
						var phone = $('#phone');
						var phone_ = $('#phone_');
						var isCheckBox = $('#isCheckBox');
						var formRegister = $('#formRegister');
						var register = $('#register');

						var check = function() {
							email
									.on(
											"blur",
											function() {
												if (email.val() === "") {
													email.css("border",
															"solid 1px red");
													email_.css("color", "red");
													email_.html("Nhập email");
												} else {
													email.removeAttr("style");
													email_.removeAttr("style");
													email_
															.html("Email <strong style='color:red;'>*</strong>");
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
													name_.html("Nhập tên");
												} else {
													name.removeAttr("style");
													name_.removeAttr("style");
													name_
															.html("Tên <strong style='color:red;'>*</strong>");
												}
											});
							pass
									.on(
											"blur",
											function() {
												if (pass.val() === "") {
													pass.css("border",
															"solid 1px red");
													pass_.css("color", "red");
													pass_
															.html("Nhập mật khẩu");
												} else {
													pass.removeAttr("style");
													pass_.removeAttr("style");
													pass_
															.html("Mật khẩu <strong style='color:red;'>*</strong>");
												}
											});
							re_pass
									.on(
											"blur",
											function() {
												if (re_pass.val() != pass.val()) {
													re_pass.css("border",
															"solid 1px red");
													re_pass_
															.css("color", "red");
													re_pass_
															.html("Nhập mật khẩu chưa trùng");
												} else if (re_pass.val() === "") {
													re_pass.css("border",
															"solid 1px red");
													re_pass_
															.css("color", "red");
													re_pass_
															.html("Chưa nhập lại mật khẩu");
												} else {
													re_pass.removeAttr("style");
													re_pass_
															.removeAttr("style");
													re_pass_
															.html("Nhập lại mật khẩu <strong style='color:red;'>*</strong>");
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
															.html("Nhập số điện thoại");
												} else if (!validatePhone(phone
														.val())) {
													phone.css("border",
															"solid 1px red");
													phone_.css("color", "red");
													phone_
															.html("Số điện thoại chưa đúng định dạng");
												} else {
													phone.removeAttr("style");
													phone_.removeAttr("style");
													phone_
															.html("Số điện thoại <strong style='color:red;'>*</strong>");
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
							if (pass.val() === "") {
								check = false;
							}
							if (re_pass.val() === "") {
								check = false;
							}
							if (re_pass.val() != pass.val()) {
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
						isCheckBox.click(function() {
							if (isCheckBox.prop('checked') === true) {
								alert("Bạn đồng ý với các điều khoản.");
							} else {
								alert("Bạn không đồng ý với các điều khoản.");
							}
						});
						email
								.on(
										'keyup',
										function(e) {
											e.preventDefault();
											if (validateEmail(email.val())) {
												email.removeAttr("style");
												email_.removeAttr("style");
												email_
														.html("Email <strong style='color:red;'>*</strong>");
												$
														.ajax({
															type : 'POST',
															url : '<c:url value="/oplungdienthoai/register/ajax"/>',
															data : {
																email : email
																		.val()
																		.trim()
															},
															success : function(
																	data) {
																if (data === 'success') {
																} else {
																	email
																			.css(
																					"border",
																					"solid 1px red");
																	email_
																			.css(
																					"color",
																					"red");
																	email_
																			.html("Email đã tồn tại");
																}
															},
															error : function(
																	error) {
																console
																		.log("error"
																				+ error);
															}
														})
											} else {
												email.css("border",
														"solid 1px red");
												email_.css("color", "red");
												email_
														.html("Email chưa đúng định dạng");
											}

										});
						formRegister
								.on(
										'keyup',
										function(e) {
											e.preventDefault();
											check();
											if (checkAll()) {
												if (isCheckBox.prop('checked') == true) {
													$
															.ajax({
																type : 'POST',
																url : '<c:url value="/oplungdienthoai/register/ajax"/>',
																data : {
																	email : email
																			.val()
																			.trim()
																},
																success : function(
																		data) {
																	if (data === 'success') {
																		register
																				.removeAttr("disabled");
																		register
																				.on(
																						'click',
																						function() {
																							formRegister
																									.submit();
																						});
																	} else {
																		register
																				.attr(
																						"disabled",
																						"disabled");
																		email
																				.css(
																						"border",
																						"solid 1px red");
																		email_
																				.css(
																						"color",
																						"red");
																		email_
																				.html("Email đã tồn tại");
																	}
																},
																error : function(
																		error) {
																	console
																			.log("error"
																					+ error);
																}
															})
												} else {
													register.attr("disabled",
															"disabled");
												}
											} else {
												register.attr("disabled",
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
							<li aria-current="page" class="breadcrumb-item active">Đăng
								ký tài khoản</li>
						</ol>
						</nav>
					</div>
					<div class="container ">
						<div class="box">
							<div class="row">
								<div class="col-md-6">
									<h3>Tạo tài khoản</h3>
								</div>
								<div class="col-md-6" align="right">
									Bạn đã là thành viên? <i> <a
										href='<c:url value="/oplungdienthoai/dangnhap"/>'
										style="color: red;">Đăng nhập </a>
									</i>&nbsp;tại đây
								</div>
							</div>

							<hr>
							<form id="formRegister"
								action='<c:url value="/oplungdienthoai/register"/>'
								method="post">
								<div class="content py-3">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label id="email_" for="email">Email<strong
													style="color: red;">*</strong></label> <input id="email"
													placeholder="Vui lòng nhập email của bạn" name="email"
													type="text" class="form-control" required="”required”">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label id="name_" for="name">Tên<strong
													style="color: red;">*</strong></label> <input id="name" name="name"
													type="text" placeholder="Họ và tên" class="form-control"
													required="”required”">
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label id="pass_" for="pass">Mật khẩu<strong
													style="color: red;">*</strong></label> <input id="pass"
													type="password" name="pass"
													placeholder="Tối đa 6 kí tự bao gồm cả chữ và số"
													class="form-control" required="”required”">
											</div>
										</div>
										<div class="col-md-6">
											<div class="text-center">
												<button disabled="disabled" id="register" type="submit"
													class="btn btn-warning1"
													style="margin-top: 2%; width: 100%; height: 50px;">
													<i class="fas fa-sign-out-alt"></i> Đăng ký
												</button>
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label id="re_pass_" for="re_pass">Nhập lại mật khẩu<strong
													style="color: red;">*</strong></label> <input id="re_pass"
													name="re_pass" type="password" class="form-control"
													required="”required”">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<input type="checkbox" id="isCheckBox"> Tôi đồng ý
												các điều khoản trên<br> <br>
												<p>
													<i class="fab fa-jedi-order"></i> Hoặc đăng ký với
												</p>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label id="phone_" for="phone">Số điện thoại<strong
													style="color: red;">*</strong></label> <input id="phone"
													type="number" name="phone" class="form-control"
													required="”required”">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<div class="row">
													<div class="col-md-6">
														<button type="submit" class="btn btn-primary"
															style="width: 100%; height: 50px;">
															<i class="fab fa-facebook-f"></i> Facebook
														</button>
													</div>
													<div class="col-md-6">
														<button type="submit" class="btn btn-danger"
															style="width: 100%; height: 50px;">
															<i class="fab fa-google-plus-g"></i> Google
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- /.row-->
								</div>
							</form>
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
	<script src='<c:url value="/resources/ui/js/scrollTop.js"/>'
		type="text/javascript"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>