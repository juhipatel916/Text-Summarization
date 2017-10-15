
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<link rel="shortcut icon" href="images/favicon_1.ico">
<title>Add Category</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/core.css" rel="stylesheet" type="text/css">
<link href="css/icons.css" rel="stylesheet" type="text/css">
<link href="css/components.css" rel="stylesheet" type="text/css">
<link href="css/pages.css" rel="stylesheet" type="text/css">
<link href="css/menu.css" rel="stylesheet" type="text/css">
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<script src="js/modernizr.min.js"></script>
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
	})(window, document, 'script', 'js/analytics.js', 'ga');

	ga('create', 'UA-65046120-1', 'auto');
	ga('send', 'pageview');
</script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
</head>
<body class="fixed-left">
	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- Top Bar End -->
		<!-- ========== Left Sidebar Start ========== -->
		
		<!-- Left Sidebar End -->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page" style="margin-left: 50px">
			<!-- Start content -->
			<div class="content">
				<div class="container">
					<!-- Page-Title -->
					<div class="row" >
						<div class="col-sm-12" >
							
						</div>
						<div style="height: 50px">
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">Add Text</h3>
								</div>
								<div class="panel-body">
									<div class="form">
										<form action="<%=request.getContextPath()%>/TextSum" class="cmxform form-horizontal tasi-form"
											id="commentForm" method="post"
											novalidate="novalidate">
											<div class="form-group">
												
												<div class="col-lg-10">
												<%String content=(String)session.getAttribute("content");%>
													<textarea class="form-control" id="ccomment" name="area1"
														required="" aria-required="true" style="height:300px">
														<%if(content!=null)
	out.print(content);%>
														
														</textarea>
												</div>
											</div>
											<div class="form-group">
												<div class="col-lg-offset-2 col-lg-10" style="margin-left:10px">
													<button class="btn btn-success waves-effect waves-light"
														type="submit" >Get Summary</button>
														
													
												</div>
											</div>
											
									
									
									<!-- .form -->
							
								<!-- panel-body -->
									<div class="container">
								<div class="row" >
								<div class="col-sm-12">
								<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">Summary</h3>
								</div>
								<div class="panel-body">
									<div class="form">
								
											<div class="form-group">
												
												<div class="col-lg-10">
												<%String sum=(String)session.getAttribute("summary");%>
												
													<textarea class="form-control" id="ccomment" name="area2"
														required="" aria-required="true" style="height:100px">
														<%if(sum!=null)
	out.print(sum);
session.invalidate();
	%>
														
														</textarea>
												</div>
											</div>
											
										
									</div>
									<!-- .form -->
								</div>
							
							</div>
							</div>
							</div>
							</div>
							</form>
							</div>
							</div>
							</div>
							<!-- panel -->
						</div>
						<!-- col -->
					</div>
					<!-- End row -->
					<!-- Form-validation -->
				</div>
				<!-- container -->
			</div>
			<!-- content -->
		
		</div>
		<!-- ============================================================== -->
		<!-- End Right content here -->
		<!-- ============================================================== -->
		<!-- Right Sidebar -->
		<div class="side-bar right-bar nicescroll">
			<h4 class="text-center">Chat</h4>
			<div class="contact-list nicescroll">
				<ul class="list-group contacts-list">
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-1.jpg" alt="">
							</div>
							<span class="name">Chadengle</span> <i
							class="fa fa-circle online"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-2.jpg" alt="">
							</div>
							<span class="name">Tomaslau</span> <i class="fa fa-circle online"></i></a>
						<span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-3.jpg" alt="">
							</div>
							<span class="name">Stillnotdavid</span> <i
							class="fa fa-circle online"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-4.jpg" alt="">
							</div>
							<span class="name">Kurafire</span> <i class="fa fa-circle online"></i></a>
						<span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-5.jpg" alt="">
							</div>
							<span class="name">Shahedk</span> <i class="fa fa-circle away"></i></a>
						<span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-6.jpg" alt="">
							</div>
							<span class="name">Adhamdannaway</span> <i
							class="fa fa-circle away"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-7.jpg" alt="">
							</div>
							<span class="name">Ok</span> <i class="fa fa-circle away"></i></a> <span
						class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-8.jpg" alt="">
							</div>
							<span class="name">Arashasghari</span> <i
							class="fa fa-circle offline"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-9.jpg" alt="">
							</div>
							<span class="name">Joshaustin</span> <i
							class="fa fa-circle offline"></i></a> <span class="clearfix"></span></li>
					<li class="list-group-item"><a href="#"><div
								class="avatar">
								<img src="images/avatar-10.jpg" alt="">
							</div>
							<span class="name">Sortino</span> <i class="fa fa-circle offline"></i></a>
						<span class="clearfix"></span></li>
				</ul>
			</div>
		</div>
		<!-- /Right-bar -->
	</div>
	<!-- END wrapper -->
	<script>
		var resizefunc = [];
	</script>
	<!-- Main  -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/detect.js"></script>
	<script src="js/fastclick.js"></script>
	<script src="js/jquery.slimscroll.js"></script>
	<script src="js/jquery.blockUI.js"></script>
	<script src="js/waves.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.app.js"></script>
	<!--form validation-->
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<!--form validation init-->
	<script src="js/form-validation-init.js"></script>
	</div>
</body>
</html>