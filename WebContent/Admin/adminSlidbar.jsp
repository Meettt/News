<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<aside id="sidebar-left" class="sidebar-left">

	<div class="sidebar-header">
		<div class="sidebar-title">Navigation</div>
		<div class="sidebar-toggle hidden-xs"
			data-toggle-class="sidebar-left-collapsed" data-target="html"
			data-fire-event="sidebar-left-toggle">
			<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
		</div>
	</div>

	<div class="nano">
		<div class="nano-content">
			<nav id="menu" class="nav-main" role="navigation">
				<ul class="nav nav-main">
					<li class="nav-active"><a href="adminIndex.jsp"> <i
							class="fa fa-home" aria-hidden="true"></i> <span>Dashboard</span>
					</a></li>

					<li class="nav-parent"><a> <i class="fa fa-list-alt"
							aria-hidden="true"></i> Country
					</a>
						<ul class="nav nav-children">
							<li><a
								href="<%=request.getContextPath()%>/Country?string=search">
									Search </a></li>
							<li><a href="addCountry.jsp"> Add </a></li>

						</ul></li>



					<li class="nav-parent"><a> <i class="fa fa-list-alt"
							aria-hidden="true"></i> State
					</a>
						<ul class="nav nav-children">
							<li><a
								href="<%=request.getContextPath()%>/State?string=search">
									Search </a></li>
							<li><a href="<%=request.getContextPath()%>/State?string=add">
									Add </a></li>
						</ul></li>


					<li class="nav-parent"><a> <i class="fa fa-list-alt"
							aria-hidden="true"></i> City
					</a>
						<ul class="nav nav-children">
							<li><a
								href="<%=request.getContextPath()%>/City?string=search">
									Search </a></li>
							<li><a href="<%=request.getContextPath()%>/City?string=add">
									Add </a></li>
						</ul></li>



					<li class="nav-parent"><a> <i class="fa fa-list-alt"
							aria-hidden="true"></i> Area
					</a>
						<ul class="nav nav-children">
							<li><a href="<%=request.getContextPath()%>/Area?string=search"> Search </a></li>
							<li><a href="<%=request.getContextPath()%>/Area?string=add"> Add </a></li>
						</ul></li>


					<li class="nav-parent"><a> <i class="fa fa-list-alt"
							aria-hidden="true"></i> Category
					</a>
						<ul class="nav nav-children">
							<li><a href="<%=request.getContextPath()%>/Category?string=search"> Search </a></li>
							<li><a href="addCategory.jsp"> Add </a></li>
						</ul></li>


					<li class="nav-parent"><a> <i class="fa fa-list-alt"
							aria-hidden="true"></i> Sub-Category
					</a>
						<ul class="nav nav-children">
							<li><a href="<%=request.getContextPath()%>/Sub_category?string=search"> Search </a></li>
							<li><a href="<%=request.getContextPath()%>/Sub_category?string=add"> Add </a></li>
						</ul></li>

					<li class="nav-active"><a href="<%=request.getContextPath()%>/Complain?string=search&reporterId=1&flag=admin"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>Complain</span>
					</a></li>
					<li class="nav-active"><a href="<%=request.getContextPath()%>/Reporter?string=search"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>Reporter</span>
					</a></li>
					<li class="nav-active"><a href="<%=request.getContextPath()%>/UserComplain?string=search&userId=1&flag=user"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>User Complain</span>
					</a></li>
				</ul>
			</nav>

		</div>

	</div>

</aside>
