<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Obaju| Thanh toán</title>
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
							<li aria-current="page" class="breadcrumb-item active">Thanh
								toán</li>
						</ol>
						</nav>
					</div>
					<div id="checkout" class="col-lg-9">
						<div class="box">
							<form method="get"
								action="<c:url value="/oplungdienthoai/home/thanhtoan3"/>">
								<h3>Thanh toán</h3>
								<div class="nav flex-column flex-sm-row nav-pills">
									<a href="<c:url value="/oplungdienthoai/home/thanhtoan"/>"
										class="nav-link flex-sm-fill text-sm-center disabled "> <i
										class="fa fa-map-marker"> </i>Địa chỉ nhận hàng
									</a><a href="<c:url value="/oplungdienthoai/home/thanhtoan2"/>"
										class="nav-link flex-sm-fill text-sm-center active"> <i
										class="fa fa-truck"> </i>Đơn vị vận chuyển
									</a><a href="<c:url value="/oplungdienthoai/home/thanhtoan3"/>"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-money"> </i>Phương thức thanh toán
									</a><a href="<c:url value="/oplungdienthoai/home/thanhtoan4"/>"
										class="nav-link flex-sm-fill text-sm-center disabled"> <i
										class="fa fa-eye"> </i>Tổng hóa đơn
									</a>
								</div>
								<div class="content py-3">
									<div class="row">
										<div class="col-md-6">
											<div class="box shipping-method">
												<h4>Giao hàng nhanh</h4>
												<p>
													Giao hàng trong 2-4 ngày <br> Cho phép Thanh toán khi
													nhận hàng
												</p>
												<p>
													<strong style="color: red;">đ 30.569</strong>
												</p>

												<div class="box-footer text-center">
													<input type="radio" name="delivery" value="delivery1">
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="box shipping-method">
												<h4>Giao hàng tiết kiệm</h4>
												<p>
													Giao hàng trong 2-5 ngày<br> Cho phép Thanh toán khi
													nhận hàng
												</p>
												<p>
													<strong style="color: red;">đ 15.000</strong>
												</p>
												<div class="box-footer text-center">
													<input type="radio" name="delivery" value="delivery2">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="box-footer d-flex justify-content-between">
									<a href="<c:url value="/oplungdienthoai/home/thanhtoan"/>"
										class="btn btn-outline-secondary"><i
										class="fa fa-chevron-left"></i>Quay lại</a>
									<button type="submit" class="btn btn-primary5">
										Tiếp tục phương thức thanh toán<i class="fa fa-chevron-right"></i>
									</button>
								</div>
							</form>
						</div>
						<!-- /.box-->
					</div>
					<!-- /.col-md-9-->
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
						<div class="box">
							<div class="box-header">
								<h4 class="mb-0">Lời nhắn</h4>
							</div>
							<p class="text-muted">Để lại lời nhắn cho người bán.</p>
							<form>
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
					<!-- /.col-md-3-->
				</div>
			</div>
		</div>
	</div>
	<!--
  <!--  *** FOOTER *** -->
	<%@include file="footer.jsp"%>
	<!-- Return to Top|ScrollTop -->
	<a href="javascript:" id="return-to-top" title="Về đầu trang"><i
		class="icon-chevron-up"></i></a>
	<script src="<c:url value="/resources/ui/js/scrollTop.js"/>"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>