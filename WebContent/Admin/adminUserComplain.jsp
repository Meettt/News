<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  <%@taglib prefix="m" uri="http://java.sun.com/jstl/core_rt" %>
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
<link rel="stylesheet" href="css/pnotify.custom.css" />

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
			<jsp:include page="adminSlidbar.jsp"></jsp:include>
			<!-- end: sidebar -->

			<section role="main" class="content-body">
				<header class="page-header">
					<h2>Basic Forms</h2>
				</header>

				<!-- start: page -->
				<div class="row">
					<div class="col-lg-12">
						<!-- Country -->
						
							<section class="panel">
								
								<div class="panel-body">

									


						
						
					
						<table class="table table-bordered table-striped mb-none" id="datatable-default">
									<thead>
										<tr role="row">
									<th class="sorting_asc" tabindex="0"
										aria-controls="datatable-editable" rowspan="1" colspan="1"
										aria-label="Rendering engine: activate to sort column descending"
										aria-sort="ascending" style="width: 100px;">User-Name</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-editable" rowspan="1" colspan="1"
										aria-label="Browser: activate to sort column ascending"
										style="width: 269px;">Complain-Name</th>	
									<th class="sorting" tabindex="0"
										aria-controls="datatable-editable" rowspan="1" colspan="1"
										aria-label="Browser: activate to sort column ascending"
										style="width: 269px;">Description </th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-editable" rowspan="1" colspan="1"
										aria-label="Browser: activate to sort column ascending"
										style="width: 269px;">Previous Response</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-editable" rowspan="1" colspan="1"
										aria-label="Browser: activate to sort column ascending"
										style="width: 269px;">Add Response</th>
								</tr>
										
									</thead>
							<m:forEach items="${sessionScope.usercomplainls}" var="i">	
								<tr>
									<td>${i.userVO.name }</td>
									<td>${i.complainName}</td>
									<td>${i.complainDes }</td>
									<td>${i.complainResponse }</td>
									<td>
									<a  href="adminUserResponse.jsp?complainId=${i.complainId}&complainDes=${i.complainDes }" ><button class="btn btn-primary">Response</button></a>

								
						
									</td>

								</tr>
								</m:forEach>
					</table>
						<!-- Modal Primary -->
									
						

								</div>
								
							</section>
						
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
	<script src="js/examples.validation.js"></script>
	<script src="js/autosize.js"></script>
	<script src="js/bootstrap-fileupload.min.js"></script>
	<script src="js/select2.js"></script>		
	<script src="js/pnotify.custom.js"></script>
		

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
	<script src="js/examples.modals.js"></script>
</body>
</html>