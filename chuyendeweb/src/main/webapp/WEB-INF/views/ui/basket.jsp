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
<script type="text/javascript">
$(document).ready(function(e){
	$("#soLuong").on('click', function(){
		var soLuong = $('#soLuong').val();
		var giaBan = $('#giaBan').html();
		console.log(soLuong + " " + giaBan);
	});
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
							<form method="post"
								action='<c:url value="/oplungdienthoai/home/thanhtoan"/>'>
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
												<th>Hình ảnh</th>
												<th>Tên sản phẩm</th>
												<th>Số lượng</th>
												<th>Đơn giá</th>
												<th>Giảm giá</th>
												<th colspan="2">Thành tiền</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (GioHang gh : gioHang) {
											%>
											<tr>
												<td><a href="#"><img
														src="<c:url value="/resources/ui/<%=gh.getProductsEntity().getProductsImages1()%>"/>"
														alt="White Blouse Armani"></a></td>
												<td><a href="#"><%=gh.getProductsEntity().getProductsName()%></a></td>
												<td><input id="soLuong<%=gh.getProductsEntity().getProductsId()%>" type="number"
													value="<%=gh.getSoLuong()%>"></td>
												<td id="giaBan<%=gh.getProductsEntity().getProductsId()%>"><%=formatNumberGiaBan(gh.getProductsEntity().getPrices())%></td>
												<%
													if (gh.getProductsEntity().getPromotionByPromotionsId() != null) {
												%>
												<td><%=(int) (gh.getProductsEntity().getPromotionByPromotionsId().getPromotionValues() * 100)%>%</td>
												<td id="thanhTien<%=gh.getProductsEntity().getProductsId()%>"><%=formatNumberGiaBan((gh.getSoLuong() * gh.getProductsEntity().getPrices())
							- (gh.getSoLuong() * gh.getProductsEntity().getPrices()
									* gh.getProductsEntity().getPromotionByPromotionsId().getPromotionValues()))%></td>
												<%
													} else {
												%>
												<td>0%</td>
												<td id="thanhTien"><%=formatNumberGiaBan((gh.getSoLuong() * gh.getProductsEntity().getPrices()))%></td>
												<%
													}
												%>
												<td><a href="#"><i class="fa fa-trash-o"></i></a></td>
											</tr>
											<%
												}
											%>
										</tbody>
										<tfoot>
											<tr>
												<th colspan="5">Tổng</th>
												<th colspan="2">cmm</th>
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
							<p class="text-muted">Để lại lời nhắn cho người b.</p>
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