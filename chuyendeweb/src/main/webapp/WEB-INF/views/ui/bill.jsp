<%@page import="com.oplungdienthoai.model.PaymentsEntity"%>
<%@page import="com.oplungdienthoai.model.ShippingMethodEntity"%>
<%@page import="com.oplungdienthoai.model.GioHang"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hóa đơn</title>

</head>
<body style="background-color: white;">
	<%!public String formatNumberGiaBan(Double giaban) {
		DecimalFormat decimalFormat = new DecimalFormat("###,###");
		return decimalFormat.format(giaban);
	}%>
	<%
		List<GioHang> gioHang = (List<GioHang>) session.getAttribute("gio_hang");
	%>
	<%
		ShippingMethodEntity shippingMethodEntity = (ShippingMethodEntity) session
				.getAttribute("shippingMethod");
	%>
	<%
		PaymentsEntity paymentsEntity = (PaymentsEntity) session.getAttribute("payment");
	%>
	<!-- menu -->
	<%@include file="menu.jsp"%>
	<!-- menu -->

	<div style="margin-top: -2%;">
		<div style="margin-left: 21.5%;">
			<b>Mã đơn hàng: ${listBill.ordersId}</b>
		</div>
		<h2 align="center">Thông tin hóa đơn</h2>
		<table class="table table-bordered"
			style="max-width: 760px; margin: 0 auto;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Mã sản phẩm</th>
					<th>Hình ảnh</th>
					<th>Tên</th>
					<th>Giá (đ)</th>
					<th>Số lượng</th>
					<th>Thành tiền (đ)</th>
				</tr>
			</thead>
			<tbody>
				<%
					double totalPrices = 0;
					int stt = 1;
					for (GioHang gh : gioHang) {
				%>
				<tr>
					<td><%=stt++%></td>
					<td><%=gh.getProductsEntity().getProductsId()%></td>
					<td><img
						src="..<%=gh.getProductsEntity().getProductsImages1()%>" alt=""
						style="height: 10%;"></td>
					<td><%=gh.getProductsEntity().getProductsName()%></td>
					<td><%=formatNumberGiaBan(gh.getProductsEntity().getPrices())%>
					</td>
					<td><%=gh.getSoLuong()%></td>
					<td><%=formatNumberGiaBan(
						(gh.getSoLuong() * gh.getProductsEntity().getPrices()) - (gh.getSoLuong()
								* gh.getProductsEntity().getPrices() * gh.getProductsEntity()
										.getPromotionByPromotionsId().getPromotionValues()))%>
					</td>
				</tr>
				<%
					totalPrices += (gh.getSoLuong() * gh.getProductsEntity().getPrices())
								- (gh.getSoLuong() * gh.getProductsEntity().getPrices() * gh
										.getProductsEntity().getPromotionByPromotionsId().getPromotionValues());
				%>
				<%
					}
				%>
			</tbody>
		</table>
		<br>
		<div class="container-full">
			<div class="row">
				<div class="col-lg-3"></div>
				<div class="col-lg-3" style="margin-left: -3.5%;">
					<div class="alert alert-info" role="alert">
						<h4>Địa chỉ giao hàng</h4>
						<p>* Tên KH: ${listBill.customersByCustomersId.customersName}</p>
						<p>* Địa chỉ: ${listBill.customersByCustomersId.address}</p>
						<p>* Số điện thoại: ${listBill.customersByCustomersId.phone}</p>
					</div>
				</div>
				<div class="col-lg-4" style="margin-left: -1%;">
					<div class="alert alert-info" role="alert">
						<h4>Tổng cộng</h4>
						<p style="float: left;">Tạm tính:</p>
						<p style="float: right;"><%=formatNumberGiaBan(totalPrices)%>
							đ
						</p>
						<br> <br>
						<p style="float: left;">Phí vận chuyển:</p>
						<p style="float: right;"><%=formatNumberGiaBan(shippingMethodEntity.getShippingValue())%>
							đ
						</p>
						<br>
						<hr>
						<p style="float: left;">Tổng cộng:</p>
						<p style="float: right;"><%=formatNumberGiaBan((totalPrices + shippingMethodEntity.getShippingValue()))%>
							đ
						</p>
						<br> <br>
						<p style="float: left; width: 40%">Thanh toán bằng phương
							thức:</p>
						<p style="float: right;"><%=paymentsEntity.getPaymentsName()%></p>
						<br> <br>
					</div>
				</div>
				<div class="col-lg-3"></div>
			</div>
		</div>
		<!-- <form action="TiepTucMuaHang" method="post"> -->
		<div style="margin-left: 600px;">
			<a href="<c:url value="/oplungdienthoai/tieptucmuahang"/>"><button
					class=" btn btn-success" type="submit">
					<span class="glyphicon glyphicon-shopping-cart"></span> Tiếp tục
					mua hàng
				</button></a>
		</div>
		<!-- </form> -->
	</div>
</body>
</html>