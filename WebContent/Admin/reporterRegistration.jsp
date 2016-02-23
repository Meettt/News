<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="m" uri="http://java.sun.com/jstl/core_rt"%>
<!doctype html>
<html class="fixed">
<head>

<!-- Basic -->
<meta charset="UTF-8">

<title>Basic Forms | Porto Admin - Responsive HTML5 Template
	1.4.2</title>
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

<!-- Specific Page Vendor CSS -->
<link rel="stylesheet" href="css/jquery-ui.css" />
<link rel="stylesheet" href="css/jquery-ui.theme.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/select2-bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-multiselect.css" />
<link rel="stylesheet" href="css/bootstrap-tagsinput.css" />
<link rel="stylesheet" href="css/bootstrap-colorpicker.css" />
<link rel="stylesheet" href="css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="css/basic.css" />
<link rel="stylesheet" href="css/dropzone.css" />
<link rel="stylesheet" href="css/bootstrap-markdown.min.css" />
<link rel="stylesheet" href="css/summernote.css" />
<link rel="stylesheet" href="css/summernote-bs3.css" />
<link rel="stylesheet" href="css/codemirror.css" />
<link rel="stylesheet" href="css/monokai.css" />


<link rel="stylesheet" href="css/bootstrap-fileupload.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" href="css/theme.css" />

<!-- Theme Custom CSS -->
<link rel="stylesheet" href="css/theme-custom.css">

<!-- Head Libs -->
<script src="js/modernizr.js"></script>
<link rel="stylesheet" href="css/color1.css" />
<link rel="stylesheet" href="css/color2.css" />

<link rel="stylesheet" href="css/colorpicker.css">
</head>
<body>
	<section class="body">

		<!-- start: header -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- end: header -->

		<div class="inner-wrapper">
			<!-- start: sidebar -->
			<jsp:include page="reporterSlidbar.jsp"></jsp:include>
			<!-- end: sidebar -->

			<section role="main" class="content-body">
				<header class="page-header">
					<h2>Basic Forms</h2>
				</header>

				<!-- start: page -->
				<div class="row">
					<div class="col-lg-12">
						<!-- Country -->
						<form id="form" class="form-horizontal form-bordered"
							action="<%=request.getContextPath() %>/Reporter?String=insert" method="post">
							<section class="panel">
								<header class="panel-heading">
									<div class="panel-actions">
										<a href="#" class="panel-action panel-action-toggle"
											data-panel-toggle></a> <a href="#"
											class="panel-action panel-action-dismiss" data-panel-dismiss></a>
									</div>

									<h2 class="panel-title">Registration</h2>
								</header>
								<div class="panel-body">

									<div class="form-group">
										<label class="col-md-3 control-label" for="inputDefault">First Name</label>
										<div class="col-md-6">
											<input type="text" name="firstName" class="form-control"
												id="inputDefault" required />
										</div>
									</div>
									
								
									<div class="form-group">
										<label class="col-md-3 control-label" for="inputDefault">Last Name</label>
										<div class="col-md-6">
											<input type="text" name="lastName" class="form-control"
												id="inputDefault" required />
										</div>
									</div>
										<div class="form-group">
												<label class="col-md-3 control-label">Email</label>
												<div class="col-md-6">
													
													<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-envelope"></i>
														</span>
														<input type="email" name="email" class="form-control"  required />
													</div>
												</div>
											</div>
									
									<div class="form-group">
										<label class="col-md-3 control-label" for="inputDefault">Username</label>
												<div class="col-md-6">
													<div class="input-group mb-md">
														<span class="input-group-addon btn-success">@</span>
														<input type="text" class="form-control" name="userName"id="inputDefault" required/>
													</div>
			
												</div>
											</div>
											
									<div class="form-group">
												<label class="control-label col-md-3">Password</label>
												<div class="col-md-6">
													
														
														<div class="input-group input-group-icon">
															<span class="input-group-addon">
																<span class="icon"><i class="fa fa-key"></i></span>
															</span>
															<input class="form-control" type="password" name="password" id="inputDefault" required />
														</div>
													
												</div>
											</div>	
											<div class="form-group">
												<label class="control-label col-md-3">Confirm-Password</label>
												<div class="col-md-6">
													
														
														<div class="input-group input-group-icon">
															<span class="input-group-addon">
																<span class="icon"><i class="fa fa-key"></i></span>
															</span>
															<input class="form-control" type="password" id="inputDefault" required/>
														</div>
													
												</div>
											</div>			
							<div class="form-group">
										<label class="col-md-3 control-label" for="inputSuccess">Country</label>
										<div class="col-md-6">
											<select class="form-control mb-md" name="countryId" >
												<m:forEach items="${sessionScope.countryls}" var="i">
													<option value="${i.countryId}">${i.countryName}</option>
												</m:forEach>
											</select>
										</div>
									</div>
									<input type="hidden" name="string" value="insert">
									<div class="form-group">
												<label class="col-md-3 control-label">Birth Date</label>
												<div class="col-md-6">
													<div class="input-group">
														<span class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</span>
														<input type="text" name="birthDate" data-plugin-datepicker class="form-control">
													</div>
												</div>
											</div>
									<div class="form-group">
													<label class="col-md-3 control-label">Phone</label>
													<div class="col-md-6 control-label">
														<div class="input-group">
															<span class="input-group-addon">
																<i class="fa fa-phone"></i>
															</span>
															<input id="phone" name="phoneNum" data-plugin-masked-input data-input-mask="(999) 999-9999" placeholder="(123) 123-1234" class="form-control">
														</div>
													</div>
												</div>
							<div class="form-group">
												<label class="col-md-3 control-label" for="textareaDefault">Experiance</label>
												<div class="col-md-6">
													<textarea class="form-control"  name="experiance" rows="3" data-plugin-maxlength maxlength="140"></textarea>
													<p>
														<code>max-length</code> set to 140.
													</p>
												</div>
											</div>
							<div class="form-group">
										<div class="mb-xs text-center">
											<a class="btn btn-facebook mb-md ml-xs mr-xs">Connect with 
											    <i class="fa fa-facebook"></i>
											</a> 
											<a class="btn btn-twitter mb-md ml-xs mr-xs">Connect with 
											<i class="fa fa-twitter"></i>
											</a>
										</div>
							</div>
							
							<div class="form-group">
												<label class="col-md-3 control-label">Certificate</label>
												<div class="col-md-6">
													<div class="fileupload fileupload-new" data-provides="fileupload">
														<div class="input-append">
															<div class="uneditable-input">
																<i class="fa fa-file fileupload-exists"></i>
																<span class="fileupload-preview"></span>
															</div>
															<span class="btn btn-default btn-file">
																<span class="fileupload-exists">Change</span>
																<span class="fileupload-new">Select file</span>
																<input type="file" />
															</span>
															<a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
														</div>
													</div>
												</div>
											</div>
								</div>
								<footer class="panel-footer">
									<input type="submit" class="btn btn-primary" value="Add" ></input>
									<input type="reset" class="btn btn-default">
									<div style="float:right;">
									<a href="<%=request.getContextPath()%>/Country?string=search">
										<input type="button" class="btn btn-primary" value="Show all" >
									</a>
									</div>
									</footer>
							</section>
						</form>
					</div>
				</div>
				<!-- end: page -->
			</section>
		</div>
	</section>

	<!-- Vendor -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery.browser.mobile.js"></script>
	<script src="js/jquery-cookie.js"></script>
	<script src="js/style.switcher.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/nanoscroller.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.magnific-popup.js"></script>
	<script src="js/jquery-placeholder.js"></script>


	<!-- Specific Page Vendor -->
	
	<script src="js/jquery.validate.js"></script>
	<script src="js/jquery-ui.js"></script>	
		<script src="js/jqueryui-touch-punch.js"></script>		
		<script src="js/select2.js"></script>		
		<script src="js/bootstrap-multiselect.js"></script>		
		<script src="js/jquery.maskedinput.js"></script>		
		<script src="js/bootstrap-tagsinput.js"></script>	
		<script src="js/bootstrap-colorpicker.js"></script>	
		<script src="js/bootstrap-timepicker.js"></script>	
		<script src="js/spinner.js"></script>	
		<script src="js/dropzone.js"></script>		
		<script src="js/markdown.js"></script>		
		<script src="js/to-markdown.js"></script>	
		<script src="js/bootstrap-markdown.js"></script>	
		<script src="js/codemirror.js"></script>		
		<script src="js/active-line.js"></script>		
		<script src="js/matchbrackets.js"></script>	
		<script src="js/javascript.js"></script>	
		<script src="js/xml.js"></script>	
		<script src="js/htmlmixed.js"></script>	
		<script src="js/css.js"></script>	
		<script src="js/summernote.js"></script>		
		<script src="js/bootstrap-maxlength.js"></script>
		<script src="js/ios7-switch.js"></script>	
		<script src="js/bootstrap-confirmation.js"></script>

	<script src="js/autosize.js"></script>
	<script src="js/bootstrap-fileupload.min.js"></script>

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
		<script src="js/examples.validation.js"></script>
</body>
</html>