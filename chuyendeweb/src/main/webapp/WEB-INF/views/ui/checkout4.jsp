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
								- Order review</li>
						</ol>
						</nav>
					</div>
					<div id="checkout" class="col-lg-9">
						<div class="box">
							<form method="get" action="<c:url value="/oplungdienthoai/home/thanhtoan4"/>">
								<h1>Checkout - Order review</h1>
								<div class="nav flex-column flex-sm-row nav-pills">
									<a href="checkout1.html"
										class="nav-link flex-sm-fill text-sm-center"> <i
										class="fa fa-map-marker"> </i>Address
									</a><a href="checkout2.html"
										class="nav-link flex-sm-fill text-sm-center"> <i
										class="fa fa-truck"> </i>Delivery Method
									</a><a href="checkout3.html"
										class="nav-link flex-sm-fill text-sm-center"> <i
										class="fa fa-money"> </i>Payment Method
									</a><a href="#" class="nav-link flex-sm-fill text-sm-center active">
										<i class="fa fa-eye"> </i>Order Review
									</a>
								</div>
								<div class="content">
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th colspan="2">Sản phẩm</th>
													<th>Đơn giá</th>
													<th>Số lượng</th>
													<th>Giảm giá</th>
													<th colspan="2">Thành tiền</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><a href="#"><img
															src="<c:url value="/resources/ui/img/detailsquare.jpg"/>"
															alt="White Blouse Armani"></a></td>
													<td><a href="#">White Blouse Armani</a></td>
													<td><input type="number" value="2"
														class="form-control"></td>
													<td>$123.00</td>
													<td>$0.00</td>
													<td>$246.00</td>
													<td><a href="#"><i class="fa fa-trash-o"></i></a></td>
												</tr>
												<tr>
													<td><a href="#"><img
															src="<c:url value="/resources/ui/img/basketsquare.jpg"/>"
															alt="Black Blouse Armani"></a></td>
													<td><a href="#">Black Blouse Armani</a></td>
													<td><input type="number" value="1"
														class="form-control"></td>
													<td>$200.00</td>
													<td>$0.00</td>
													<td>$200.00</td>
													<td><a href="#"><i class="fa fa-trash-o"></i></a></td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<th colspan="5">Tổng</th>
													<th colspan="2">$446.00</th>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- /.table-responsive-->
								</div>
								<!-- /.content-->
								<div class="box-footer d-flex justify-content-between">
									<a href="<c:url value="/oplungdienthoai/home/thanhtoan3"/>" class="btn btn-outline-secondary"><i
										class="fa fa-chevron-left"></i>Back to payment method</a>
									<button type="submit" class="btn btn-primary">
										Place an order<i class="fa fa-chevron-right"></i>
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
					<!-- /.col-md-3-->
				</div>
			</div>
		</div>
	</div>
	<!--
  <!--  *** FOOTER *** -->
	<%@include file="footer.jsp"%>
</body>
</html>