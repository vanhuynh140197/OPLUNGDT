<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<li aria-current="page" class="breadcrumb-item active">Checkout
								- Address</li>
						</ol>
						</nav>
					</div>
					<div id="checkout" class="col-lg-9">
						<div class="box">
							<form method="get"
								action="<c:url value="/oplungdienthoai/home/thanhtoan2"/>">
								<h1>Checkout - Address</h1>
								<div class="nav flex-column flex-md-row nav-pills text-center">
									<a href="checkout1.html"
										class="nav-link flex-sm-fill text-sm-center active"> <i
										class="fa fa-map-marker"> </i>Address
									</a><a href="#"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-truck"> </i>Delivery Method
									</a><a href="#"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-money"> </i>Payment Method
									</a><a href="#"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-eye"> </i>Order Review
									</a>
								</div>
								<div class="content py-3">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="firstname">Firstname</label> <input
													id="firstname" type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="lastname">Lastname</label> <input id="lastname"
													type="text" class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="company">Company</label> <input id="company"
													type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="street">Street</label> <input id="street"
													type="text" class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
									<div class="row">
										<div class="col-md-6 col-lg-3">
											<div class="form-group">
												<label for="city">Company</label> <input id="city"
													type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-lg-3">
											<div class="form-group">
												<label for="zip">ZIP</label> <input id="zip" type="text"
													class="form-control">
											</div>
										</div>
										<div class="col-md-6 col-lg-3">
											<div class="form-group">
												<label for="state">State</label> <select id="state"
													class="form-control"></select>
											</div>
										</div>
										<div class="col-md-6 col-lg-3">
											<div class="form-group">
												<label for="country">Country</label> <select id="country"
													class="form-control"></select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="phone">Telephone</label> <input id="phone"
													type="text" class="form-control">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="email">Email</label> <input id="email"
													type="text" class="form-control">
											</div>
										</div>
									</div>
									<!-- /.row-->
								</div>
								<div class="box-footer d-flex justify-content-between">
									<a href="<c:url value="/oplungdienthoai/home/giohang"/>"
										class="btn btn-outline-secondary"><i
										class="fa fa-chevron-left"></i>Quay lại</a>
									<button type="submit" class="btn btn-primary">
										Tiếp tục phương thức giao hàng<i class="fa fa-chevron-right"></i>
									</button>
								</div>
							</form>
						</div>
						<!-- /.box-->
					</div>
					<!-- /.col-lg-9-->
					<div class="col-lg-3">
						<div id="order-summary" class="box">
							<div class="box-header">
								<h3 class="mb-0">Hóa đơn</h3>
							</div>
							<p class="text-muted">Vận chuyển và chi phí bổ sung được tính
								dựa trên các giá trị bạn đã nhập.</p>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<td>Tổng tiền hàng:</td>
											<th>$446.00</th>
										</tr>
										<tr>
											<td>Phí vận chuyển:</td>
											<th>$10.00</th>
										</tr>
										<tr>
											<td>Tổng thanh toán:</td>
											<th>$456.00</th>
										</tr>
									</tbody>
								</table>
							</div>
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