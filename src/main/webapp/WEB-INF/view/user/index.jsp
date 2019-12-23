<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
<style type="text/css">
		body{
			background: #000;
			overflow: hidden;
		}
</style>
</head>
<body>
<!-- 导航条 -->
<nav class="navbar navbar-default">
	<%@include  file="../comm/top.jsp"%>
</nav>
	
		
		
		
		
		
		
			
			
			
			
			
			<!-- 显示区 -->
			<div class="main-content-inner" style="width: 1500px">
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
							<form class="form-search" action="search" method="post">
								<span class="input-icon">
									<input type="text" name="key" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off">
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
								<input type="submit" value="查找">
							</form>
						</div><!-- /.nav-search -->

						<!-- /section:basics/content.searchbox -->
					</div>

					<!-- /section:basics/content.breadcrumbs -->
					<div class="page-content" id="a">
						<div class="container-fluid " style="background:pink">
	<div class="container"  style=" overflow-y:auto; overflow-x:auto; width:1000px; height:500px;" >
		<div class="row">
			<div class="col-md-2" style="min-height:200px;position: fixed;left: 0px;top: 140px;" >
			
			<ul class="list-group">
			<li class="list-group-item active"><a><font color="red"><center>热门文章</center></font></a></li>
			<c:forEach items="${list}" var="s">
			
			  <li class="list-group-item" data="/channel?chnId=${s.id}"><a href="/user/channel?chnId=${s.id}"><center> ${s.name}</center></a></li>
			</c:forEach>
			</ul>

			</div>
		<div class="col-md-8" style="background:black;min-height:300px">
				<!-- 轮播图 -->
				<div id="myCarousel" class="carousel slide">
						
					<div class="carousel-inner">
						<div class="item active">
							<center><img src="/resource/images/马甜.jpg" alt="First slide" style="width: 500px;height: 400px" class="img-rounded" ></center>
							<div class="carousel-caption">标题 1</div>
						</div>
						<div class="item">
							<img src="/resource/images/QQ图片20190117214347.jpg" alt="Second slide" style="width: 700px;height: 400px" class="img-circle">
							<div class="carousel-caption">标题 2</div>
						</div>
						<div class="item">
							<img src="/resource/images/1.jpg" alt="Third slide" style="width: 700px;height: 400px">
							<div class="carousel-caption">标题 3</div>
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					</a>
				</div> 
				<!-- 放文章的列表 -->
								<center><h3><font color="red">热门文章</font></h3></center>
					<div class="hotbox" style="background-color:;">
						<c:forEach items="${info.list}" var="article" >
						<div class=row >
							 <hr align="left" style="width:100%">
							<div class="col-md-2"><img height="50px" width="50px" src="/resource/images/${article.picture}"></div>
							<div class="col-md-10">
								<a href="javascript:showArticle(${article.id})">${article.title}</a>
								<br>
								 频道：<a>${article.cname1}</a> &nbsp;&nbsp;
								 分类：<a>${article.cname2}</a>
								<br>
								<br>
								${article.username} 发布于  <fmt:formatDate value="${article.created}" pattern="yyyy-MM-dd"/> 
							</div>
						</div>
						</c:forEach>
					</div>
						<div class="row">
								<ul class="pagination">
									    <li><a href="/user/list.do?pageNum=${info.prePage}">&laquo;</a></li>
									    <c:forEach begin="${info.pageNum-2 > 1 ? info.pageNum-2:1}" end="${info.pageNum+2 > info.pages ? info.pages:info.pageNum+2}" varStatus="index">    		
									    	<c:if test="${info.pageNum!=index.index}">
									    		<li><a href="/index?pageNum=${index.index}">${index.index}</a></li>
									    	</c:if>
									    	<c:if test="${info.pageNum==index.index}">
									    		<li><a href="/user/list.do?pageNum=${index.index}"><strong> ${index.index} </strong> </a></li>
									    	</c:if>
									    	
									    </c:forEach>
									    <li><a href="/user/list.do?pageNum=${info.nextPage}">&raquo;</a></li>
									</ul>
							</div>
							<center><h3><font color="red">查询文章</font></h3></center>
					<div class="searchbox" style="background-color:yellow;">
						<c:forEach items="${info2.list}" var="article">
						<div class=row >
							 <hr align="left" style="width:100%">
							<div class="col-md-2"><img height="50px" width="50px" src="d:/pic/${article.picture}"></div>
							<div class="col-md-10">
								<a href="javascript:showArticle(${article.id})">${article.title}</a>
								<br>
								 频道：<a>${article.cname1}</a> &nbsp;&nbsp;
								 分类：<a>${article.cname2}</a>
								<br>
								<br>
								${article.username} 发布于  <fmt:formatDate value="${article.created}" pattern="yyyy-MM-dd"/> 
							</div>
						</div>
						</c:forEach>
					</div>
							<div class="row">
								<ul class="pagination">
									    <li><a href="search?pageNum=${info2.prePage}&key=${key}">&laquo;</a></li>
									    <c:forEach begin="${info2.pageNum-2 > 1 ? info2.pageNum-2:1}" end="${info2.pageNum+2 > info2.pages ? info2.pages:info2.pageNum+2}" varStatus="index">    		
									    	<c:if test="${info2.pageNum!=index.index}">
									    		<li><a href=search?pageNum=${index.index}&key=${key}">${index.index}</a></li>
									    	</c:if>
									    	<c:if test="${info2.pageNum==index.index}">
									    		<li><a href="search?pageNum=${index.index}&key=${key}"><strong> ${index.index} </strong> </a></li>
									    	</c:if>
									    </c:forEach>
									    <li><a href="search?pageNum=${info2.nextPage}&key=${key}">&raquo;</a></li>
									</ul>
							</div>
					</div>
					
			<div class="col-md-2" style="min-height:300px;position: fixed;left: 940px;top: 140px;">
				<div class="panel panel-default">
				
				<div class="panel-footer">图片文章</div>
				<div class="panel-body">
					<c:forEach items="${imgArticles}" var="imgarticle" varStatus="index">
							${index.index+1} . <a href="javascript:showArticle(${imgarticle.id})">${imgarticle.title}</a>
							<br/>
					</c:forEach>
				</div>
				<div class="panel-heading">
						<h3 class="panel-title">最新文章</h3>
				</div>
					<div class="panel-body">
						<c:forEach items="${newArticles}" var="article" varStatus="index">
							${index.index+1} . <a href="javascript:showArticle(${article.id})">${article.title}</a>
							<br/>
						</c:forEach>
				</div>
					</div>
			</div>
			</div>
			
			
		</div>
	</div>
  </div>
  <img alt="" src="/resource/images/武田玲奈.jpg" style="height: 300px;width: 200px;position: fixed;top:130px;left: 1259px;">
</div>
						
			
			<!-- 尾部 -->
			<div class="footer" style="background-color: red;">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
					<span>
					<c:forEach items="${list2}" var="l">
						<a href="${l.url }">${l.name}</a>
					</c:forEach>
					</span><br>
						<span class="bigger-120">
							<span class="blue bolder" >KE</span>
							<font color="red">阿珂6666 © 2019-2020</font>
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
	<script type="text/javascript">
		function showArticle(articleId){
			window.open("/article/showdetail?id="+articleId)
		}
	</script>
	
 <script>
// 纯原生js版
 function flySnow(){
	var snow = document.createElement("div");
	snow.style.cssText = 'position:absolute;color:#fff;';
	var vw = document.documentElement.clientWidth - 20,
		vh = document.documentElement.clientHeight - 5;
	setInterval(function(){
		var cloneSnow = snow.cloneNode();
		var arr = ['❄','❉','❅','❆','✻','✼','❇','❈','❊','✥','✺'],
			style = arr[Math.floor(Math.random() * 11)];
			cloneSnow.innerHTML = style;
		var startLeft = vw * Math.random(),
			endLeft = vw * Math.random();
		var startOpa = 0.8 + 0.2 * Math.random(),
			endOpa = 0.2 + 0.2 * Math.random();
		var startSize = 6 + 25 * Math.random(),
			endSize = 5 + 18 * Math.random();
		var duration = 5000 + 6000 * Math.random();
		cloneSnow.style.cssText += 'left:'+startLeft+'px;'
								 + 'top:'+-22+'px;'
								 + 'opacity:'+startOpa+";"
								 + 'font-size:'+startSize+'px;'
								 + 'transition:'+duration+'ms;';
		document.body.appendChild(cloneSnow);
		setTimeout(function(){
			cloneSnow.style.cssText += 'left:'+endLeft+'px;'
									 + 'top:'+(vh - endSize)+'px;'
									 + 'opacity:'+endOpa+';'
									 + 'font-size:'+endSize+'px;'
									 + 'transform:'+'rotateZ(720deg);';
			setTimeout(function(){
				cloneSnow.remove();
			},duration)
		},0)
	},15)
}
flySnow(); 
</script>
</body>
</html>