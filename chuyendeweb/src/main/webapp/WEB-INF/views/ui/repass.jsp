<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ốp lưng điện thoại giá rẻ|Đổi mật khẩu</title>
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
						var matkhaucu = $('#matkhaucu');
						var matkhaucu_ = $('#matkhaucu_');
						var matkhaumoi = $('#matkhaumoi');
						var matkhaumoi_ = $('#matkhaumoi_');
						var rematkhaumoi = $('#rematkhaumoi');
						var rematkhaumoi_ = $('#rematkhaumoi_');
						var formDoiMatKhau = $('#formDoiMatKhau');
						var doimatkhau = $('#doimatkhau');

						var check = function() {
							matkhaucu
									.on(
											"blur",
											function() {
												if (matkhaucu.val() === "") {
													matkhaucu.css("border",
															"solid 1px red");
													matkhaucu_.css("color",
															"red");
													matkhaucu_
															.html("Nhập mật khẩu cũ");
												} else {
													matkhaucu
															.removeAttr("style");
													matkhaucu_
															.removeAttr("style");
													matkhaucu_
															.html("Mật khẩu cũ <strong style='color:red;'>*</strong>");
												}
											});
							matkhaumoi
									.on(
											"blur",
											function() {
												if (matkhaumoi.val() === "") {
													matkhaumoi.css("border",
															"solid 1px red");
													matkhaumoi_.css("color",
															"red");
													matkhaumoi_
															.html("Nhập mật khẩu mới");
												} else {
													matkhaumoi
															.removeAttr("style");
													matkhaumoi_
															.removeAttr("style");
													matkhaumoi_
															.html("Mật khẩu mới <strong style='color:red;'>*</strong>");
												}
											});
							rematkhaumoi
									.on(
											"blur",
											function() {
												if (rematkhaumoi.val() != matkhaumoi
														.val()) {
													rematkhaumoi.css("border",
															"solid 1px red");
													rematkhaumoi_.css("color",
															"red");
													rematkhaumoi_
															.html("Nhập mật khẩu mới chưa trùng");
												} else if (rematkhaumoi.val() === "") {
													rematkhaumoi.css("border",
															"solid 1px red");
													rematkhaumoi_.css("color",
															"red");
													rematkhaumoi_
															.html("Chưa nhập lại mật khẩu mới");
												} else {
													rematkhaumoi
															.removeAttr("style");
													rematkhaumoi_
															.removeAttr("style");
													rematkhaumoi_
															.html("Nhập lại mật khẩu mới <strong style='color:red;'>*</strong>");
												}
											});
						};

						var checkAll = function() {
							var check = true;
							if (matkhaucu.val() === "") {
								check = false;
							}
							if (matkhaumoi.val() === "") {
								check = false;
							}
							if (rematkhaumoi.val() === "") {
								check = false;
							}
							if (rematkhaumoi.val() != matkhaumoi.val()) {
								check = false;
							}
							return check;
						};
						matkhaucu
								.on(
										'keyup',
										function(e) {
											e.preventDefault();
											$
													.ajax({
														type : 'POST',
														url : '<c:url value="/oplungdienthoai/doimatkhau/ajax"/>',
														data : {
															username : $(
																	"#username")
																	.val()
																	.trim(),
															matkhaucu : matkhaucu
																	.val()
																	.trim()
														},
														success : function(data) {
															if (data === 'success') {
															} else {
																matkhaucu
																		.css(
																				"border",
																				"solid 1px red");
																matkhaucu_
																		.css(
																				"color",
																				"red");
																matkhaucu_
																		.html("Mật khẩu cũ chưa đúng");
															}
														},
														error : function(error) {
															console.log("error"
																	+ error);
														}
													})
										});
						formDoiMatKhau
								.on(
										'keyup',
										function(e) {
											e.preventDefault();
											check();
											if (checkAll()) {
												$
														.ajax({
															type : 'POST',
															url : '<c:url value="/oplungdienthoai/doimatkhau/ajax"/>',
															data : {
																username : $(
																		"#username")
																		.val()
																		.trim(),
																matkhaucu : matkhaucu
																		.val()
																		.trim()
															},
															success : function(
																	data) {
																if (data === 'success') {
																	doimatkhau
																			.removeAttr("disabled");
																	doimatkhau
																			.on(
																					'click',
																					function() {
																						formDoiMatKhau
																								.submit();
																					});
																} else {
																	doimatkhau
																			.attr(
																					"disabled",
																					"disabled");
																	matkhaucu
																			.css(
																					"border",
																					"solid 1px red");
																	matkhaucu_
																			.css(
																					"color",
																					"red");
																	matkhaucu_
																			.html("Mật khẩu cũ chưa đúng");
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
												doimatkhau.attr("disabled",
														"disabled");
											}
										});
					});
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
							<li class="breadcrumb-item"><a
								href="<c:url value="/oplungdienthoai/home"/>">Trang chủ</a></li>
							<li aria-current="page" class="breadcrumb-item active">Đổi
								mật khẩu</li>
						</ol>
						</nav>
					</div>
					<div class="container ">
						<div class="box">
							<div class="row">
								<div class="col-md-6">
									<h3>Đổi mật khẩu</h3>
								</div>
								<div class="col-md-6" align="right">
									Thành viên mới? <i> <a
										href="<c:url value="/oplungdienthoai/dangky"/>"
										style="color: red;">Đăng ký </a>
									</i>&nbsp;tại đây
								</div>
							</div>

							<hr>
							<form id="formDoiMatKhau"
								action='<c:url value="/oplungdienthoai/xulydoimatkhau"/>'
								method="post">
								<div class="content py-3">
									<div class="row">
										<div class="col-md-6" style="display: none;">
											<div class="form-group">
												<label id="username_" for="username">UserName<strong
													style="color: red;">*</strong></label> <input id="username"
													placeholder="Vui lòng nhập user name" name="username"
													value="${doiMatKhauUserName.userName.trim()}" type="text"
													class="form-control" required="”required”"
													readonly="readonly">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label id="matkhaucu_" for="matkhaucu">Mật khẩu cũ<strong
													style="color: red;">*</strong></label> <input id="matkhaucu"
													placeholder="Vui lòng nhập mật khẩu cũ" name="matkhaucu"
													type="password" class="form-control" required="”required”">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label id="matkhaumoi_" for="matkhaumoi">Mật khẩu
													mới<strong style="color: red;">*</strong>
												</label> <input id="matkhaumoi" name="matkhaumoi" type="password"
													placeholder="Vui lòng nhập mật khẩu mới"
													class="form-control" required="”required”">
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label id="rematkhaumoi_" for="rematkhaumoi">Nhập
													lại mật khẩu mới<strong style="color: red;">*</strong>
												</label> <input id="rematkhaumoi" type="password"
													name="rematkhaumoi"
													placeholder="Vui lòng nhập lại mật khẩu mới"
													class="form-control" required="”required”">
											</div>
										</div>
										<div class="col-md-6">
											<div class="text-center">
												<button disabled="disabled" id="doimatkhau" type="submit"
													class="btn btn-warning1"
													style="margin-top: 2%; width: 100%; height: 50px;">
													<i class="fas fa-sign-out-alt"></i> Đổi mật khẩu
												</button>
											</div>
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