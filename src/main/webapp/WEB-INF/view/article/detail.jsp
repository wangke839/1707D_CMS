<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link href="/resource/bootstrap/css/bootstrap.css" rel="stylesheet">  
 <script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script> 
 <script type="text/javascript" src="/resource/bootstrap/js/bootstrap.js"></script>
 <title></title>
</head>
<c:forEach items="${article}" var="a"></c:forEach>
<body>
	<div class="container">
		<h2>
			${a.title}
		</h2>
		<h5>
			作者：${a.username} 
			&nbsp;&nbsp;&nbsp;&nbsp; 发布时间：${a.created} 
			&nbsp;&nbsp;&nbsp;&nbsp; 频道：${a.cname1} 
			&nbsp;&nbsp;&nbsp;&nbsp; 分类：${a.cname2} 
		</h5>
		<div>
			${a.content}
		</div>
		<div>
			<nav aria-label="...">
			  <ul class="pager">
			    <li><a href="#">上一篇</a></li>
			    <li><a href="#">下一篇</a></li>
			  </ul>
			</nav>
		</div>
		<div>
			<!-- 	显示文章的评论 -->
		</div>
	</div>


</body>
</html>