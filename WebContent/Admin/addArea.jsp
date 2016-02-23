
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="m" uri="http://java.sun.com/jstl/core_rt"%>
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
<script>
				function dis(){
					var country = document.getElementById("countryId");
					if(country.value=='Select One'){
						 document.getElementById("stateId").disabled=true;
						 document.getElementById("cityId").disabled=true;
					}
					}
					function state(){
						var xreq = new XMLHttpRequest(); 
						var i;
						var country = document.getElementById("countryId");
						if(country.value=='Select One'){
							document.getElementById("stateId").disabled=true;
							return;
						}
						 document.getElementById("stateId").disabled=false;
						 xreq.onreadystatechange = function () {
							 if(xreq.readyState ==4){
								 allremoveState(); 
								var obj= JSON.parse(xreq.responseText);
								for( i =0 ;i<obj.length;i++){
									var optiondiv= document.createElement("option");
									optiondiv.value=obj[i].stateId;
									optiondiv.text=obj[i].stateName;
									document.form.stateId.options.add(optiondiv);
								}
							 }
						}
						xreq.open("GET","${pageContext.request.contextPath}/AjaxScript?string=state&countryId="+country.value,true);
						xreq.send();
					}
					function city(){
						var xreq = new XMLHttpRequest(); 
						var i;
						var stateId = document.getElementById("stateId");
						if(stateId.value=='Select One'){
							document.getElementById("cityId").disabled=true;
							return;
						}
						 document.getElementById("cityId").disabled=false;
						 xreq.onreadystatechange = function () {
							 if(xreq.readyState ==4){
								 allremoveCity();
								var obj= JSON.parse(xreq.responseText);
								for( i =0 ;i<obj.length;i++){
									var optiondiv= document.createElement("option");
									optiondiv.value=obj[i].cityId;
									optiondiv.text=obj[i].cityName;
									document.form.cityId.options.add(optiondiv);
								}
							 }
						}
						xreq.open("GET","${pageContext.request.contextPath}/AjaxScript?string=city&stateId="+stateId.value,true);
						xreq.send();
	}
	function allremoveState() {
		var stateId = document.getElementById("stateId");
		for (var i = stateId.length; i >= 0; i--) {
			document.form.stateId.options.remove(i);
		}
	}
	function allremoveCity(){
		var cityId = document.getElementById("cityId");
		for (var i = cityId.length; i >= 0; i--) {
			document.form.cityId.options.remove(i);
		}
	}
</script>
</head>
<body onload="dis()">
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

						<!-- Area -->
						<form id="form" class="form-horizontal form-bordered"
							method="post" action="<%=request.getContextPath()%>/Area" name="form">
							<section class="panel">
								<header class="panel-heading">
									<div class="panel-actions">
										<a href="#" class="panel-action panel-action-toggle"
											data-panel-toggle></a> <a href="#"
											class="panel-action panel-action-dismiss" data-panel-dismiss></a>
									</div>

									<h2 class="panel-title">Area</h2>
								</header>

								<div class="panel-body">


									<div class="form-group">
										<label class="col-md-3 control-label" for="inputSuccess">Country</label>
										<div class="col-md-6">

											<select class="form-control mb-md" name="countryId"
												id="countryId" onchange="state()">
												<option selected="selected">Select One</option>
												<m:forEach items="${sessionScope.countryls}" var="i">
													<option value="${i.countryId}">${i.countryName}</option>
												</m:forEach>
											</select>

										</div>

									</div>


									<div class="form-group">
										<label class="col-md-3 control-label" for="inputSuccess">State</label>
										<div class="col-md-6">

											<select class="form-control mb-md" name="stateId"
												id="stateId"   onchange="city()">

											</select>

										</div>

									</div>
									<div class="form-group">
										<label class="col-md-3 control-label" for="inputSuccess">City</label>
										<div class="col-md-6">

											<select class="form-control mb-md" name="cityId" id="cityId">
											</select>

										</div>

									</div>

									<!--End city -->

									<div class="form-group">
										<label class="col-md-3 control-label" for="inputDefault">Area-Name</label>
										<div class="col-md-6">
											<input type="text" name="areaName" class="form-control"
												id="inputDefault" required aria-required="true" />
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-3 control-label" for="textareaAutosize">Description</label>
										<div class="col-md-6">
											<textarea class="form-control" name="areaDes" rows="3"
												id="textareaAutosize" data-plugin-textarea-autosize></textarea>
										</div>
									</div>
								</div>
								<footer class="panel-footer">
									<input type="submit" class="btn btn-primary" value="Add"></input>
									<input type="reset" class="btn btn-default">
									<div style="float: right;">
										<a href="<%=request.getContextPath()%>/Area?string=search">
											<input type="button" class="btn btn-primary" value="Show all">
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
	<script src="js/examples.validation.js"></script>
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
</body>
</html>