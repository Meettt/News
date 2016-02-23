<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="m" uri="http://java.sun.com/jstl/core_rt"%>
    <!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Advanced Tables | Porto Admin - Responsive HTML5 Template 1.4.2</title>
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

		<!-- Specific Page Vendor CSS -->		<link rel="stylesheet" href="css/select2.css" />		
		<link rel="stylesheet" href="css/select2-bootstrap.css" />	
		<link rel="stylesheet" href="css/datatables.css" />
<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="css/theme-custom.css">

		<!-- Head Libs -->
		<script src="js/modernizr.js"></script>
		<link rel="stylesheet" href="css/style-switcher.css">
			<link rel="stylesheet/less" href="assets/vendor/style-switcher/less/skin.less">
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
						<h2>Advanced Tables</h2>
				
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
									<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
									<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
								</div>
						
								<h2 class="panel-title">Basic</h2>
							</header>
							<div class="panel-body">
								<table class="table table-bordered table-striped mb-none"
							id="datatable-default">
							<thead>
								<tr role="row">
									<th class="sorting_asc" tabindex="0"
										aria-controls="datatable-editable" rowspan="1" colspan="1"
										aria-label="Rendering engine: activate to sort column descending"
										aria-sort="ascending" style="width: 100px;">ID</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-editable" rowspan="1" colspan="1"
										aria-label="Browser: activate to sort column ascending"
										style="width: 269px;">Category-name</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-editable" rowspan="1" colspan="1"
										aria-label="Platform(s): activate to sort column ascending"
										style="width: 243px;">Description</th>
									<th	rowspan="1" colspan="1"
										aria-label="Actions" style="width: 99px;">Actions</th>
								</tr>
							</thead>

							<m:forEach items="${sessionScope.categoryls}" var="i">
								<tr>
									<td>${i.categoryId}</td>
									<td>${i.categoryName}</td>
									<td>${i.categoryDes}</td>

									<td class="actions">

										<a href="<%=request.getContextPath()%>/Category?categoryId=${i.categoryId}&string=edit" class="on-default edit-row"><i class="fa fa-pencil"></i></a> 
										<a href="<%=request.getContextPath()%>/Category?categoryId=${i.categoryId}&string=delete" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
									</td>
								</tr>
							</m:forEach>
							</tbody>
						</table>
							</div>
						</section>
						
						
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
		
		<!-- Specific Page Vendor -->		<script src="js/select2.js"></script>	
		<script src="js/jquery.dataTables.js"></script>	
		<script src="js/dataTables.tableTools.min.js"></script>	
		<script src="js/datatables.js"></script>
		
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
		<!-- Analytics to Track Preview Website -->		<script>		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');		  ga('create', 'UA-42715764-8', 'auto');		  ga('send', 'pageview');		</script>
		<!-- Examples -->
		<script src="js/examples.datatables.default.js"></script>
		<script src="js/examples.datatables.row.with.details.js"></script>
		<script src="js/examples.datatables.tabletools.js"></script>
	</body>
</html>