<%@page import="ADO.CountryDAO"%>
<%@page import="java.util.*"%>
<%@page import="VO.CountryVO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="m" uri="http://java.sun.com/jstl/core_rt"%>
    <!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

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
<!-- Theme CSS -->
		<link rel="stylesheet" href="css/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="css/theme-custom.css">
		<link rel="stylesheet" href="css/bootstrap-fileupload.min.css" />
		<!-- Head Libs -->
		<script async="" src="//www.google-analytics.com/analytics.js"></script>
		<script src="js/modernizr.js"></script>
		<link rel="stylesheet" href="css/style-switcher.css">
			<link rel="stylesheet/less" href="assets/vendor/style-switcher/less/skin.less">
					<link rel="stylesheet" href="css/color1.css" />
					<link rel="stylesheet" href="css/color2.css" />
					<link rel="stylesheet" href="css/colorpicker.css">
					<script type="text/javascript">
					function divcall(div){
						var string = div;
						var reporterDiv= document.getElementById("reporterDiv");
						var userdiv= document.getElementById("userDiv");
						if(string=="user"){
						
						reporterDiv.style.display="none";
						userdiv.style.display="block";
						}
						if(string=="reporter"){
						userdiv.style.display="none";
						reporterDiv.style.display="block";
						}
					}
					function divreportercall(){
						
					}
					</script>
					
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
									document.getElementById("stateId").add(optiondiv);
									
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
									document.getElementById("cityId").add(optiondiv);
									
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
									document.getElementById("areaId").add(optiondiv);
									
								}
							
								 
							 }
							
						}
						xreq.open("GET","${pageContext.request.contextPath}/AjaxScript?string=area&cityId="+cityId.value,true);
						xreq.send();

	}
						function allremoveState() {
		var stateId = document.getElementById("stateId").options.length;
		for (var i = stateId; i >= 1; i--) {
			document.getElementById("stateId").remove(i);
		}
	}
	function allremoveCity(){
		var cityId = document.getElementById("cityId").options.length;
		for (var i = cityId; i >= 1; i--) {
			document.getElementById("cityId").remove(i);

		}
	}
	function allremoveArea(){
		var areaId = document.getElementById("areaId").options.length;
		for (var i = areaId; i >= 1; i--) {
			document.getElementById("areaId").remove(i);

		}
	}
	

</script>

					
					
	</head>
	<body>
	
	<%
CountryVO countryVO= new CountryVO();
CountryDAO countryDAO = new CountryDAO();
List<CountryVO> countryls=countryDAO.search(countryVO);
session.setAttribute("countryls", countryls);

%>
		<!-- start: page -->
		<section class="body-sign">
			<div class="center-sign">
				<a href="/" class="logo pull-left">
					<img src="img/logo-default.png" height="54" alt="Porto Admin" />
				</a>

				<div class="panel panel-sign">
					<div class="panel-title-sign mt-xl text-right">
						<h2 class="title text-uppercase text-weight-bold m-none"><i class="fa fa-user mr-xs"></i> Sign Up</h2>
					</div>
					<div class="panel-body" style="width: 725px;">
					<div class="radio-custom radio-primary">
					<input type="radio" value="User" name="r" onchange="divcall('user')"><label>User</label>
					</div>
					<div class="radio-custom radio-primary" style="position: relative;top: -29px;left: 74px;">
					<input type="radio" value="Reporter" name="r" onchange="divcall('reporter')" ><label>Reporter</label>
					</div>
					<!-- User Registration -->
				<div class="row" id="userDiv" style="display: none;">
					<div class="col-lg-12">
						<!-- Country -->
						<form id="form" class="form-horizontal form-bordered" enctype="multipart/form-data"
							action="<%=request.getContextPath()%>/SignUp" method="post">
							<section class="panel">
								
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
									<label class="col-md-3 control-label" for="inputDefault">Gender</label>
									<div class="col-md-6">
									<div class="radio-custom radio-primary">
																<input type="radio" id="radioExample1" name="gender">
																<label for="radioExample1">Male</label>
									</div>
									<div class="radio-custom radio-primary">
																<input type="radio" id="radioExample1" name="gender">
																<label for="radioExample1">Female</label>
									</div>
									<div class="radio-custom radio-primary">
																<input type="radio" id="radioExample1" name="gender">
																<label for="radioExample1">Other</label>
									</div>							
									
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
												<label class="col-md-3 control-label">Select Profile Pic</label>
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
																<input type="file" name="file" />
															</span>
															<a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
														</div>
													</div>
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
							<input type="hidden" name="userType" value="user">
						</form>
					</div>
				</div>
				<!-- end: page -->
					
					<!--Reporter Registration  -->
				<div class="row" id="reporterDiv" style="display: none;">
					<div class="col-lg-12">
						<!-- Country -->
						<form id="form" class="form-horizontal form-bordered"
							action="<%=request.getContextPath() %>/Reporter?String=insert" method="post">
							<section class="panel">
								
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
												<div class="col-md-6" style="width: 75%;">
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
					
					</div>
				</div>

				<p class="text-center text-muted mt-md mb-md">&copy; Copyright 2014. All Rights Reserved.</p>
			</div>
		</section>
		<!-- end: page -->

		<!-- Vendor -->
		<script src="js/jquery.validate.js"></script>
	<script src="js/jquery.js"></script>		
		<script src="js/jquery.browser.mobile.js"></script>	
		<script src="js/jquery-cookie.js"></script>		
		<script src="js/style.switcher.js"></script>		
		<script src="js/bootstrap.js"></script>		
		<script src="js/nanoscroller.js"></script>	
		<script src="js/bootstrap-datepicker.js"></script>		
		<script src="js/jquery.magnific-popup.js"></script>		
		<script src="js/jquery-placeholder.js"></script>
		
		<script src="js/bootstrap-fileupload.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
		<!-- Analytics to Track Preview Website -->		<script>		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');		  ga('create', 'UA-42715764-8', 'auto');		  ga('send', 'pageview');		</script>
		<script src="js/examples.validation.js"></script>
	</body>
</html>