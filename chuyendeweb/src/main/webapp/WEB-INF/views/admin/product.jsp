<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Admin | Sản phẩm</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- normalize CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/data-table/bootstrap-table.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/data-table/bootstrap-editable.css"/>">
</head>
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
							src="/chuyendeweb/resources/admin/images/logo/logo.png" alt="" /></a>
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
											<form role="search" class="sr-input-func">
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
									<h1>
										Danh sách sản phẩm
									</h1>
								</div>
							</div>
							<div class="sparkline13-graph">
								<div class="datatable-dashv1-list custom-datatable-overright">
									<div id="toolbar">
										<select class="form-control dt-tb">
											<option value="">Export Basic</option>
											<option value="all">Export All</option>
											<option value="selected">Export Selected</option>
										</select>
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
												<th data-field="email" data-editable="true">Hình ảnh
													SP1</th>
												<th data-field="phone" data-editable="true">Hình ảnh
													SP1_1</th>
												<th data-field="task" data-editable="true">Màu sắc</th>
												<th data-field="date" data-editable="true">Số lượng</th>
												<th data-field="price" data-editable="true">Mô tả</th>
												<th data-field="action">Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td></td>
												<td>1</td>
												<td>Web Development</td>
												<td>admin@uttara.com</td>
												<td>+8801962067309</td>
												<td>10%</td>
												<td>Jul 14, 2017</td>
												<td>$5455</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>2</td>
												<td>Graphic Design</td>
												<td>fox@itpark.com</td>
												<td>+8801762067304</td>
												<td>70%</td>
												<td>fab 2, 2017</td>
												<td>$8756</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>3</td>
												<td>Software Development</td>
												<td>gumre@hash.com</td>
												<td>+8801862067308</td>
												<td>5%</td>
												<td>Seb 5, 2017</td>
												<td>$9875</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>4</td>
												<td>Woocommerce</td>
												<td>kyum@frok.com</td>
												<td>+8801962066547</td>
												<td>15%</td>
												<td>Oct 10, 2017</td>
												<td>$3254</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>5</td>
												<td>Joomla</td>
												<td>jams@game.com</td>
												<td>+8801962098745</td>
												<td>80%</td>
												<td>Nov 20, 2017</td>
												<td>$58745</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>6</td>
												<td>Wordpress</td>
												<td>flat@yem.com</td>
												<td>+8801962254781</td>
												<td>30%</td>
												<td>Aug 25, 2017</td>
												<td>$789879</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>7</td>
												<td>Ecommerce</td>
												<td>hasan@wpm.com</td>
												<td>+8801962254863</td>
												<td>15%</td>
												<td>July 17, 2017</td>
												<td>$21424</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>8</td>
												<td>Android Apps</td>
												<td>ATM@devep.com</td>
												<td>+8801962875469</td>
												<td>15%</td>
												<td>June 11, 2017</td>
												<td>$78978</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>9</td>
												<td>Prestashop</td>
												<td>presta@Prest.com</td>
												<td>+8801962067524</td>
												<td>15%</td>
												<td>May 9, 2017</td>
												<td>$45645</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>10</td>
												<td>Game Development</td>
												<td>Dev@game.com</td>
												<td>+8801962067457</td>
												<td>15%</td>
												<td>April 5, 2017</td>
												<td>$4564545</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>11</td>
												<td>Angular Js</td>
												<td>gular@angular.com</td>
												<td>+8801962067124</td>
												<td>15%</td>
												<td>Dec 1, 2017</td>
												<td>$645455</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>12</td>
												<td>Opencart</td>
												<td>open@cart.com</td>
												<td>+8801962067587</td>
												<td>15%</td>
												<td>Jan 6, 2017</td>
												<td>$78978</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>13</td>
												<td>Education</td>
												<td>john@example.com</td>
												<td>+8801962067471</td>
												<td>15%</td>
												<td>Feb 6, 2016</td>
												<td>$456456</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>14</td>
												<td>Construction</td>
												<td>mary@example.com</td>
												<td>+8801962012457</td>
												<td>15%</td>
												<td>Jan 6, 2016</td>
												<td>$87978</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>15</td>
												<td>Real Estate</td>
												<td>july@example.com</td>
												<td>+8801962067309</td>
												<td>15%</td>
												<td>Dec 1, 2016</td>
												<td>$454554</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>16</td>
												<td>Personal Regume</td>
												<td>john@example.com</td>
												<td>+8801962067306</td>
												<td>15%</td>
												<td>May 9, 2016</td>
												<td>$564555</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>17</td>
												<td>Admin Template</td>
												<td>mary@example.com</td>
												<td>+8801962067305</td>
												<td>15%</td>
												<td>June 11, 2016</td>
												<td>$454565</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>18</td>
												<td>FrontEnd</td>
												<td>july@example.com</td>
												<td>+8801962067304</td>
												<td>15%</td>
												<td>May 9, 2015</td>
												<td>$456546</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>19</td>
												<td>Backend</td>
												<td>john@range.com</td>
												<td>+8801962067303</td>
												<td>15%</td>
												<td>Feb 9, 2014</td>
												<td>$564554</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>20</td>
												<td>Java Advance</td>
												<td>lamon@ghs.com</td>
												<td>+8801962067302</td>
												<td>15%</td>
												<td>July 6, 2014</td>
												<td>$789889</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
											<tr>
												<td></td>
												<td>21</td>
												<td>Jquery Advance</td>
												<td>hasad@uth.com</td>
												<td>+8801962067301</td>
												<td>15%</td>
												<td>Jun 6, 2013</td>
												<td>$4565656</td>
												<td class="datatable-ct"><i class="fa fa-check"></i></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
		src="<c:url value="/resources/admin/js/data-table/bootstrap-table.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/data-table/tableExport.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/data-table/data-table-active.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/data-table/bootstrap-table-editable.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/data-table/bootstrap-editable.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/data-table/bootstrap-table-resizable.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/data-table/colResizable-1.5.source.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/data-table/bootstrap-table-export.js"/>"></script>
</body>
</html>