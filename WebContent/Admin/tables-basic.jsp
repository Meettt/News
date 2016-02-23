<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Basic Tables | Porto Admin - Responsive HTML5 Template 1.4.2</title>
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
			<link rel="stylesheet/less" href="assets/vendor/style-switcher/less/skin.less">
								
					<style id="less:porto-admin-1:4:2-assets-vendor-style-switcher-less-skin" type="text/css">
					/* Base */
					a,
					.btn-link {
					color: #0088cc;
					}
					a:hover,
					a:focus,
					.btn-link:hover,
					.btn-link:focus {
					color: #0099e6;
					}
					a:active,
					.btn-link:active {
					color: #0077b3;
					}
					/* Sidebar Left */
					.sidebar-left .sidebar-header .sidebar-toggle:hover i {
					color: #0088cc;
					}
					@media only screen and (min-width: 768px) {
					html.sidebar-left-collapsed.scroll .sidebar-left .nav-main li.nav-active a:hover,
					html.sidebar-left-collapsed.boxed .sidebar-left .nav-main li.nav-active a:hover {
					color: #0088cc;
					}
					html.sidebar-left-collapsed.scroll .sidebar-left .nav-main > li:hover > a span.label,
					html.sidebar-left-collapsed.boxed .sidebar-left .nav-main > li:hover > a span.label {
					background-color: #0088cc;
					}
					}
					/* Layout Boxed - small than min-width */
					@media only screen and (max-width: 1199px) {
					html.boxed .header {
					border-top-color: #0088cc;
					}
					}
					/* Layout Boxed - larger or equal min width */
					@media only screen and (min-width: 1200px) {
					html.boxed .header {
					border-top-color: #0088cc;
					}
					html.boxed .sidebar-right {
					border-top-color: #0088cc;
					min-height: 0;
					}
					}
					/* Userbox - Open */
					.userbox.open .dropdown-menu a:hover {
					background: #0088cc;
					}
					/* Mailbox */
					.mailbox .mailbox-mail-list li.active {
					background: #0088cc;
					}
					.mailbox .mailbox-mail .mailbox-close-mail {
					color: #0088cc;
					}
					.mailbox .mailbox-mail .mailbox-close-mail:hover {
					color: #0099e6;
					}
					.mailbox .mailbox-mail .panel .panel-heading .panel-actions a:hover {
					color: #0088cc;
					}
					/* Media Gallery */
					.media-gallery ul.mg-tags > li a:hover {
					background-color: #0088cc;
					}
					.media-gallery .mg-files .thumbnail .thumb-preview .mg-thumb-options .mg-zoom {
					background-color: #0088cc;
					}
					.media-gallery .mg-files .thumbnail .thumb-preview .mg-thumb-options .mg-toolbar {
					background-color: #0088cc;
					}
					.media-gallery .mg-files .thumbnail.thumbnail-selected {
					box-shadow: 0 0 8px -1px #0088cc;
					}
					/* Sign Screens - Wrappers */
					.body-sign .panel-sign .panel-title-sign .title {
					background-color: #0088cc;
					}
					.body-sign .panel-sign .panel-body {
					border-top-color: #0088cc;
					}
					/* Lock Screen */
					.body-locked .current-user .user-image {
					border-color: #0088cc;
					}
					/* Blockquote */
					blockquote.primary {
					border-color: #0088cc;
					}
					/* Nav Pills */
					.nav-pills-primary > li a:hover,
					.nav-pills-primary > li a:focus {
					color: #0088cc;
					background-color: #cceeff;
					}
					.nav-pills-primary > li.active > a,
					.nav-pills-primary > li.active > a:hover,
					.nav-pills-primary > li.active > a:active,
					.nav-pills-primary > li.active > a:focus {
					background-color: #0088cc;
					}
					/* Dropdown Menu */
					.dropdown-menu > .active > a,
					.dropdown-menu > .active > a:hover,
					.dropdown-menu > .active > a:focus {
					background-color: #0088cc;
					}
					.open > .dropdown-toggle.btn-primary {
					background: #0088cc;
					border-color: #0077b3;
					}
					body .btn-primary.dropdown-toggle {
					border-left-color: #00a3f5;
					}
					/* Buttons */
					body .btn-primary {
					color: #ffffff;
					text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
					background-color: #0088cc;
					border-color: #0088cc;
					}
					body .btn-primary:hover {
					border-color: #0099e6 !important;
					background-color: #0099e6;
					}
					body .btn-primary:active,
					body .btn-primary:focus {
					border-color: #0077b3 !important;
					background-color: #0077b3;
					}
					body .btn-primary[disabled] {
					border-color: #33bbff !important;
					background-color: #33bbff;
					}
					body .btn-success {
					color: #ffffff;
					text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
					background-color: #47a447;
					border-color: #47a447;
					}
					body .btn-success:hover {
					border-color: #51b451 !important;
					background-color: #51b451;
					}
					body .btn-success:active,
					body .btn-success:focus {
					border-color: #3f923f !important;
					background-color: #3f923f;
					}
					body .btn-success[disabled] {
					border-color: #86cb86 !important;
					background-color: #86cb86;
					}
					body .btn-warning {
					color: #ffffff;
					text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
					background-color: #ed9c28;
					border-color: #ed9c28;
					}
					body .btn-warning:hover {
					border-color: #efa740 !important;
					background-color: #efa740;
					}
					body .btn-warning:active,
					body .btn-warning:focus {
					border-color: #e89113 !important;
					background-color: #e89113;
					}
					body .btn-warning[disabled] {
					border-color: #f5c786 !important;
					background-color: #f5c786;
					}
					body .btn-danger {
					color: #ffffff;
					text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
					background-color: #d2322d;
					border-color: #d2322d;
					}
					body .btn-danger:hover {
					border-color: #d64742 !important;
					background-color: #d64742;
					}
					body .btn-danger:active,
					body .btn-danger:focus {
					border-color: #bd2d29 !important;
					background-color: #bd2d29;
					}
					body .btn-danger[disabled] {
					border-color: #e48481 !important;
					background-color: #e48481;
					}
					body .btn-info {
					color: #ffffff;
					text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
					background-color: #5bc0de;
					border-color: #5bc0de;
					}
					body .btn-info:hover {
					border-color: #70c8e2 !important;
					background-color: #70c8e2;
					}
					body .btn-info:active,
					body .btn-info:focus {
					border-color: #46b8da !important;
					background-color: #46b8da;
					}
					body .btn-info[disabled] {
					border-color: #b0e1ef !important;
					background-color: #b0e1ef;
					}
					body .btn-dark {
					color: #ffffff;
					text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
					background-color: #171717;
					border-color: #171717;
					}
					body .btn-dark:hover {
					border-color: #242424 !important;
					background-color: #242424;
					}
					body .btn-dark:active,
					body .btn-dark:focus {
					border-color: #0a0a0a !important;
					background-color: #0a0a0a;
					}
					body .btn-dark[disabled] {
					border-color: #4a4a4a !important;
					background-color: #4a4a4a;
					}
					/* Switch*/
					.switch.switch-primary .ios-switch .on-background {
					background: #0088cc;
					}
					/* Label */
					.label-primary {
					background: #0088cc;
					}
					/* Text Primary */
					.text-primary {
					color: #0088cc !important;
					}
					/* BG Primary */
					.bg-primary {
					background: #0088cc;
					}
					/* Alternative Font Style */
					.alternative-font {
					color: #0088cc;
					}
					/* Hightlight */
					.highlight {
					background-color: #0088cc;
					}
					/* Drop Caps */
					p.drop-caps.colored:first-child:first-letter {
					color: #0088cc;
					}
					p.drop-caps.colored.secundary:first-child:first-letter {
					background-color: #0088cc;
					}
					/* Well */
					.well.primary {
					background: #0088cc;
					border-color: #006699;
					}
					/* Form */
					.form-control:focus {
					border-color: #33bbff;
					box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(0, 136, 204, 0.3);
					}
					/* Header */
					.header .toggle-sidebar-left {
					background: #0088cc;
					}
					/* Page Header */
					.page-header h2 {
					border-bottom-color: #0088cc;
					}
					.page-header .sidebar-right-toggle:hover {
					color: #0088cc;
					}
					/* Navigation */
					ul.nav-main > li.nav-active > a {
					box-shadow: 2px 0 0 #0088cc inset;
					}
					ul.nav-main > li.nav-active > i {
					color: #0088cc;
					}
					ul.nav-main li .nav-children li.nav-active > a {
					color: #0088cc;
					}
					/* Nano Scroller Plugin */
					html.no-overflowscrolling .nano > .nano-pane > .nano-slider {
					background: #0088cc;
					}
					/* Nav Pills */
					.nav-pills > .active a,
					.nav-pills > .active a:hover,
					.nav-pills > .active a:focus {
					background-color: #0088cc;
					}
					/* Pagination */
					.pagination > li a {
					color: #0088cc;
					}
					.pagination > li a:hover,
					.pagination > li a:focus {
					color: #0099e6;
					}
					.pagination > li.active a,
					.pagination > li.active span,
					.pagination > li.active a:hover,
					.pagination > li.active span:hover,
					.pagination > li.active a:focus,
					.pagination > li.active span:focus {
					background-color: #0088cc;
					border-color: #0088cc;
					}
					.pagination > li.active a {
					background-color: #0088cc;
					}
					html .pagination > li.active a,
					html.dark .pagination > li.active a,
					html .pagination > li.active span,
					html.dark .pagination > li.active span,
					html .pagination > li.active a:hover,
					html.dark .pagination > li.active a:hover,
					html .pagination > li.active span:hover,
					html.dark .pagination > li.active span:hover,
					html .pagination > li.active a:focus,
					html.dark .pagination > li.active a:focus,
					html .pagination > li.active span:focus,
					html.dark .pagination > li.active span:focus {
					background-color: #0088cc;
					border-color: #0088cc;
					}
					html .pagination > li.active a,
					html.dark .pagination > li.active a {
					background-color: #0088cc;
					}
					/* Fullcalendar */
					.fc .fc-toolbar h2:before {
					color: #0088cc;
					}
					.fc .fc-toolbar .fc-button.fc-state-active {
					background-color: #0088cc;
					}
					.fc-event {
					background: #0088cc;
					border-color: #0088cc;
					}
					.fc-event.fc-event-primary {
					background: #0088cc;
					border-color: #0088cc;
					}
					/* Maps */
					.jqvmap-zoomin,
					.jqvmap-zoomout {
					background: #0088cc;
					}
					/* Timeline */
					.timeline .tm-items > li .tm-datetime .tm-datetime-time {
					color: #0088cc;
					}
					.timeline .tm-items > li .tm-icon {
					border-color: #0088cc;
					color: #0088cc;
					}
					.timeline.timeline-simple .tm-body .tm-items > li:before {
					background: #0088cc;
					box-shadow: 0 0 0 3px #ffffff, 0 0 0 6px #0088cc;
					}
					html.dark .timeline.timeline-simple .tm-body .tm-items > li:before {
					background: #0088cc;
					box-shadow: 0 0 0 3px #2e353e, 0 0 0 6px #0088cc;
					}
					/* Princing Table */
					.pricing-table h3 span {
					color: #0088cc;
					}
					.pricing-table .most-popular h3 {
					background-color: #0088cc !important;
					color: #ffffff !important;
					}
					/* Data Tables Loading */
					.dataTables_processing {
					background-color: #0088cc;
					}
					/* Accordion */
					.panel-group .panel-accordion .panel-heading a {
					color: #0088cc;
					}
					/* Alerts */
					.alert-primary {
					background-color: #0088cc;
					border-color: #007ebd;
					}
					.alert-primary .alert-link {
					color: #004466;
					}
					/* Nestable */
					.dd-handle:hover {
					color: #0088cc !important;
					}
					.dd-placeholder {
					background: #e6f7ff;
					border-color: #0088cc;
					}
					/* Panels */
					.panel-highlight .panel-heading {
					background-color: #0088cc;
					border-color: #0088cc;
					}
					.panel-highlight .panel-body {
					background-color: #0088cc;
					}
					html .panel-primary .panel-heading {
					background: #0088cc;
					border-color: #0088cc;
					}
					.panel-heading.bg-primary {
					background: #0088cc;
					}
					.panel-body.bg-primary {
					background: #0088cc;
					}
					.panel-featured-primary {
					border-color: #0088cc;
					}
					.panel-featured-primary .panel-title {
					color: #0088cc;
					}
					.panel-heading-icon.bg-primary {
					background: #0088cc;
					}
					.panel-group .panel-accordion-primary .panel-heading .panel-title a {
					background: #0088cc;
					}
					/* Progress Bar */
					.progress-bar {
					background-color: #0088cc;
					}
					.progress .progress-bar-primary {
					background-color: #0088cc;
					}
					/* Toggle */
					.toggle label {
					border-left-color: #0088cc;
					color: #0088cc;
					}
					.toggle.active > label {
					background: #0088cc !important;
					border-color: #0088cc;
					}
					/* Treeview */
					.jstree-default .jstree-hovered {
					background-color: #e6f7ff !important;
					}
					.jstree-default .jstree-clicked {
					background-color: #b3e5ff !important;
					}
					.jstree-default .colored {
					color: #0088cc !important;
					}
					.jstree-default .colored .jstree-icon {
					color: #0088cc !important;
					}
					.jstree-default .colored-icon .jstree-icon {
					color: #0088cc !important;
					}
					/* Widgets */
					.sidebar-widget.widget-tasks ul li:before {
					border-color: #0088cc;
					}
					.widget-twitter-profile {
					background-color: #0088cc;
					}
					.widget-twitter-profile .profile-quote {
					background-color: #0096e0;
					}
					.widget-twitter-profile .profile-quote .quote-footer {
					border-top-color: rgba(0, 170, 255, 0.7);
					}
					.widget-profile-info .profile-info .profile-footer {
					border-top-color: rgba(0, 170, 255, 0.7);
					}
					/* Thumb Info */
					.thumb-info .thumb-info-type {
					background-color: #0088cc;
					}
					/* Social Icons */
					.social-icons-list a {
					background: #0088cc;
					}
					/* Notifications */
					.notifications .notification-menu .notification-title {
					background: #0088cc;
					}
					.notifications .notification-menu .notification-title .label-default {
					background-color: #006699;
					}
					.notifications .notification-menu:before,
					.notifications .notification-icon:before {
					border-bottom-color: #0088cc;
					}
					.ui-pnotify .notification-primary {
					background: rgba(0, 136, 204, 0.95);
					}
					.ui-pnotify.stack-bar-top .notification-primary,
					.ui-pnotify.stack-bar-bottom .notification-primary {
					background: #0088cc;
					}
					.ui-pnotify.notification-primary .notification,
					.ui-pnotify.notification-primary .notification-primary {
					background: rgba(0, 136, 204, 0.95);
					}
					.ui-pnotify.notification-primary.stack-bar-top .notification,
					.ui-pnotify.notification-primary.stack-bar-bottom .notification,
					.ui-pnotify.notification-primary.stack-bar-top .notification-primary,
					.ui-pnotify.notification-primary.stack-bar-bottom .notification-primary {
					background: #0088cc;
					}
					/* Modal */
					.modal-block-primary .fa {
					color: #0088cc;
					}
					.modal-block-primary.modal-header-color .panel-heading {
					background-color: #0088cc;
					}
					.modal-block-primary.modal-full-color .panel {
					background-color: #00a3f5;
					}
					.modal-block-primary.modal-full-color .panel-heading {
					background-color: #0088cc;
					}
					.modal-block-primary.modal-full-color .panel-footer {
					background-color: #00a3f5;
					}
					/* Modal Icon */
					.modal-block-primary .modal-icon .fa {
					color: #0088cc;
					}
					/* Tabs */
					html body .tabs-primary .nav-tabs li a,
					html.dark body .tabs-primary .nav-tabs li a,
					html body .tabs-primary .nav-tabs.nav-justified li a,
					html.dark body .tabs-primary .nav-tabs.nav-justified li a,
					html body .tabs-primary .nav-tabs li a:hover,
					html.dark body .tabs-primary .nav-tabs li a:hover,
					html body .tabs-primary .nav-tabs.nav-justified li a:hover,
					html.dark body .tabs-primary .nav-tabs.nav-justified li a:hover {
					color: #0088cc;
					}
					html body .tabs-primary .nav-tabs li a:hover,
					html.dark body .tabs-primary .nav-tabs li a:hover,
					html body .tabs-primary .nav-tabs.nav-justified li a:hover,
					html.dark body .tabs-primary .nav-tabs.nav-justified li a:hover {
					border-top-color: #0088cc;
					}
					html body .tabs-primary .nav-tabs li.active a,
					html.dark body .tabs-primary .nav-tabs li.active a,
					html body .tabs-primary .nav-tabs.nav-justified li.active a,
					html.dark body .tabs-primary .nav-tabs.nav-justified li.active a,
					html body .tabs-primary .nav-tabs li.active a:hover,
					html.dark body .tabs-primary .nav-tabs li.active a:hover,
					html body .tabs-primary .nav-tabs.nav-justified li.active a:hover,
					html.dark body .tabs-primary .nav-tabs.nav-justified li.active a:hover,
					html body .tabs-primary .nav-tabs li.active a:focus,
					html.dark body .tabs-primary .nav-tabs li.active a:focus,
					html body .tabs-primary .nav-tabs.nav-justified li.active a:focus,
					html.dark body .tabs-primary .nav-tabs.nav-justified li.active a:focus {
					border-top-color: #0088cc;
					color: #0088cc;
					}
					html body .tabs-primary.tabs-bottom .nav-tabs li a:hover,
					html.dark body .tabs-primary.tabs-bottom .nav-tabs li a:hover,
					html body .tabs-primary.tabs-bottom .nav-tabs.nav-justified li a:hover,
					html.dark body .tabs-primary.tabs-bottom .nav-tabs.nav-justified li a:hover {
					border-bottom-color: #0088cc;
					}
					html body .tabs-primary.tabs-bottom .nav-tabs li.active a,
					html.dark body .tabs-primary.tabs-bottom .nav-tabs li.active a,
					html body .tabs-primary.tabs-bottom .nav-tabs.nav-justified li.active a,
					html.dark body .tabs-primary.tabs-bottom .nav-tabs.nav-justified li.active a,
					html body .tabs-primary.tabs-bottom .nav-tabs li.active a:hover,
					html.dark body .tabs-primary.tabs-bottom .nav-tabs li.active a:hover,
					html body .tabs-primary.tabs-bottom .nav-tabs.nav-justified li.active a:hover,
					html.dark body .tabs-primary.tabs-bottom .nav-tabs.nav-justified li.active a:hover,
					html body .tabs-primary.tabs-bottom .nav-tabs li.active a:focus,
					html.dark body .tabs-primary.tabs-bottom .nav-tabs li.active a:focus,
					html body .tabs-primary.tabs-bottom .nav-tabs.nav-justified li.active a:focus,
					html.dark body .tabs-primary.tabs-bottom .nav-tabs.nav-justified li.active a:focus {
					border-top-color: #FFF;
					border-bottom-color: #0088cc;
					}
					html body .tabs-primary.tabs-vertical.tabs-left li a:hover,
					html.dark body .tabs-primary.tabs-vertical.tabs-left li a:hover {
					border-left-color: #0088cc;
					}
					html body .tabs-primary.tabs-vertical.tabs-left li.active a,
					html.dark body .tabs-primary.tabs-vertical.tabs-left li.active a,
					html body .tabs-primary.tabs-vertical.tabs-left li.active a:hover,
					html.dark body .tabs-primary.tabs-vertical.tabs-left li.active a:hover,
					html body .tabs-primary.tabs-vertical.tabs-left li.active a:focus,
					html.dark body .tabs-primary.tabs-vertical.tabs-left li.active a:focus {
					border-left-color: #0088cc;
					}
					html body .tabs-primary.tabs-vertical.tabs-right li a:hover,
					html.dark body .tabs-primary.tabs-vertical.tabs-right li a:hover {
					border-right-color: #0088cc;
					}
					html body .tabs-primary.tabs-vertical.tabs-right li.active a,
					html.dark body .tabs-primary.tabs-vertical.tabs-right li.active a,
					html body .tabs-primary.tabs-vertical.tabs-right li.active a:hover,
					html.dark body .tabs-primary.tabs-vertical.tabs-right li.active a:hover,
					html body .tabs-primary.tabs-vertical.tabs-right li.active a:focus,
					html.dark body .tabs-primary.tabs-vertical.tabs-right li.active a:focus {
					border-right-color: #0088cc;
					}
					/* Simple List */
					ul.simple-bullet-list li:before {
					border-color: #0088cc;
					}
					/* Simple Card List */
					.simple-card-list li.primary {
					background: #0088cc;
					}
					/* Search Results */
					.search-content .search-toolbar .nav-pills li.active a {
					color: #0088cc;
					border-bottom-color: #0088cc;
					}
					.search-results-list .result-thumb .fa {
					background: #0088cc;
					}
					/* Scrollable */
					.scrollable.colored-slider .scrollable-slider {
					background: #0088cc;
					}
					html.dark .search-content .search-toolbar .nav-pills li.active a,
					html.dark .search-content .search-toolbar .nav-pills li.active a:hover,
					html.dark .search-content .search-toolbar .nav-pills li.active a:focus {
					color: #0088cc;
					border-bottom-color: #0088cc;
					}
					/* Time Picker */
					.bootstrap-timepicker-widget table td a:hover {
					background-color: #0088cc;
					}
					/* Loading Progress */
					#nprogress .bar {
					background: #0088cc;
					}
					#nprogress .peg {
					box-shadow: 0 0 10px 1px #0088cc, 0 0 5px #0088cc;
					}
					/* Zoom */
					.img-thumbnail .zoom {
					background: #0088cc;
					}
					/* Owl Carousel */
					.owl-theme .owl-dots .owl-dot.active span,
					.owl-theme .owl-dots .owl-dot:hover span {
					background-color: #0074ad;
					}
					.owl-theme .owl-nav [class*="owl-"] {
					background: #0088cc;
					}
					.owl-theme .owl-nav [class*="owl-"]:focus,
					.owl-theme .owl-nav [class*="owl-"]:hover {
					background-color: #009ceb;
					}
					/* Chartist */
					.ct-chart .tooltip {
					background: #0088cc;
					}
					.ct-chart .tooltip:after {
					border-top-color: #0088cc;
					}
					.ct-chart .ct-series.ct-series-a .ct-bar,
					.ct-chart .ct-series.ct-series-a .ct-line,
					.ct-chart .ct-series.ct-series-a .ct-point,
					.ct-chart .ct-series.ct-series-a .ct-slice.ct-donut {
					stroke: #0088cc;
					}
					.ct-chart .ct-series.ct-series-a .ct-area,
					.ct-chart .ct-series.ct-series-a .ct-slice:not(.ct-donut) {
					fill: #0088cc;
					}
					.ct-chart .ct-series.ct-series-b .ct-bar,
					.ct-chart .ct-series.ct-series-b .ct-line,
					.ct-chart .ct-series.ct-series-b .ct-point,
					.ct-chart .ct-series.ct-series-b .ct-slice.ct-donut {
					stroke: #005580;
					}
					.ct-chart .ct-series.ct-series-b .ct-area,
					.ct-chart .ct-series.ct-series-b .ct-slice:not(.ct-donut) {
					fill: #005580;
					}
					.ct-chart .ct-series.ct-series-i .ct-bar,
					.ct-chart .ct-series.ct-series-i .ct-line,
					.ct-chart .ct-series.ct-series-i .ct-point,
					.ct-chart .ct-series.ct-series-i .ct-slice.ct-donut {
					stroke: #005580;
					}
					.ct-chart .ct-series.ct-series-i .ct-area,
					.ct-chart .ct-series.ct-series-i .ct-slice:not(.ct-donut) {
					fill: #005580;
					}
					.ct-chart .ct-series.ct-series-j .ct-bar,
					.ct-chart .ct-series.ct-series-j .ct-line,
					.ct-chart .ct-series.ct-series-j .ct-point,
					.ct-chart .ct-series.ct-series-j .ct-slice.ct-donut {
					stroke: #1ab2ff;
					}
					.ct-chart .ct-series.ct-series-j .ct-area,
					.ct-chart .ct-series.ct-series-j .ct-slice:not(.ct-donut) {
					fill: #1ab2ff;
					}
					.ct-chart .ct-series.ct-series-n .ct-bar,
					.ct-chart .ct-series.ct-series-n .ct-line,
					.ct-chart .ct-series.ct-series-n .ct-point,
					.ct-chart .ct-series.ct-series-n .ct-slice.ct-donut {
					stroke: #00111a;
					}
					.ct-chart .ct-series.ct-series-n .ct-area,
					.ct-chart .ct-series.ct-series-n .ct-slice:not(.ct-donut) {
					fill: #00111a;
					}
					.ct-chart .ct-series.ct-series-o .ct-bar,
					.ct-chart .ct-series.ct-series-o .ct-line,
					.ct-chart .ct-series.ct-series-o .ct-point,
					.ct-chart .ct-series.ct-series-o .ct-slice.ct-donut {
					stroke: #80d4ff;
					}
					.ct-chart .ct-series.ct-series-o .ct-area,
					.ct-chart .ct-series.ct-series-o .ct-slice:not(.ct-donut) {
					fill: #80d4ff;
					}
					/* Checkboxes */
					html.dark .checkbox-primary label:before,
					.checkbox-primary label:before {
					background: #0088cc;
					border-color: #0077b3;
					}
					html.dark .checkbox-text-primary input[type="checkbox"]:checked + label:after,
					.checkbox-text-primary input[type="checkbox"]:checked + label:after {
					color: #0088cc;
					}
					/* Radios */
					html.dark .radio-primary input[type="radio"]:checked + label:after,
					.radio-primary input[type="radio"]:checked + label:after {
					background: #0088cc;
					-webkit-box-shadow: 0px 0px 1px #0088cc;
					box-shadow: 0px 0px 1px #0088cc;
					}
					/* Switch */
					.switch.switch-primary .ios-switch .on-background {
					background: #0088cc;
					}
					/* Progress Bar */
					.progress-bar {
					background-color: #0088cc;
					}
					.progress .progress-bar-primary {
					background-color: #0088cc;
					}
					/* Slider */
					.slider-primary .ui-slider-range,
					.slider-primary .ui-slider-handle {
					background: #0088cc;
					}
					.slider-gradient.slider-primary .ui-slider-range,
					.slider-gradient.slider-primary .ui-slider-handle {
					background-image: -webkit-linear-gradient(left, #00aaff 0, #0088cc 50%, #006699 100%);
					background-image: linear-gradient(left, #00aaff 0, #0088cc 50%, #006699 100%);
					}
					.slider-gradient.ui-slider-vertical.slider-primary .ui-slider-range,
					.slider-gradient.ui-slider-vertical.slider-primary .ui-slider-handle {
					background-image: -webkit-linear-gradient(to right, #00aaff 0, #0088cc 50%, #006699 100%);
					background-image: linear-gradient(to right, #00aaff 0, #0088cc 50%, #006699 100%);
					}
					/* DatePicker */
					.datepicker table {
					width: 100%;
					}
					.datepicker table thead tr th.prev:hover,
					.datepicker table thead tr th.next:hover {
					background: #0088cc;
					}
					.datepicker table thead tr:first-child th:hover {
					background: #0088cc;
					}
					.datepicker table tr td span:hover {
					background: #0088cc;
					}
					.datepicker table tr td.day:hover {
					background: #0088cc;
					}
					.datepicker table tfoot tr th:hover {
					background: #0088cc;
					}
					/* DatePicker: Dark */
					html.dark .datepicker.datepicker-primary table thead tr th.prev:hover,
					.datepicker.datepicker-dark table thead tr th.prev:hover,
					html.dark .datepicker.datepicker-primary table thead tr th.next:hover,
					.datepicker.datepicker-dark table thead tr th.next:hover {
					background: #0088cc;
					}
					html.dark .datepicker.datepicker-primary table tbody tr td.day:hover,
					.datepicker.datepicker-dark table tbody tr td.day:hover {
					background: #0088cc;
					}
					html.dark .datepicker.datepicker-primary table tbody tr td.day.active,
					.datepicker.datepicker-dark table tbody tr td.day.active {
					background: #0088cc;
					}
					/* DatePicker: Primary */
					.datepicker.datepicker-primary table thead tr:first-child {
					background-color: #0088cc;
					}
					.datepicker.datepicker-primary table thead tr:first-child th:hover {
					background-color: #006699;
					}
					.datepicker.datepicker-primary table thead tr:last-child {
					background-color: #0099e6;
					}
					.datepicker.datepicker-primary table thead tr:last-child th:hover {
					background-color: #0088cc;
					}
					.datepicker.datepicker-primary table tbody tr td.day:hover {
					background: #0088cc;
					}
					.datepicker.datepicker-primary table tbody tr td.day.active {
					background: #0088cc;
					}
					/* Select 2 */
					.select2-container-multi .select2-choices .select2-search-choice {
					background: #0088cc;
					}
					/* Wizard */
					.wizard-steps > li.active .badge {
					background-color: #0088cc;
					}
					.wizard-steps > li.active a,
					.wizard-steps > li.active a:hover,
					.wizard-steps > li.active a:focus {
					border-top-color: #0088cc;
					}
					.wizard-tabs ul > li.active .badge {
					background-color: #0088cc;
					}
					html .wizard-progress .steps-progress .progress-indicator,
					html.dark .wizard-progress .steps-progress .progress-indicator {
					background: #0088cc;
					}
					html .wizard-progress .wizard-steps li.completed a span,
					html.dark .wizard-progress .wizard-steps li.completed a span {
					border-color: #0088cc;
					background: #0088cc;
					}
					html .wizard-progress .wizard-steps li.active a span,
					html.dark .wizard-progress .wizard-steps li.active a span {
					color: #0088cc;
					border-color: #0088cc;
					}
					/* Tables */
					.table > thead > tr > td.primary,
					.table > tbody > tr > td.primary,
					.table > tfoot > tr > td.primary,
					.table > thead > tr > th.primary,
					.table > tbody > tr > th.primary,
					.table > tfoot > tr > th.primary,
					.table > thead > tr.primary > td,
					.table > tbody > tr.primary > td,
					.table > tfoot > tr.primary > td,
					.table > thead > tr.primary > th,
					.table > tbody > tr.primary > th,
					.table > tfoot > tr.primary > th {
					background-color: #0088cc;
					}
					/* Data Tables Loading */
					.dataTables_processing {
					background-color: #0088cc;
					}
					/* Liquid Meter */
					.liquid-meter-wrapper .liquid-meter-selector a.active {
					color: #0088cc;
					}
					</style>
					<link rel="stylesheet/less" href="assets/vendor/style-switcher/less/extension.less">
					<style id="less:porto-admin-1:4:2-assets-vendor-style-switcher-less-extension" type="text/css">
					/* Checkboxes */
					html.dark .checkbox-primary label:before,
					.checkbox-primary label:before {
					background: #0088cc;
					border-color: #0077b3;
					}
					html.dark .checkbox-text-primary input[type="checkbox"]:checked + label:after,
					.checkbox-text-primary input[type="checkbox"]:checked + label:after {
					color: #0088cc;
					}
					/* Radios */
					html.dark .radio-primary input[type="radio"]:checked + label:after,
					.radio-primary input[type="radio"]:checked + label:after {
					background: #0088cc;
					-webkit-box-shadow: 0px 0px 1px #0088cc;
					box-shadow: 0px 0px 1px #0088cc;
					}
					/* Switch */
					.switch.switch-primary .ios-switch .on-background {
					background: #0088cc;
					}
					/* Progress Bar */
					.progress-bar {
					background-color: #0088cc;
					}
					.progress .progress-bar-primary {
					background-color: #0088cc;
					}
					/* Slider */
					.slider-primary .ui-slider-range,
					.slider-primary .ui-slider-handle {
					background: #0088cc;
					}
					.slider-gradient.slider-primary .ui-slider-range,
					.slider-gradient.slider-primary .ui-slider-handle {
					background-image: -webkit-linear-gradient(left, #00aaff 0, #0088cc 50%, #006699 100%);
					background-image: linear-gradient(left, #00aaff 0, #0088cc 50%, #006699 100%);
					}
					.slider-gradient.ui-slider-vertical.slider-primary .ui-slider-range,
					.slider-gradient.ui-slider-vertical.slider-primary .ui-slider-handle {
					background-image: -webkit-linear-gradient(to right, #00aaff 0, #0088cc 50%, #006699 100%);
					background-image: linear-gradient(to right, #00aaff 0, #0088cc 50%, #006699 100%);
					}
					/* DatePicker */
					.datepicker table {
					width: 100%;
					}
					.datepicker table thead tr th.prev:hover,
					.datepicker table thead tr th.next:hover {
					background: #0088cc;
					}
					.datepicker table thead tr:first-child th:hover {
					background: #0088cc;
					}
					.datepicker table tr td span:hover {
					background: #0088cc;
					}
					.datepicker table tr td.day:hover {
					background: #0088cc;
					}
					.datepicker table tfoot tr th:hover {
					background: #0088cc;
					}
					/* DatePicker: Dark */
					html.dark .datepicker.datepicker-primary table thead tr th.prev:hover,
					.datepicker.datepicker-dark table thead tr th.prev:hover,
					html.dark .datepicker.datepicker-primary table thead tr th.next:hover,
					.datepicker.datepicker-dark table thead tr th.next:hover {
					background: #0088cc;
					}
					html.dark .datepicker.datepicker-primary table tbody tr td.day:hover,
					.datepicker.datepicker-dark table tbody tr td.day:hover {
					background: #0088cc;
					}
					html.dark .datepicker.datepicker-primary table tbody tr td.day.active,
					.datepicker.datepicker-dark table tbody tr td.day.active {
					background: #0088cc;
					}
					/* DatePicker: Primary */
					.datepicker.datepicker-primary table thead tr:first-child {
					background-color: #0088cc;
					}
					.datepicker.datepicker-primary table thead tr:first-child th:hover {
					background-color: #006699;
					}
					.datepicker.datepicker-primary table thead tr:last-child {
					background-color: #0099e6;
					}
					.datepicker.datepicker-primary table thead tr:last-child th:hover {
					background-color: #0088cc;
					}
					.datepicker.datepicker-primary table tbody tr td.day:hover {
					background: #0088cc;
					}
					.datepicker.datepicker-primary table tbody tr td.day.active {
					background: #0088cc;
					}
					/* Select 2 */
					.select2-container-multi .select2-choices .select2-search-choice {
					background: #0088cc;
					}
					/* Wizard */
					.wizard-steps > li.active .badge {
					background-color: #0088cc;
					}
					.wizard-steps > li.active a,
					.wizard-steps > li.active a:hover,
					.wizard-steps > li.active a:focus {
					border-top-color: #0088cc;
					}
					.wizard-tabs ul > li.active .badge {
					background-color: #0088cc;
					}
					html .wizard-progress .steps-progress .progress-indicator,
					html.dark .wizard-progress .steps-progress .progress-indicator {
					background: #0088cc;
					}
					html .wizard-progress .wizard-steps li.completed a span,
					html.dark .wizard-progress .wizard-steps li.completed a span {
					border-color: #0088cc;
					background: #0088cc;
					}
					html .wizard-progress .wizard-steps li.active a span,
					html.dark .wizard-progress .wizard-steps li.active a span {
					color: #0088cc;
					border-color: #0088cc;
					}
					/* Tables */
					.table > thead > tr > td.primary,
					.table > tbody > tr > td.primary,
					.table > tfoot > tr > td.primary,
					.table > thead > tr > th.primary,
					.table > tbody > tr > th.primary,
					.table > tfoot > tr > th.primary,
					.table > thead > tr.primary > td,
					.table > tbody > tr.primary > td,
					.table > tfoot > tr.primary > td,
					.table > thead > tr.primary > th,
					.table > tbody > tr.primary > th,
					.table > tfoot > tr.primary > th {
					background-color: #0088cc;
					}
					/* Data Tables Loading */
					.dataTables_processing {
					background-color: #0088cc;
					}
					/* Liquid Meter */
					.liquid-meter-wrapper .liquid-meter-selector a.active {
					color: #0088cc;
					}
					</style>
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
						<h2>Basic Tables</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.html">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Tables</span></li>
								<li><span>Basic</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
						<div class="row">
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Basic</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
							</div>
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Striped</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-striped mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Bordered</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-bordered mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
							</div>
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Hover Rows</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-hover mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Contextual</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>Class</th>
														<th>Text</th>
													</tr>
												</thead>
												<tbody>
													<tr class="active">
														<td>1</td>
														<td>active</td>
														<td>Lorem ipsum dolor sit amet</td>
													</tr>
													<tr class="primary">
														<td>2</td>
														<td>primary</td>
														<td>Lorem ipsum dolor sit amet</td>
													</tr>
													<tr class="success">
														<td>3</td>
														<td>success</td>
														<td>Lorem ipsum dolor sit amet</td>
													</tr>
													<tr class="warning">
														<td>4</td>
														<td>warning</td>
														<td>Lorem ipsum dolor sit amet</td>
													</tr>
													<tr class="danger">
														<td>5</td>
														<td>danger</td>
														<td>Lorem ipsum dolor sit amet</td>
													</tr>
													<tr class="info">
														<td>6</td>
														<td>info</td>
														<td>Lorem ipsum dolor sit amet</td>
													</tr>
													<tr class="dark">
														<td>7</td>
														<td>dark</td>
														<td>Lorem ipsum dolor sit amet</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
							</div>
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Condensed</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-condensed mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
													</tr>
													<tr>
														<td>4</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
													</tr>
													<tr>
														<td>5</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
													</tr>
													<tr>
														<td>6</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
													</tr>
													<tr>
														<td>7</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
													</tr>
													<tr>
														<td>8</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Actions</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
														<td class="actions">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
														<td class="actions">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
														<td class="actions">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
							</div>
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Actions Hover</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
														<td class="actions-hover">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
														<td class="actions-hover">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
														<td class="actions-hover">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Actions Hover with fade</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
														<td class="actions-hover actions-fade">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
														<td class="actions-hover actions-fade">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
														<td class="actions-hover actions-fade">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
							</div>
							<div class="col-md-6">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="panel-action panel-action-toggle" data-panel-toggle></a>
											<a href="#" class="panel-action panel-action-dismiss" data-panel-dismiss></a>
										</div>
						
										<h2 class="panel-title">Hover Rows + Actions Hover with Fade</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-hover mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>First Name</th>
														<th>Last Name</th>
														<th>Username</th>
														<th>Actions</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>1</td>
														<td>Mark</td>
														<td>Otto</td>
														<td>@mdo</td>
														<td class="actions-hover actions-fade">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Jacob</td>
														<td>Thornton</td>
														<td>@fat</td>
														<td class="actions-hover actions-fade">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Larry</td>
														<td>the Bird</td>
														<td>@twitter</td>
														<td class="actions-hover actions-fade">
															<a href=""><i class="fa fa-pencil"></i></a>
															<a href="" class="delete-row"><i class="fa fa-trash-o"></i></a>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>
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
		
		<!-- Theme Base, Components and Settings -->
		<script src="js/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="js/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="js/theme.init.js"></script>
		<!-- Analytics to Track Preview Website -->		<script>		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');		  ga('create', 'UA-42715764-8', 'auto');		  ga('send', 'pageview');		</script>
	</body>
</html>