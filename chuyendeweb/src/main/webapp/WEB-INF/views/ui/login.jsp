<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ốp lưng điện thoại giá rẻ|Đăng nhập</title>
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
		$('#formLogin').on('submit', function(e) {
			e.preventDefault();
			$.ajax({
				type : 'POST',
				url : '<c:url value="/oplungdienthoai/home/login/ajax"/>',
				data : {
					email : $('#email').val().trim(),
					password : $('#password').val().trim()
				},
				success : function(data) {
					if(data === 'error'){
						alertify.alert('Tên đăng nhập hoặc mật khẩu không chính xác.');
						setTimeout(function(){
							alertify.closeAll();
							window.location.reload();
						}, 2000);
					}else{
						window.location = '<c:url value="/oplungdienthoai/home"/>';
					}
				},
				error : function(error) {

				}
			});

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
							<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
							<li aria-current="page" class="breadcrumb-item active">Đăng
								nhập</li>
						</ol>
						</nav>
					</div>
					<div class="container ">
						<div class="box">
							<div class="row">
								<div class="col-md-6">
									<h4>Chào mừng bạn đến với Shop Obaju. Đăng nhập ngay!</h4>
								</div>
								<div class="col-md-6" align="right">
									Thành viên mới? <i> <a
										href="<c:url value="/oplungdienthoai/home/dangky"/>"
										style="color: red;">Đăng ký </a>
									</i>&nbsp;tại đây
								</div>
							</div>
							<hr>
							<form id="formLogin" action="" method="post">
								<div class="content py-3">
									<div class="row">
										<div class="col-md-1"></div>
										<div class="col-md-5">
											<div class="form-group">
												<label for="email">Email<strong style="color: red;">*</strong></label>
												<input id="email" placeholder="Vui lòng nhập email của bạn"
													type="text" tabindex="1" class="form-control" required=”required”>
											</div>
										</div>
										<div class="col-md-1"></div>
										<div class="col-md-4">
											<button type="submit" class="btn btn-warning1" tabindex="3"
												style="margin-top: 7%; width: 100%;">
												<i class="fas fa-sign-in-alt"></i> Đăng nhập
											</button>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-1"></div>
										<div class="col-md-5">
											<div class="form-group">
												<label for="password">Mật khẩu<strong
													style="color: red;">*</strong></label> <input id="password"
													type="password" tabindex="2"
													placeholder="Tối đa 6 kí tự bao gồm cả chữ và số"
													class="form-control" required=”required”>
											</div>
										</div>
										<div class="col-md-1"></div>
										<div class="col-md-4" style="margin-top: -1%;">
											<p>
												<i class="fab fa-jedi-order"></i> Hoặc đăng nhập bằng
											</p>
											<div class="form-group">
												<div class="row">
													<div class="col-md-6">
														<button type="submit" class="btn btn-primary"
															style="width: 100%; height: 40px;" tabindex="4">
															<i class="fab fa-facebook-f"></i> Facebook
														</button>
													</div>
													<div class="col-md-6">
														<button type="submit" class="btn btn-danger"
															style="width: 100%; height: 40px;" tabindex="5">
															<i class="fab fa-google-plus-g"></i> Google
														</button>
													</div>
												</div>
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