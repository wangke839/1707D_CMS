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
	<%@include  file="../comm/top.jsp" %>
</nav>
<div style="background-color: pink;height: 700px;">
<div class="container" >
	<div class="row" >
		<div class="col-md-3" style="float: left 40px;">
		<br><br><br><br><br><br><br><br>
			<ul class="list-group homemenu">
			 <li class="list-group-item list-group-item-success" data="/user/myarticles">我的文章</li>
			 <li class="list-group-item list-group-item-info" data="/user/postArticle">发布文章</li>
			 <li class="list-group-item list-group-item-info" data="/user/postImg">发布图片</li>
			 <li class="list-group-item list-group-item-info" data="/user/myCollection">我的收藏夹</li>
			 <li class="list-group-item list-group-item-info">我的评论</li>
			 <li class="list-group-item list-group-item-info">投票管理</li>
			 <li class="list-group-item list-group-item-info">个人设置</li>
			</ul>
		</div>
		<br><br><br><br><br><br>
		<div class="col-md-9" id="content">
		
				<div id="kindEditor" style="display: none">
				   <!-- 引入kindEditor的样式 -->
				  <jsp:include page="/resource/kindeditor/jsp/demo.jsp"></jsp:include>
              </div>
              
			
		</div>
	</div>
 
</div>
</div>
<script type="text/javascript">
	$(".homemenu li").click(function(){
		var url  = $(this).attr("data");
		//alert(url);
		$("#content").load(url);
	})
	
	var url = $(".homemenu li:eq(0)").attr("data");
	$("#content").load(url);
	
</script>
<script type="text/javascript">
		function showArticle(articleId){
			window.open("/article/showdetail?id="+articleId)
		}
	</script>

</body>
</html>