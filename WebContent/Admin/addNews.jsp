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
<link rel="stylesheet" href="css/jquery-ui.css" />		


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
						function state(){
						var xreq = new XMLHttpRequest(); 
						var i;
						var country = document.getElementById("countryId");
						
						
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
						var i;1
						var stateId = document.getElementById("stateId");
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
					function area(){
						var xreq = new XMLHttpRequest(); 
						var i;
						var cityId = document.getElementById("cityId");
						
						 xreq.onreadystatechange = function () {
							 if(xreq.readyState ==4){
								 allremoveArea();
								var obj= JSON.parse(xreq.responseText);
								for( i =0 ;i<obj.length;i++){
									var optiondiv= document.createElement("option");
									optiondiv.value=obj[i].areaId;
									optiondiv.text=obj[i].areaName;
									document.form.areaId.options.add(optiondiv);
									
								}
							
								 
							 }
							
						}
						xreq.open("GET","${pageContext.request.contextPath}/AjaxScript?string=area&cityId="+cityId.value,true);
						xreq.send();

	}
					function sub_category(){
						var xreq = new XMLHttpRequest(); 
						var i;
						var categoryId = document.getElementById("categoryId");
						
						 xreq.onreadystatechange = function () {
							 if(xreq.readyState ==4){
								 allremoveSub_category();
								var obj= JSON.parse(xreq.responseText);
								for( i =0 ;i<obj.length;i++){
									var optiondiv= document.createElement("option");
									optiondiv.value=obj[i].sub_categoryId;
									optiondiv.text=obj[i].sub_categoryName;
									document.form.sub_categoryId.options.add(optiondiv);
									
								}
							
								 
							 }
							
						}
						xreq.open("GET","${pageContext.request.contextPath}/AjaxScript?string=sub_category&categoryId="+categoryId.value,true);
						xreq.send();

	}



	function allremoveState() {
		var stateId = document.getElementById("stateId");
		for (var i = stateId.length; i >= 1; i--) {
			document.form.stateId.options.remove(i);
		}
	}
	function allremoveCity(){
		var cityId = document.getElementById("cityId");
		for (var i = cityId.length; i >= 1; i--) {
			document.form.cityId.options.remove(i);

		}
	}
	function allremoveArea(){
		var areaId = document.getElementById("areaId");
		for (var i = areaId.length; i >= 1; i--) {
			document.form.areaId.options.remove(i);

		}
	}
	function allremoveSub_category(){
		var sub_categoryId = document.getElementById("sub_categoryId");
		for (var i = sub_categoryId.length; i >= 1; i--) {
			document.form.sub_categoryId.options.remove(i);

		}
	}


</script>

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
							action="<%=request.getContextPath()%>/AddNews" method="post" enctype="multipart/form-data" name="form">
							<section class="panel">
								<header class="panel-heading">
									<div class="panel-actions">
										<a href="#" class="panel-action panel-action-toggle"
											data-panel-toggle></a> <a href="#"
											class="panel-action panel-action-dismiss" data-panel-dismiss></a>
									</div>

									<h2 class="panel-title">Add News</h2>
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
												id="stateId"    onchange="city()">
												<option selected="selected">Select One</option>
												
											</select>

										</div>
												
												
											</div>
										<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">City</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md" name="cityId" id="cityId" onchange="area()">
													<option selected="selected">Select One</option>
													
												</select>
													
												</div>
								
											</div>
											
											<!--End city -->
											
										<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Area</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md" name="areaId" id="areaId">
													<option selected="selected">Select One</option>
											</select>
													
													
												</div>
								
											</div>	
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Category</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md" name="categoryId" id="categoryId" onchange="sub_category()">
													<option selected="selected">Select One</option>
													<m:forEach items="${sessionScope.categoryls}" var="i">
														<option value="${i.categoryId}">${i.categoryName}</option>
													</m:forEach>
												</select>
													
												</div>
								
											</div>	
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Sub-Category</label>
												<div class="col-md-6">
													
													<select class="form-control mb-md" name="sub_categoryId" id="sub_categoryId">
													<option selected="selected">Select One</option>
											</select>												
											</div>
								
											</div>	
											
											<div class="form-group">
												<label class="col-md-3 control-label">News Date</label>
												<div class="col-md-6">
													<div class="input-group">
														<span class="input-group-addon">
															<i class="fa fa-calendar"></i>
														</span>
														<input type="text" name="newsDate" data-plugin-datepicker class="form-control">
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Headline</label>
												<div class="col-md-6">
											
													<textarea class="form-control input-lg mb-md"  name="headLine" rows="3" data-plugin-maxlength maxlength="140"></textarea>
													<p>
														<code>max-length</code> set to 140.
													</p>
												</div>
											</div>
											
									
							
						
						<div class="row">
							<div class="col-xs-12">
								<section class="panel">
									
									<div class="panel-body">
										<form class="form-horizontal form-bordered" >
											<div class="form-group">
												<label class="col-md-3 control-label">Description about News</label>
												<div class="col-md-9">
												<textarea name="newsDes" class="summernote" data-plugin-summernote data-plugin-options='{ "height": 180, "codemirror": { "theme": "ambiance" } }'>Start typing...</textarea>
												
												</div>
											</div>
											
										</form>
									</div>
								</section>
							</div>
						</div>
						
							
									
						
							
							
							<div class="form-group">
												<label class="col-md-3 control-label">News Image</label>
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
																<input type="file" name="file"/>
															</span>
															<a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
														</div>
													</div>
												</div>
											</div>
								
								
								
							<div class="row">
							<div class="col-xs-12">
								<section class="panel">
									<div class="form-group">
												<label class="col-md-3 control-label">Description about News</label>
												<div class="col-md-9">
												
										<form action="/Country" class="dropzone dz-square" id="dropzone-example"></form>
									</div>
											
												
												
												</div>
									
								</section>
							</div>
						</div>	
						
					
						
						
						<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Type of News</label>
												<div class="col-md-6">
											
													<div class="checkbox-custom checkbox-danger">
																<input type="checkbox" name="latestNews" id="checkboxExample5">
																<label for="checkboxExample5">Latest News</label>
															</div>
						
															<div  class="checkbox-custom checkbox-primary">
																<input type="checkbox" name="topNews" id="checkboxExample2">
																<label for="checkboxExample2">Top News</label>
															</div>
												</div>
												
														</div>
														</div>
								<footer class="panel-footer">
								<input type="hidden" name="reporterId" value="1">
								<input type="hidden" name="string" value="insert">
									<input type="submit" class="btn btn-primary" value="Add" ></input>
									<input type="reset" class="btn btn-default">
									<div style="float:right;">
									
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
		<script src="js/examples.advanced.form.js"></script>
</body>
</html>