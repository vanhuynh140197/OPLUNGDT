<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Ốp lưng điện thoại giá rẻ|Đăng ký</title>
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
							<li aria-current="page" class="breadcrumb-item active">New
								account / Sign in</li>
						</ol>
						</nav>
					</div>
					<div class="col-lg-6">
						<div class="box">
							<h1>New account</h1>
							<p class="lead">Not our registered customer yet?</p>
							<p>With registration with us new world of fashion, fantastic
								discounts and much more opens to you! The whole process will not
								take you more than a minute!</p>
							<p class="text-muted">
								If you have any questions, please feel free to <a
									href="contact.html">contact us</a>, our customer service center
								is working for you 24/7.
							</p>
							<hr>
							<form action="customer-orders.html" method="post">
								<div class="form-group">
									<label for="name">Name</label> <input id="name" type="text"
										class="form-control">
								</div>
								<div class="form-group">
									<label for="email">Email</label> <input id="email" type="text"
										class="form-control">
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input id="password"
										type="password" class="form-control">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">
										<i class="fa fa-user-md"></i> Register
									</button>
								</div>
							</form>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="box">
							<h1>Login</h1>
							<p class="lead">Already our customer?</p>
							<p class="text-muted">Pellentesque habitant morbi tristique
								senectus et netus et malesuada fames ac turpis egestas.
								Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor
								sit amet, ante. Donec eu libero sit amet quam egestas semper.
								Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
							<hr>
							<form action="customer-orders.html" method="post">
								<div class="form-group">
									<label for="email">Email</label> <input id="email" type="text"
										class="form-control">
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input id="password"
										type="password" class="form-control">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> Log in
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<%@include file="footer.jsp"%>
	<!-- Return to Top|ScrollTop -->
	<a href="javascript:" id="return-to-top" title="Về đầu trang"><i
		class="icon-chevron-up"></i></a>
	<script src="<c:url value="/resources/ui/js/scrollTop.js"/>"></script>
	<!-- Return to Top|ScrollTop -->
</body>
</html>