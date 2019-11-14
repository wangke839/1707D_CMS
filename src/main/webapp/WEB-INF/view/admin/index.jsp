<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/assets/css/font-awesome.css" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resource/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/resource/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="/resource/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="/resource/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="/resource/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
<script src="/resource/assets/js/ace-extra.js"></script>

<!-- 轮播图 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">切换侧栏</font></font></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="#" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
							CMS——made by ke 
						</font></font></small>
					</a>

					<!-- /section:basics/navbar.layout.brand -->

					<!-- #section:basics/navbar.toggle -->

					<!-- /section:basics/navbar.toggle -->
				</div>

				<!-- #section:basics/navbar.dropdown -->&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav" style="">
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-tasks"></i>
								<span class="badge badge-grey"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4</font></font></span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-check"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
									完成4个任务
								</font></font></li>

								<li class="dropdown-content ace-scroll" style="position: relative;"><div class="scroll-track" style="display: none;"><div class="scroll-bar"></div></div><div class="scroll-content" style="max-height: 200px;">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">软件更新</font></font></span>
													<span class="pull-right"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">65％</font></font></span>
												</div>

												<div class="progress progress-mini">
													<div style="width:65%" class="progress-bar"></div>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">硬件升级</font></font></span>
													<span class="pull-right"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">35％</font></font></span>
												</div>

												<div class="progress progress-mini">
													<div style="width:35%" class="progress-bar progress-bar-danger"></div>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单元测试</font></font></span>
													<span class="pull-right"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15％</font></font></span>
												</div>

												<div class="progress progress-mini">
													<div style="width:15%" class="progress-bar progress-bar-warning"></div>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">错误修正</font></font></span>
													<span class="pull-right"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">90％</font></font></span>
												</div>

												<div class="progress progress-mini progress-striped active">
													<div style="width:90%" class="progress-bar progress-bar-success"></div>
												</div>
											</a>
										</li>
									</ul>
								</div></li>

								<li class="dropdown-footer">
									<a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
										详细了解任务
										</font></font><i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
								<span class="badge badge-important"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8</font></font></span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
									8条通知
								</font></font></li>

								<li class="dropdown-content ace-scroll" style="position: relative;"><div class="scroll-track" style="display: none;"><div class="scroll-bar"></div></div><div class="scroll-content" style="max-height: 200px;">
									<ul class="dropdown-menu dropdown-navbar navbar-pink">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
														新评论
													 </font></font></span>
													<span class="pull-right badge badge-info"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+12</font></font></span>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<i class="btn btn-xs btn-primary fa fa-user"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
												鲍勃（Bob）刚刚注册成为编辑...
											</font></font></a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
														新订单
													 </font></font></span>
													<span class="pull-right badge badge-success"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+8</font></font></span>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
														关注者
													 </font></font></span>
													<span class="pull-right badge badge-info"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">+11</font></font></span>
												</div>
											</a>
										</li>
									</ul>
								</div></li>

								<li class="dropdown-footer">
									<a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
										查看所有通知
										</font></font><i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5</font></font></span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
									5条消息
								</font></font></li>

								<li class="dropdown-content ace-scroll" style="position: relative;"><div class="scroll-track" style="display: none;"><div class="scroll-bar"></div></div><div class="scroll-content" style="max-height: 200px;">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#" class="clearfix">
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">亚历克斯（Alex）：</font></font></span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
														Ciao sociis natoque penatibus et auctor ...
													</font></font></span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">刚才</font></font></span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#" class="clearfix">
												<img src="/resource/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar">
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">苏珊（Susan）：</font></font></span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
														Vestibulum id ligula porta felis euismod ...
													</font></font></span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">20分钟前</font></font></span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#" class="clearfix">
												<img src="/resource/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar">
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Bob：</font></font></span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
														Nullam quis risus eget urna mollis ornare ...
													</font></font></span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下午3:15</font></font></span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#" class="clearfix">
												<img src="/resource/assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar">
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#" class="clearfix">
												<img src="/resource/assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar">
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</div></li>

								<li class="dropdown-footer">
									<a href="inbox.html">
										See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="/resource/assets/avatars/user.jpg" alt="杰森的照片">
								<span class="user-info">
									<small><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">欢迎，</font></font></small><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
									珂哥
								</font></font></span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										设置
									</a>
								</li>

								<li>
									<a href="profile.html">
										<i class="ace-icon fa fa-user"></i>
										详情
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										登出
									</a>
								</li>
							</ul>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>
		
		
		
		
		
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
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
								用户界面和元素
							</font></font></span>

						</a>


					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 桌子&emsp;&emsp; </font></font></span>

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