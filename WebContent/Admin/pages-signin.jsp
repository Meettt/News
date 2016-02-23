<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="fixed">
<head>

<!-- Basic -->
<meta charset="UTF-8">

<meta name="keywords" content="HTML5 Admin Template" />
<meta name="description"
	content="Porto Admin - Responsive HTML5 Template">
<meta name="author" content="okler.net">

<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- Web Fonts  -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
	rel="stylesheet" type="text/css">

<!-- Vendor CSS -->
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/magnific-popup.css" />
<link rel="stylesheet" href="css/bootstrap-datepicker3.css" />
<!-- Theme CSS -->
<link rel="stylesheet" href="css/theme.css" />

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="css/theme-custom.css">

<!-- Head Libs -->
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script src="js/modernizr.js"></script>

<link rel="stylesheet" href="css/color1.css" />
<link rel="stylesheet" href="css/color2.css" />
<link rel="stylesheet" href="css/colorpicker.css">
</head>
<body>
	<!-- start: page -->
	<section class="body-sign">
		<div class="center-sign">
			<a href="/" class="logo pull-left"> <img
				src="img/logo-default.png" height="54" alt="Porto Admin" />
			</a>

			<div class="panel panel-sign">
				<div class="panel-title-sign mt-xl text-right">
					<h2 class="title text-uppercase text-weight-bold m-none">
						<i class="fa fa-user mr-xs"></i> Sign In
					</h2>
				</div>
				<div class="panel-body">
					<form action="<%=request.getContextPath() %>/SignIn" method="post">
						<div class="form-group mb-lg">
							<label>Username</label>
							<div class="input-group input-group-icon">
								<input name="adminUserName" type="text"
									class="form-control input-lg" /> <span
									class="input-group-addon"> <span class="icon icon-lg">
										<i class="fa fa-user"></i>
								</span>
								</span>
							</div>
						</div>

						<div class="form-group mb-lg">
							<div class="clearfix">
								<label class="pull-left">Password</label> <a
									href="pages-recover-password.html" class="pull-right">Lost
									Password?</a>
							</div>
							<div class="input-group input-group-icon">
								<input name="adminPwd" type="password"
									class="form-control input-lg" /> <span
									class="input-group-addon"> <span class="icon icon-lg">
										<i class="fa fa-lock"></i>
								</span>
								</span>
							</div>
						</div>

						<div class="row">
							<div class="col-sm-8">
								<div class="checkbox-custom checkbox-default">
									<input id="RememberMe" name="rememberme" type="checkbox" /> <label
										for="RememberMe">Remember Me</label>
								</div>
							</div>
							<div class="col-sm-4 text-right">
								<button type="submit" class="btn btn-primary hidden-xs">Sign
									In</button>
								<button type="submit"
									class="btn btn-primary btn-block btn-lg visible-xs mt-lg">Sign
									In</button>
							</div>
						</div>
						<%
							String error = (String) session.getAttribute("error");
							if (error != null) {
						%>
						<p class="text-center" style="color: #d2322d !important;">Please
							check your Username and Password</p>
						<%
							session.removeAttribute("error");
							}
						%>
						<span class="mt-lg mb-lg line-thru text-center text-uppercase">
							<span>or</span>
						</span>

						<div class="mb-xs text-center">
							<a class="btn btn-facebook mb-md ml-xs mr-xs">Connect with <i
								class="fa fa-facebook"></i></a> <a
								class="btn btn-twitter mb-md ml-xs mr-xs">Connect with <i
								class="fa fa-twitter"></i></a>
						</div>

						<p class="text-center">
							Don't have an account yet? <a href="pages-signup.jsp">Sign
								Up!</a>
					</form>
				</div>
			</div>

			<p class="text-center text-muted mt-md mb-md">&copy; Copyright
				2014. All Rights Reserved.</p>
		</div>
	</section>
	<!-- end: page -->

	<script src="js/jquery.js"></script>
	<script src="js/jquery.browser.mobile.js"></script>
	<script src="js/jquery-cookie.js"></script>
	<script src="js/style.switcher.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/nanoscroller.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.magnific-popup.js"></script>
	<script src="js/jquery-placeholder.js"></script>

	<!-- Theme Base, Components and Settings -->
	<script src="js/theme.js"></script>

	<!-- Theme Custom -->
	<script src="js/theme.custom.js"></script>

	<!-- Theme Initialization Files -->
	<script src="js/theme.init.js"></script>
	<!-- Analytics to Track Preview Website -->
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-42715764-8', 'auto');
		ga('send', 'pageview');
	</script>
</body>
</html>