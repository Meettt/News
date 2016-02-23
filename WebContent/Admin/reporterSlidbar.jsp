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
					<li class="nav-active"><a href="reporterIndex.jsp"> <i
							class="fa fa-home" aria-hidden="true"></i> <span>Dashboard</span>
					</a></li>

				
					<li class="nav-active"><a href="<%=request.getContextPath()%>/Country?string=search&reporter=registration"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>Registration</span>
					</a></li>
					

				<li class="nav-active"><a href="<%=request.getContextPath()%>/Reporter?string=edit&reporterId=1"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>View Profile</span>
					</a></li>
					<li class="nav-active"><a href="<%=request.getContextPath()%>/AddNews?string=add&reporterId=1"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>Add News</span>
					</a></li>
					
					<li class="nav-active"><a href="<%=request.getContextPath()%>/AddNews?string=search&reporterId=1"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>Search News</span>
					</a></li>
					<li class="nav-active"><a href="<%=request.getContextPath()%>/Complain?string=search&reporterId=1&flag=reporter"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>Complain</span>
					</a></li>
					
					<li class="nav-active"><a href="<%=request.getContextPath()%>/AddNews?string=topandlatest&reporterId=1"> <i class="fa fa-list-alt"
							aria-hidden="true"></i> <span>Top and Latest News</span>
					</a></li>

				</ul>
			</nav>

		</div>

	</div>

</aside>
