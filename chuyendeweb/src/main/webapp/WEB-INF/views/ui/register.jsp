<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
										href="<c:url value="/oplungdienthoai/home/dangnhap"/>"
										style="color: red;">Đăng nhập </a>
									</i>&nbsp;tại đây
								</div>
							</div>

							<hr>
							<form action="" method="post">
								<div class="content py-3">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="email">Địa chỉ email<strong
													style="color: red;">*</strong></label> <input id="email"
													placeholder="Vui lòng nhập email của bạn" type="text"
													class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="name">Tên<strong style="color: red;">*</strong></label>
												<input id="name" type="text" placeholder="Họ và tên"
													class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="pass">Mật khẩu<strong
													style="color: red;">*</strong></label> <input id="pass" type="text"
													placeholder="Tối đa 6 kí tự bao gồm cả chữ và số"
													class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="text-center">
												<button type="submit" class="btn btn-warning1"
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
												<label for="re-pass">Nhập lại mật khẩu<strong
													style="color: red;">*</strong></label> <input id="city" type="text"
													class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<input type="checkbox"> Tôi đồng ý các điều khoản
												trên<br> <br>
												<p>
													<i class="fab fa-jedi-order"></i> Hoặc đăng ký với
												</p>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="phone">Số điện thoại<strong
													style="color: red;">*</strong></label> <input id="phone"
													type="number" class="form-control">
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
	<script src="<c:url value="/resources/ui/js/scrollTop.js"/>"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>