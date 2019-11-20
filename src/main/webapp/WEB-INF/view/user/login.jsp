<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN" class="translated-ltr"><head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta charset="utf-8">
		<title>登录页面-CMS管理员</title>

		<meta name="description" content="User login page">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="/resource/assets/css/bootstrap.css">
		<link rel="stylesheet" href="/resource/assets/css/font-awesome.css">

		<!-- text fonts -->
		<link rel="stylesheet" href="/resource/assets/css/ace-fonts.css">

		<!-- ace styles -->
		<link rel="stylesheet" href="/resource/assets/css/ace.css">

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="/resource/assets/css/ace-part2.css" />
		<![endif]-->
		<link rel="stylesheet" href="/resource/assets/css/ace-rtl.css">

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="/resource/assets/css/ace-ie.css" />
		<![endif]-->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="/resource/assets/js/html5shiv.js"></script>
		<script src="/resource/assets/js/respond.js"></script>
		<![endif]-->
	<link type="text/css" rel="stylesheet" charset="UTF-8" href="https://translate.googleapis.com/translate_static/css/translateelement.css"></head>

	<body class="login-layout light-login">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">珂  ♥ 筱 </font></font></span>
									<span class="grey" id="id-text2"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">申请</font></font></span>
								</h1>
								<h4 class="blue" id="id-company-text"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">©公司名称</font></font></h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
												请输入您的信息
											</font></font></h4>

											<div class="space-6"></div>

											<form action="login.do" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
														<!-- 用户名 -->
															<input type="text" class="form-control" placeholder="Username" name="username">
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
														<!-- 密码 -->
															<input type="password" class="form-control" placeholder="Password" name="password">
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace">
															<span class="lbl"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 记住账号</font></font></span>
														</label>

														<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录</font></font></span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<div class="social-or-login center">
												<span class="bigger-110"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">或使用登录</font></font></span>
											</div>

											<div class="space-6"></div>

											<div class="social-login center">
												<a class="btn btn-primary">
													<i class="ace-icon fa fa-facebook"></i>
												</a>

												<a class="btn btn-info">
													<i class="ace-icon fa fa-twitter"></i>
												</a>

												<a class="btn btn-danger">
													<i class="ace-icon fa fa-google-plus"></i>
												</a>
											</div>
										</div><!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="#" data-target="#forgot-box" class="forgot-password-link">
													<i class="ace-icon fa fa-arrow-left"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
													我忘记了我的密码
												</font></font></a>
											</div>

											<div>
												<a href="#" data-target="#signup-box" class="user-signup-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
													我要注册
													</font></font><i class="ace-icon fa fa-arrow-right"></i>
												</a>
											</div>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
												找回密码
											</font></font></h4>

											<div class="space-6"></div>
											<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
												输入您的电子邮件并接收说明
											</font></font></p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="Email">
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													<div class="clearfix">
														<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="ace-icon fa fa-lightbulb-o"></i>
															<span class="bigger-110"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发给我！</font></font></span>
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
												回到登入
												</font></font><i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
												新用户注册
											</font></font></h4>

											<div class="space-6"></div>
											<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 输入您的详细信息以开始： </font></font></p>

											<form id="regForm" action="register" method="post">
												<fieldset>
													

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="Username" name="username" maxlength="8"  minlength="2">
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="Password" name="password">
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="Repeat password">
															<i class="ace-icon fa fa-retweet"></i>
														</span>
													</label>

													<label class="block">
														<input type="checkbox" class="ace">
														<span class="lbl"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
															我接受
															 </font></font><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户协议</font></font></a>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="ace-icon fa fa-refresh"></i>
															<span class="bigger-110"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">重启</font></font></span>
														</button>

														<input type="button" class="btn btn-default" value="注册" onclick="register()" />
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
												回到登入
											</font></font></a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.signup-box -->
							</div><!-- /.position-relative -->

							<div class="navbar-fixed-top align-right">
								<br>
								&nbsp;
								<a id="btn-login-dark" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">深色</font></font></a>
								&nbsp;
								<span class="blue"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">/ </font></font></span>
								&nbsp;
								<a id="btn-login-blur" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">模糊</font></font></a>
								&nbsp;
								<span class="blue"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">/ </font></font></span>
								&nbsp;
								<a id="btn-login-light" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">浅色</font></font></a>
								&nbsp; &nbsp; &nbsp;
							</div>
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='/resource/assets/js/jquery.js'>"+"<"+"/script>");
		</script><script src="/resource/assets/js/jquery.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='../assets/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='/resource/assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});
			
			
			
			//you don't need this, just used for changing background
			jQuery(function($) {
			 $('#btn-login-dark').on('click', function(e) {
				$('body').attr('class', 'login-layout');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-light').on('click', function(e) {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-blur').on('click', function(e) {
				$('body').attr('class', 'login-layout blur-login');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'light-blue');
				
				e.preventDefault();
			 });
			 
			});
		</script><div id="goog-gt-tt" class="skiptranslate" dir="ltr"><div style="padding: 8px;"><div><div class="logo"><img src="https://www.gstatic.com/images/branding/product/1x/translate_24dp.png" width="20" height="20" alt="Google 翻译"></div></div></div><div class="top" style="padding: 8px; float: left; width: 100%;"><h1 class="title gray">原文</h1></div><div class="middle" style="padding: 8px;"><div class="original-text"></div></div><div class="bottom" style="padding: 8px;"><div class="activity-links"><span class="activity-link">提供更好的翻译建议</span><span class="activity-link"></span></div><div class="started-activity-container"><hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;"><div class="activity-root"></div></div></div><div class="status-message" style="display: none;"></div></div>
	
	<script type="text/javascript">
		// regForm 需要校验  校验规则可以在这个函数内部 也可以直接写在 标签的属性上
		$("#regForm").validate();
		
		function register() {
			alert("111");
			$("#regForm").submit();	
		}
	</script>

<div class="goog-te-spinner-pos"><div class="goog-te-spinner-animation"><svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66"><circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle></svg></div></div></body></html>