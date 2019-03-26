<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Obaju |Giỏ hàng</title>
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
							<li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
							<li aria-current="page" class="breadcrumb-item active">Sản
								phẩm của bạn</li>
						</ol>
						</nav>
					</div>
					<div id="basket" class="col-lg-9">
						<div class="box">
							<form method="post" action="<c:url value="/oplungdienthoai/home/thanhtoan"/>">
								<h2>
									<i class="fas fa-shopping-cart"></i> Giỏ hàng của bạn
								</h2>
								<p class="text-muted">Bạn hiện có 3 sản phẩm</p>
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
												<td><input type="number" value="2" class="form-control">
												</td>
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
												<td><input type="number" value="1" class="form-control">
												</td>
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
								<div
									class="box-footer d-flex justify-content-between flex-column flex-lg-row">
									<div class="left">
										<a href="<c:url value="/oplungdienthoai/home"/>" class="btn btn-outline-secondary"><i
											class="fa fa-chevron-left"></i> Mua thêm</a>
									</div>
									<div class="right">
										<button type="submit" class="btn btn-primary2">
											Thanh toán <i class="fa fa-chevron-right"></i>
										</button>
									</div>
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
						<div class="box">
							<div class="box-header">
								<h4 class="mb-0">Coupon code</h4>
							</div>
							<p class="text-muted">If you have a coupon code, please enter
								it in the box below.</p>
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
	<!--    *** FOOTER *** -->
	<%@include file="footer.jsp"%>
</body>
</html>