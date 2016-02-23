<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Basic Forms | Porto Admin - Responsive HTML5 Template 1.4.2</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="css/bootstrap.css" />

		<link rel="stylesheet" href="css/font-awesome.css" />
		<link rel="stylesheet" href="css/magnific-popup.css" />
		<link rel="stylesheet" href="css/bootstrap-datepicker3.css" />

		<!-- Specific Page Vendor CSS -->		<link rel="stylesheet" href="css/bootstrap-fileupload.min.css" />

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
				<jsp:include page="adminSlidbar.jsp"></jsp:include>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Basic Forms</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.html">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Forms</span></li>
								<li><span>Basic</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
						<div class="row">
							<div class="col-lg-12">
							<!-- Country -->
							<form class="form-horizontal form-bordered" method="get">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Country</h2>
									</header>
									<div class="panel-body">
										
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">Country-Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputDefault">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="textareaAutosize">Description</label>
												<div class="col-md-6">
													<textarea class="form-control" rows="3" id="textareaAutosize" data-plugin-textarea-autosize></textarea>
												</div>
											</div>
										
									</div>
									<footer class="panel-footer">
										<input type="submit" class="btn btn-primary"/>
										
									</footer>
								</section>
							</form>
							<!-- State -->
							<form class="form-horizontal form-bordered" method="get">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">State</h2>
									</header>
									
									<div class="panel-body">
										
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Country</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">State-Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputDefault">
												</div>
												
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="textareaAutosize">Description</label>
												<div class="col-md-6">
													<textarea class="form-control" rows="3" id="textareaAutosize" data-plugin-textarea-autosize></textarea>
												</div>
											</div>
									
											
											
										
									</div>
									<footer class="panel-footer">
										<input type="submit" class="btn btn-primary"/>
										
									</footer>
								</section>
								</form>
							<!-- City -->	
							<form class="form-horizontal form-bordered" method="get">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">City</h2>
									</header>
									
									<div class="panel-body">
									
										<div class="form-group">
										<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Country</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													
												</div>
												
												
											</div>
										
										<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">State</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													
												</div>
												
											</div>
												<label class="col-md-3 control-label" for="inputDefault">City-Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputDefault">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="textareaAutosize">Description</label>
												<div class="col-md-6">
													<textarea class="form-control" rows="3" id="textareaAutosize" data-plugin-textarea-autosize></textarea>
												</div>
											</div>
									
									</div>
									<footer class="panel-footer">
										<input type="submit" class="btn btn-primary"/>
										
									</footer>
								</section>	
							</form>
								
							<!-- Area -->
							<form class="form-horizontal form-bordered" method="get">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Area</h2>
									</header>
									
									<div class="panel-body">
									
										<div class="form-group">
										<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Country</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													
												</div>
												
												
											</div>
										
										<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">State</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													
												</div>
												
											</div>
										<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">City</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													
												</div>
												
											</div>
												<label class="col-md-3 control-label" for="inputDefault">Area</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputDefault">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="textareaAutosize">Description</label>
												<div class="col-md-6">
													<textarea class="form-control" rows="3" id="textareaAutosize" data-plugin-textarea-autosize></textarea>
												</div>
											</div>
									</div>
							<footer class="panel-footer">
										<input type="submit" class="btn btn-primary"/>
										
									</footer>
								</section>	
							</form>
								
							<!-- Categorey -->
							<form class="form-horizontal form-bordered" method="get">
									<section class="panel">
										<header class="panel-heading">
											<div class="panel-actions">
												<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
												<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
											</div>
							
											<h2 class="panel-title">Categorey</h2>
										</header>
										
										<div class="panel-body">
											
												<div class="form-group">
													<label class="col-md-3 control-label" for="inputDefault">Categorey-Name</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="inputDefault">
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label" for="textareaAutosize">Description</label>
													<div class="col-md-6">
														<textarea class="form-control" rows="3" id="textareaAutosize" data-plugin-textarea-autosize></textarea>
													</div>
												</div>
										
										
										</div>
										<footer class="panel-footer">
											<input type="submit" class="btn btn-primary"/>
											
										</footer>	
									</section>
									</form>
							<!-- Sub-Categorey -->
							<form class="form-horizontal form-bordered" method="get">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Sub-Categorey</h2>
									</header>
									
									<div class="panel-body">
										<form class="form-horizontal form-bordered" method="get">
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Categorey</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">Categorey-Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputDefault">
												</div>
												
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="textareaAutosize">Description</label>
												<div class="col-md-6">
													<textarea class="form-control" rows="3" id="textareaAutosize" data-plugin-textarea-autosize></textarea>
												</div>
											</div>
									
											
											
										</form>
									</div>
							<footer class="panel-footer">
										<input type="submit" class="btn btn-primary"/>
										
									</footer>
								</section>	
							</form>
								
							</div>
						</div>	
					<!-- end: page -->
				</section>
			</div>
<aside id="sidebar-right" class="sidebar-right">
				<div class="nano">
					<div class="nano-content">
						<a href="#" class="mobile-close visible-xs">
							Collapse <i class="fa fa-chevron-right"></i>
						</a>
			
						<div class="sidebar-right-wrapper">
			
							<div class="sidebar-widget widget-calendar">
								<h6>Upcoming Tasks</h6>
								<div data-plugin-datepicker data-plugin-skin="dark" ></div>
			
								<ul>
									<li>
										<time datetime="2014-04-19T00:00+00:00">04/19/2014</time>
										<span>Company Meeting</span>
									</li>
								</ul>
							</div>
			
							<div class="sidebar-widget widget-friends">
								<h6>Friends</h6>
								<ul>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="assets/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
								</ul>
							</div>
			
						</div>
					</div>
				</div>
			</aside>
			
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
		
		
		<!-- Specific Page Vendor -->		<script src="js/autosize.js"></script>		<script src="js/bootstrap-fileupload.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
		<!-- Analytics to Track Preview Website -->		<script>		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');		  ga('create', 'UA-42715764-8', 'auto');		  ga('send', 'pageview');		</script>
	</body>
</html>