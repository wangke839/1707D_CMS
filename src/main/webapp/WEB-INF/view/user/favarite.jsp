<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<table class="table">
  <caption>我的收藏</caption>
  <thead>
    <tr>
      <th>id</th>
      <th width="50%">标题</th>
      <th>频道</th>
      <th>分类</th>
      <th>发布日期</th>
      <th>操作</th>
      </tr>
  </thead>
  <tbody>
    <c:forEach items="${colle}" var="article">
	    <tr class="active">
	       <td>${article.id}</td>
	       <td>${article.title}</td>
	       <td>${article.channel.name}</td>
	       <td>${article.category.name}</td>
	       <td><fmt:formatDate value="${article.created}" pattern="yyyy-MM-dd"/></td>
	      <td>
	      	<input type="button" onclick="delColle(${article.id})" value="删除"  class="btn-danger"/>
	      </td></tr>
   	</c:forEach>
  </tbody>
</table>
<ul class="pagination">
    <li><a href="javascript:goPage(${pageInfo.prePage})">&laquo;</a></li>
    <c:forEach begin="${pageInfo.pageNum-2 > 1 ? info.pageNum-2:1}" end="${pageInfo.pageNum+2 > info.pages ? info.pages:info.pageNum+2}" varStatus="index">    		
    	<c:if test="${pageInfo.pageNum!=index.index}">
    		<li><a href="javascript:goPage(${index.index})">${index.index}</a></li>
    	</c:if>
    	<c:if test="${pageInfo.pageNum==index.index}">
    		<li><a href="javascript:void"><strong> ${index.index} </strong> </a></li>
    	</c:if>
    	
    </c:forEach>
    <li><a href="javascript:goPage(${pageInfo.nextPage})">&raquo;</a></li>
</ul>

<script type="text/javascript">

	function goPage(page){
		var url="/user/myarticles?page="+page ;
		$("#content").load(url);
	}

	function delColle(articleId){
		$.post("/user/delColle",{id:articleId},function(data){
			if(data.result==1){
				alert("删除成功");
				$("#content").load("/user/myarticles?page=${pageInfo.pageNum}");
			}else{
				alert(data.errorMsg);
			}
		},"json")
	}
	
</script>