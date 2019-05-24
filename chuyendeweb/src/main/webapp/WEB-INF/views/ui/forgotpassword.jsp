<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ốp lưng điện thoại giá rẻ|Quên mật khẩu</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resources/ui/css/alertify.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/ui/css/semantic.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/ui/css/semantic.min.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		var email = $('#email');
		var email_ = $('#email_');
		var forgot = $("#forgot");
		var formForgot = $("#formForgot");
		var check = function() {
			email.on("blur", function() {
				if (email.val() === "") {
					email.css("border", "solid 1px red");
					email_.css("color", "red");
					email_.html("Nhập email");
				} else {
					email.removeAttr("style");
					email_.removeAttr("style");
					email_.html("Email <strong style='color:red;'>*</strong>");
				}
			});
		};
		var checkAll = function() {
			var check = true;
			if (email.val() === "") {
				check = false;
			}
			if (!validateEmail(email.val())) {
				check = false;
			}
			return check;
		};
		email.on('keyup', function(e) {
			e.preventDefault();
			if (validateEmail(email.val())) {
				email.removeAttr("style");
				email_.removeAttr("style");
				email_.html("Email <strong style='color:red;'>*</strong>");
			} else {
				email.css("border", "solid 1px red");
				email_.css("color", "red");
				email_.html("Email chưa đúng định dạng");
			}

		});
		formForgot.on('keyup', function(e) {
			e.preventDefault();
			check();
			if (checkAll()) {
				forgot.removeAttr("disabled");
				forgot.on('click', function() {
					formForgot.submit();
				});
			} else {
				forgot.attr("disabled", "disabled");
			}
		});
	});
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
							<li class="breadcrumb-item"><a
								href="<c:url value="/oplungdienthoai/home"/>">Trang chủ</a></li>
							<li aria-current="page" class="breadcrumb-item active">Quên
								mật khẩu</li>
						</ol>
						</nav>
					</div>
					<div class="container ">
						<div class="box">
							<div class="row">
								<div class="col-md-6">
									<h4>Chào mừng bạn đến với Shop Obaju. Bạn quên mật khẩu!</h4>
								</div>
								<div class="col-md-6" align="right">
									Thành viên mới? <i> <a
										href="<c:url value="/oplungdienthoai/dangky"/>"
										style="color: red;">Đăng ký </a>
									</i>&nbsp;tại đây
								</div>
							</div>
							<hr>
							<form id="formForgot"
								action="<c:url value="/oplungdienthoai/xulylaylaimatkhau"/>"
								method="post">
								<div class="content py-3">
									<div class="row">
										<div class="col-md-1"></div>
										<div class="col-md-5">
											<div class="form-group">
												<label id="email_" for="email">Email<strong
													style="color: red;">*</strong></label> <input id="email"
													placeholder="Vui lòng nhập email của bạn" name="email"
													type="text" tabindex="1" class="form-control"
													required=”required”>
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-1"></div>
										<div class="col-md-5">
											<div class="form-group">
												<button type="submit" disabled="disabled" id="forgot"
													class="btn btn-warning1" tabindex="3"
													style="margin-top: 7%; width: 100%;">
													<i class="fas fa-sign-in-alt"></i> Lấy lại mật khẩu
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
	<script src="<c:url value="/resources/ui/js/scrollTop.js"/>"></script>
	<script src="<c:url value="/resources/ui/js/alertify.js"/>"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>