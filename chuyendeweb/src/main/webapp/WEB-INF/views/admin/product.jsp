<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Admin | Sản phẩm</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<!-- normalize CSS
        ============================================ -->
<link rel="stylesheet"
	href='<c:url value="/resources/admin/css/data-table/bootstrap-table.css"/>'>
<link rel="stylesheet"
	href='<c:url value="/resources/admin/css/data-table/bootstrap-editable.css"/>'>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"
	type="text/javascript"></script>
<!-- <script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			type : 'GET',
			url : '<c:url value="/admin/oplungdienthoai/sanpham/load"/>',
			success : function(data) {
				console.log(data);
			},
			error : function() {

			}
		});
	});
</script> -->
<body>
	<!-- menu -->
	<%@include file="menu_admin.jsp"%>
	<!-- menu -->
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="logo-pro">
						<a href="index.html"><img class="main-logo"
							src="<c:url value="/resources/admin/images/logo/logo.png"/>"
							alt="" /></a>
					</div>
				</div>
			</div>
		</div>
		<div class="header-advance-area">
			<!-- content -->
			<%@include file="content.jsp"%>
			<!-- content -->
			<div class="breadcome-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="breadcome-list single-page-breadcome">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<div class="breadcome-heading">
											<form role="search" class="sr-input-func" action="">
												<input type="text" placeholder="Search..."
													class="search-int form-control"> <a href="#"><i
													class="fa fa-search"></i></a>
											</form>
										</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<ul class="breadcome-menu">
											<li><a href="#">Trang chủ</a> <span class="bread-slash">/</span>
											</li>
											<li><a href="#">Sản phẩm</a> <span class="bread-slash">/</span></li>
											<li>Quản lý sản phẩm</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Static Table Start -->
		<div class="data-table-area mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="sparkline13-list">
							<div class="sparkline13-hd">
								<div class="main-sparkline13-hd">
									<h1>Danh sách sản phẩm</h1>
								</div>
							</div>
							<div class="sparkline13-graph">
								<div class="datatable-dashv1-list custom-datatable-overright">
									<div id="toolbar">
										<a href='<c:url value="/admin/oplungdienthoai/themsanpham"/>'><button
												class="btn btn-primary" style="float: right;">
												<i class="fas fa-plus"></i> Thêm sản phẩm
											</button></a>
									</div>
									<table id="table" data-toggle="table" data-pagination="true"
										data-search="true" data-show-columns="true"
										data-show-pagination-switch="true" data-show-refresh="true"
										data-key-events="true" data-show-toggle="true"
										data-resizable="true" data-cookie="true"
										data-cookie-id-table="saveId" data-show-export="true"
										data-click-to-select="true" data-toolbar="#toolbar">
										<thead>
											<tr>
												<th data-field="state" data-checkbox="true"></th>
												<th data-field="id">ID</th>
												<th data-field="name" data-editable="true">Tên sản phẩm</th>
												<th data-field="picture1" data-editable="true">Hình ảnh
													SP</th>
												<th data-field="color" data-editable="true">Màu sắc</th>
												<th data-field="price" data-editable="true">Giá bán</th>
												<th data-field="amount" data-editable="true">Số lượng</th>
												<th data-field="action"></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${listProducts}" var="item">
												<tr>
													<td></td>
													<td>${item.productsId}</td>
													<td>${item.productsName}</td>
													<td>${item.productsImages1}</td>
													<td>${item.productsColor}</td>
													<td><fmt:formatNumber type="currency"
															value="${item.prices}"></fmt:formatNumber></td>
													<td>${item.amount}</td>
													<td><a
														href='<c:url value="/admin/oplungdienthoai/suasanpham/${item.productsId.trim()}"/>'
														style="color: blue;"><i class="far fa-edit"
															title="Sửa sản phẩm"></i></a> &nbsp; <a data-toggle="modal"
														style="color: red;"
														data-target="#xoasanpham${item.productsId.trim()}"><i
															class="fas fa-trash-alt fa-1x" title="Xóa sản phẩm"></i></a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<c:forEach items="${listProducts}" var="item">
				<div class="modal fade" id="xoasanpham${item.productsId.trim()}"
					role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Xóa sản phẩm</h4>
							</div>
							<div class="modal-body">
								<h5>
									Bạn có chắc muốn xóa sản phẩm <strong style="color: red">${item.productsName}</strong>
									này ?
								</h5>
							</div>
							<div class="modal-footer">
								<a
									href='<c:url value="/admin/oplungdienthoai/xoasanpham/${item.productsId}"/>'><button
										class="btn btn-danger">
										<span class="glyphicon glyphicon-ok"></span>&nbsp;Có
									</button></a> <a><button type="button" class="btn btn-default"
										data-dismiss="modal">
										<span class="glyphicon glyphicon-remove"></span>&nbsp;Không
									</button></a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- Static Table End -->
		<div class="footer-copyright-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="footer-copy-right">
							<p>
								Design by <a href="#">H&D_16102016</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- data table JS
        ============================================ -->
	<script
		src='<c:url value="/resources/admin/js/data-table/bootstrap-table.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/admin/js/data-table/tableExport.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/admin/js/data-table/data-table-active.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/admin/js/data-table/bootstrap-table-editable.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/admin/js/data-table/bootstrap-editable.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/admin/js/data-table/bootstrap-table-resizable.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/admin/js/data-table/colResizable-1.5.source.js"/>'
		type="text/javascript"></script>
	<script
		src='<c:url value="/resources/admin/js/data-table/bootstrap-table-export.js"/>'
		type="text/javascript"></script>
</body>
</html>