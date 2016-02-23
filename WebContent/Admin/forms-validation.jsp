<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Form Validation | Porto Admin - Responsive HTML5 Template 1.4.2</title>
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

		<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="css/theme-custom.css">

		<!-- Head Libs -->
		<script src="js/modernizr.js"></script>
			<link rel="stylesheet" href="css/style-switcher.css">
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
						<h2>Form Validation</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.html">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Forms</span></li>
								<li><span>Validation</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
					<div class="row">
						<div class="col-md-6">
							<form id="form" action="forms-validation.html" class="form-horizontal">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>

										<h2 class="panel-title">Basic Form Validation</h2>
										<p class="panel-subtitle">
											Basic validation will display a label with the error after the form control.
										</p>
									</header>
									<div class="panel-body">
										<div class="form-group">
											<label class="col-sm-3 control-label">Full Name <span class="required">*</span></label>
											<div class="col-sm-9">
												<input type="text"  class="form-control" placeholder="eg.: John Doe" required/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Email <span class="required">*</span></label>
											<div class="col-sm-9">
												<div class="input-group">
													<span class="input-group-addon">
														<i class="fa fa-envelope"></i>
													</span>
													<input type="email" name="email" class="form-control" placeholder="eg.: email@email.com" required/>
												</div>
											</div>
											<div class="col-sm-9">

											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">GitHub</label>
											<div class="col-sm-9">
												<input type="url" name="github" class="form-control" placeholder="eg.: https://github.com/johndoe" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Skills <span class="required">*</span></label>
											<div class="col-sm-9">
												<textarea name="skills" rows="5" class="form-control" placeholder="Describe your skills" required></textarea>
											</div>
										</div>
									</div>
									<footer class="panel-footer">
										<div class="row">
											<div class="col-sm-9 col-sm-offset-3">
												<button class="btn btn-primary">Submit</button>
												<button type="reset" class="btn btn-default">Reset</button>
											</div>
										</div>
									</footer>
								</section>
							</form>
						</div>
						<!-- col-md-6 -->
						<div class="col-md-6">
							<form id="chk-radios-form" action="forms-validation.html">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>

										<h2 class="panel-title">Validating Checkbox and Radios</h2>

										<p class="panel-subtitle">
											Easily validate checkboxes and radios tags.
										</p>
									</header>
									<div class="panel-body">
										<div class="form-group">
											<label class="col-sm-3 control-label">Porto Admin is <span class="required">*</span></label>
											<div class="col-sm-9">
												<div class="radio-custom radio-primary">
													<input id="awesome" name="porto_is" type="radio" value="awesome" required />
													<label for="awesome">Awesome</label>
												</div>
												<div class="radio-custom radio-primary">
													<input id="very-awesome" name="porto_is" type="radio" value="very-awesome" />
													<label for="very-awesome">Very Awesome</label>
												</div>
												<div class="radio-custom radio-primary">
													<input id="ultra-awesome" name="porto_is" type="radio" value="ultra-awesome" />
													<label for="ultra-awesome">Ultra Awesome</label>
												</div>
												<label class="error" for="porto_is"></label>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">I will use it for <span class="required">*</span></label>
											<div class="col-sm-9">
												<div class="checkbox-custom chekbox-primary">
													<input id="for-project" value="project" type="checkbox" name="for[]" required />
													<label for="for-project">My Project</label>
												</div>
												<div class="checkbox-custom chekbox-primary">
													<input id="for-website" value="website" type="checkbox" name="for[]" />
													<label for="for-website">My Website</label>
												</div>
												<div class="checkbox-custom chekbox-primary">
													<input id="for-all" value="all" type="checkbox" name="for[]" />
													<label for="for-all">All things I do</label>
												</div>
												<label class="error" for="for[]"></label>
											</div>
										</div>
									</div>
									<footer class="panel-footer">
										<div class="row">
											<div class="col-sm-9 col-sm-offset-3">
												<button class="btn btn-primary">Submit</button>
												<button type="reset" class="btn btn-default">Reset</button>
											</div>
										</div>
									</footer>
								</section>
							</form>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<form id="summary-form" action="forms-validation.html" class="form-horizontal">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>

										<h2 class="panel-title">Validation Summary</h2>
										<p class="panel-subtitle">
											Validation summary will display an error list above the form.
										</p>
									</header>
									<div class="panel-body">
										<div class="validation-message">
											<ul></ul>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Full Name <span class="required">*</span></label>
											<div class="col-sm-9">
												<input type="text" name="fullname" class="form-control" title="Plase enter a name." placeholder="eg.: John Doe" required/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Email <span class="required">*</span></label>
											<div class="col-sm-9">
												<input type="email" name="email" class="form-control" title="Please enter an email address." placeholder="eg.: john@doe.com" required/>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">GitHub</label>
											<div class="col-sm-9">
												<input type="url" name="url" title="Please enter a valid url." class="form-control" placeholder="eg.: https://github.com/johndoe" />
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Resume <span class="required">*</span></label>
											<div class="col-sm-9">
												<textarea name="resume" rows="5" title="Your resume is too short." class="form-control" placeholder="Enter your resume" required></textarea>
											</div>
										</div>
									</div>
									<footer class="panel-footer">
										<div class="row">
											<div class="col-sm-9 col-sm-offset-3">
												<button class="btn btn-primary">Submit</button>
												<button type="reset" class="btn btn-default">Reset</button>
											</div>
										</div>
									</footer>
								</section>
							</form>
						</div>
						<div class="col-md-6">
							<form id="selects-form" action="forms-validation.html">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>

										<h2 class="panel-title">Validation Selects</h2>
										<p class="panel-subtitle">
											Easily validate select tags, does not matter if is single or multiple.
										</p>
									</header>
									<div class="panel-body">
										<div class="form-group">
											<label class="col-sm-3 control-label">Company</label>
											<div class="col-sm-9">
												<select id="company" class="form-control" required>
													<option value="">Choose a Company</option>
													<option value="apple">Apple</option>
													<option value="google">Google</option>
													<option value="microsoft">Microsoft</option>
													<option value="yahoo">Yahoo</option>
												</select>
												<label class="error" for="company"></label>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">Browsers</label>
											<div class="col-sm-9">
												<select id="browsers" name="browsers" title="Please select at least one browser" class="form-control" size="5" multiple="multiple" required>
													<option value="chrome">Chrome / Safari</option>
													<option value="ff">Firefox</option>
													<option value="ie">Internet Explorer</option>
													<option value="opera">Opera</option>
												</select>
												<label class="error" for="browsers"></label>
											</div>
										</div>
									</div>
									<footer class="panel-footer">
										<div class="row">
											<div class="col-sm-9 col-sm-offset-3">
												<button class="btn btn-primary">Submit</button>
												<button type="reset" class="btn btn-default">Reset</button>
											</div>
										</div>
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
											<img src="img/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="img/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="img/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="img/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
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
		
		
		<!-- Specific Page Vendor -->		<script src="js/jquery.validate.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
		<!-- Analytics to Track Preview Website -->		<script>		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');		  ga('create', 'UA-42715764-8', 'auto');		  ga('send', 'pageview');		</script>
		<!-- Examples -->
		<script src="js/examples.validation.js"></script>
	</body>
</html>