<%@page import="com.oplungdienthoai.model.PromotionsEntity"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.oplungdienthoai.model.GioHang"%>
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
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var fadeTime = 300;
						/* Assign actions */
						$('.product-quantity input').change(function() {
							updateQuantity(this);
						});
						$('.product-removal a').click(function() {
							removeItem(this);
						});
						function recalculateCart() {
							var subtotal = 0;

							/* Sum up row totals */
							$('.product').each(
									function() {
										subtotal += numeral(
												$(this).children(
														'.product-line-price')
														.text()).value();
									});

							var total = subtotal;
							/* Update totals display */
							$('.totals-value').fadeOut(
									fadeTime,
									function() {
										$('#cart-total').html(
												numeral(total).format('0,0')
														+ " đ");
										$('#cart-total1').html(
												numeral(total).format('0,0')
														+ " đ");
										$('#cart-total2').html(
												numeral(total).format('0,0')
														+ " đ");
										$('.totals-value').fadeIn(fadeTime);
									});
						}
						function removeItem(removeButton) {
							/* Remove row from DOM and recalc cart total */
							var productRow = $(removeButton).parent().parent();
							var productid = productRow.children('.product-id')
									.text();
							$
									.ajax({
										type : 'POST',
										url : '<c:url value="/oplungdienthoai/giohang/xoa"/>',
										data : {
											productid : productid
										},
										success : function(data) {
											if (data === 'deletesuccess') {
												productRow
														.slideUp(
																fadeTime,
																function() {
																	productRow
																			.remove();
																	recalculateCart();
																});
											}else {
												window.location.href = '<%=application.getContextPath() + "/oplungdienthoai/giohangcuaban"%>';
											}
										},
										error : function(error) {
											console.log("error" + error);
										}
									})
						}
						/* Update quantity */
						function updateQuantity(quantityInput) {
							/* Calculate line price */
							var productRow = $(quantityInput).parent().parent();
							var price = numeral(
									productRow.children('.product-price')
											.text()).value();
							var promotion = parseFloat(productRow.children(
									'.product-promotion').text());
							var productid = productRow.children('.product-id')
									.text();
							var quantity = $(quantityInput).val();
							var linePrice = (price * quantity)
									- (price * quantity * (promotion / 100));
							$
									.ajax({
										type : 'POST',
										url : '<c:url value="/oplungdienthoai/giohang/capnhap"/>',
										data : {
											quantity : quantity,
											productid : productid
										},
										success : function(data) {
											if (data === 'updatesuccess') {
												/* Update line price display and recalc cart totals */
												productRow
														.children(
																'.product-line-price')
														.each(
																function() {
																	$(this)
																			.fadeOut(
																					fadeTime,
																					function() {
																						$(
																								this)
																								.text(
																										numeral(
																												linePrice)
																												.format(
																														'0,0')
																												+ " đ");
																						recalculateCart();
																						$(
																								this)
																								.fadeIn(
																										fadeTime);
																					});
																});
											}
										},
										error : function(error) {
											console.log("error" + error);
										}
									})
						}
					});
</script>
<body>
	<%!public String formatNumberGiaBan(Double giaban) {
		DecimalFormat decimalFormat = new DecimalFormat("###,###");
		return decimalFormat.format(giaban);
	}%>
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
					<%
						List<GioHang> gioHang = (List<GioHang>) session.getAttribute("gio_hang");
					%>
					<div id="basket" class="col-lg-9">
						<div class="box">
							<%
								if (gioHang == null || gioHang.equals("") || gioHang.size() == 0) {
							%>
							<p>Hiện giỏ hàng của bạn chưa có sản phẩm nào.</p>
							<%
								} else {
							%>
							<form method="post"
								action='<c:url value="/oplungdienthoai/thanhtoan"/>'>
								<h2>
									<i class="fas fa-shopping-cart"></i> Giỏ hàng của bạn
								</h2>
								<p class="text-muted">
									Bạn hiện có
									<%=gioHang.size()%>
									sản phẩm
								</p>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th style="width: 16%">Hình ảnh</th>
												<th style="width: 25%">Tên sản phẩm</th>
												<th class="product-quantity">Số lượng</th>
												<th class="product-price">Đơn giá</th>
												<th class="product-promotion">Giảm giá</th>
												<th class="product-line-price" colspan="2">Thành tiền</th>
												<th class="product-removal"></th>
												<th class="product-id" style="display: none"></th>
											</tr>
										</thead>
										<tbody>
											<%
												double totalPrices = 0;
													for (GioHang gh : gioHang) {
											%>
											<tr class="product">
												<td><img
													src="<c:url value="<%=gh.getProductsEntity().getProductsImages1()%>"/>"
													alt="White Blouse Armani"></td>
												<td><%=gh.getProductsEntity().getProductsName()%></td>
												<td class="product-quantity"><input type="number"
													value="<%=gh.getSoLuong()%>" min="1"></td>
												<td class="product-price"><%=formatNumberGiaBan(gh.getProductsEntity().getPrices())%>
													đ</td>
												<td class="product-promotion"><%=(int) (gh.getProductsEntity().getPromotionByPromotionsId().getPromotionValues() * 100)%>%</td>
												<td class="product-line-price"><%=formatNumberGiaBan((gh.getSoLuong() * gh.getProductsEntity().getPrices())
							- (gh.getSoLuong() * gh.getProductsEntity().getPrices()
									* gh.getProductsEntity().getPromotionByPromotionsId().getPromotionValues()))%>
													đ</td>
												<td class="product-removal"><a href="#"><i
														class="fa fa-trash-o"></i></a></td>
												<td class="product-id" style="display: none"><%=gh.getProductsEntity().getProductsId()%></td>
											</tr>
											<%
												totalPrices += (gh.getSoLuong() * gh.getProductsEntity().getPrices())
																- (gh.getSoLuong() * gh.getProductsEntity().getPrices()
																		* gh.getProductsEntity().getPromotionByPromotionsId().getPromotionValues());
											%>
											<%
												}
											%>
										</tbody>
										<tfoot>
											<tr>
												<th colspan="5">Tổng</th>
												<th colspan="2" class="totals-value" id="cart-total"><%=formatNumberGiaBan(totalPrices)%>
													đ</th>
											</tr>
										</tfoot>
									</table>
								</div>
								<!-- /.table-responsive-->
								<div
									class="box-footer d-flex justify-content-between flex-column flex-lg-row">
									<div class="left">
										<a href='<c:url value="/oplungdienthoai/home"/>'
											class="btn btn-outline-secondary"><i
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
					<%
						}
					%>
					<!-- /.col-md-3-->
				</div>
			</div>
		</div>
	</div>
	<!--    *** FOOTER *** -->
	<%@include file="footer.jsp"%>
	<!-- Return to Top|ScrollTop -->
	<a href="javascript:" id="return-to-top" title="Về đầu trang"><i
		class="icon-chevron-up"></i></a>
	<script src='<c:url value="/resources/ui/js/scrollTop.js"/>'
		type="text/javascript"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>