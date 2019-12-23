<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resource/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="/resource/assets/css/font-awesome.css" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resource/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="/resource/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="/resource/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
<script src="/resource/assets/js/ace-extra.js"></script>
</head>
<body>
<!-- 导航条 -->
<nav class="navbar navbar-default">
	<%@include  file="../comm/top.jsp"%>
</nav>
		
		
		
		
		
		<div id="sidebar" class="sidebar responsive" data-sidebar="true" data-sidebar-scroll="true" data-sidebar-hover="true" style="height: 660px;top: 70px">

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					</div>
				</div><!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list" style="top: 0px;">
					<li class="">
						<a href="javascript:showFuction('/admin/index')">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">首页</font></font></span>
						</a>

					</li>

					<li class="">
						<a href="javascript:showFuction('/admin/articles')" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
								文章列表
							</font></font></span>

						</a>


					</li>

					<li class="">
						<a href="javascript:showFuction('/admin/link')" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 友情链接管理&emsp;&emsp; </font></font></span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 形式&emsp;&emsp; </font></font></span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

					</li>

					<li class="">
						<a href="widgets.html">
							<i class="menu-icon fa fa-list-alt"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 小部件&emsp;&emsp; </font></font></span>
						</a>

					</li>

					<li class="">
						<a href="calendar.html">
							<i class="menu-icon fa fa-calendar"></i>

							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
								日历&emsp;&emsp;&emsp;&emsp;

								</font></font><!-- #section:basics/sidebar.layout.badge -->
								<span class="badge badge-transparent tooltip-error" title="" data-original-title="2 Important Events">
									<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
								</span>

								<!-- /section:basics/sidebar.layout.badge -->
							</span>
						</a>
					</li>

					<li class="">
						<a href="gallery.html">
							<i class="menu-icon fa fa-picture-o"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 画廊&emsp;&emsp;</font></font></span>
						</a>

					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-tag"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 更多页面 </font></font></span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

					</li>

					<li class="active open">
						<!-- 用户管理a标签 -->
						<a href="javascript:showFuction('/admin/users')" class="dropdown-toggle">
							<i class="menu-icon fa fa-file-o"></i>

							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
								用户管理

								 </font></font>

								<!-- /section:basics/sidebar.layout.badge -->
							</span>

						</a>
</ul>

						

			</div>
			
			
			
			
			
			<!-- 显示区 -->
			<div class="main-content-inner" style="width: 1200px">
					<!-- #section:basics/content.breadcrumbs -->
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>

						</ul><!-- /.breadcrumb -->

						<!-- #section:basics/content.searchbox -->
						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off">
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->

						<!-- /section:basics/content.searchbox -->
					</div>

					<!-- /section:basics/content.breadcrumbs -->
					<div class="page-content" id="a">
					
					</div>
			</div>
			
			<!-- 尾部 -->
			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">KE</span>
							阿珂6666 © 2019-2020
						</span>

						&nbsp; &nbsp;
						<span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>
			
			
	<script type="text/javascript">
		function showFuction(url){
			$(".page-content").load(url);
		}
	</script>
</body>
</html>