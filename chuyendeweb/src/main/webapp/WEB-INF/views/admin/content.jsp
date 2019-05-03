<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header-top-area">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="header-top-wraper">
						<div class="row">
							<div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
								<div class="menu-switcher-pro">
									<button type="button" id="sidebarCollapse"
										class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
										<i class="educate-icon educate-nav"></i>
									</button>
								</div>
							</div>
							<div class="col-lg-6 col-md-7 col-sm-6 col-xs-12"></div>
							<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
								<div class="header-right-info">
									<ul class="nav navbar-nav mai-top-nav header-right-menu">
										<li class="nav-item dropdown"><a href="#"
											class="nav-link dropdown-toggle"><i
												class="educate-icon educate-message edu-chat-pro"></i><span
												class="indicator-ms"></span></a></li>
										<li class="nav-item"><a href="#"
											class="nav-link dropdown-toggle"><i
												class="educate-icon educate-bell"></i><span
												class="indicator-nt"></span></a></li>
										<li class="nav-item"><a href="#" data-toggle="dropdown"
											role="button" aria-expanded="false"
											class="nav-link dropdown-toggle"> <img
												src="<c:url value="/resources/admin/images/product/pro4.jpg"/>"
												alt="" /> <span class="admin-name">Xin chào, Huỳnh
													đẹp trai</span> <i
												class="fa fa-angle-down edu-icon edu-down-arrow"></i>
										</a>
											<ul role="menu"
												class="dropdown-header-top author-log dropdown-menu animated zoomIn">
												<li><a href="#"><span
														class="edu-icon edu-home-admin author-log-ic"></span>Thông
														tin tài khoản</a></li>
												<li><a href="#"><span
														class="edu-icon edu-settings author-log-ic"></span>Cài đặt</a></li>
												<li><a href="#"><span
														class="edu-icon edu-locked author-log-ic"></span>Đăng xuất</a></li>
											</ul></li>
										<li class="nav-item nav-setting-open"><a href="#"
											class="nav-link dropdown-toggle"><i
												class="educate-icon educate-menu"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>