<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
    
      
      
    
      
    
    
    
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

				<!-- #section:basics/navbar.dropdown -->&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				
		<c:choose>
	         <c:when test="${sessionScope.SESSION_USER_KEY == null}">
	         	 <a href="user/tologin" > <font color="red">登录</font> </a>	
	         </c:when>	
         	 <c:otherwise>
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
									${sessionScope.SESSION_USER_KEY.username}
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
									<a href="loginOut">
										<i class="ace-icon fa fa-power-off"></i>
										登出
									</a>
								</li>
							</ul>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>
				</c:otherwise>
				</c:choose>
				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>