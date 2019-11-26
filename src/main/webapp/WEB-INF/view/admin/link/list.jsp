<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<script type="text/javascript">


</script>



<div class="table-responsive">
  <table class="table">
    <caption>友情链接</caption>
    <thead>
      <tr >
        <th>id</th>
        <th>名称</th>
        <th>地址</th>
        <th>创建时间</th>
        <th>操作    <input type="button" value="添加" onclick="add()">
        </th>
       </tr>
    </thead>
    <tbody>
    	<c:forEach items="${info.list}"  var="link">
    	  <tr>
	        <td>${link.id}</td>
	        <td>${link.name}</td>
	        <td>${link.url}</td>
	        <td><fmt:formatDate pattern="YYYY年MM月dd号 HH:mm:ss" value="${link.created}"></fmt:formatDate></td>
	         <td> <input type="button" value="修改" onclick="udpateLink(${link.id})">
	             &nbsp;
	              <input type="button" value="删除" onclick="deleteLink(${link.id})">
	         </td>
	      </tr>
      </c:forEach>
  </table>
</div>

<ul class="pagination">
    <li><a href="javascript:goPage(${info.prePage})">&laquo;</a></li>
    <c:forEach begin="${info.pageNum-2 > 1 ? info.pageNum-2:1}" end="${info.pageNum+2 > info.pages ? info.pages:info.pageNum+2}" varStatus="index">    		
    	<c:if test="${info.pageNum!=index.index}">
    		<li><a href="javascript:goPage(${index.index})">${index.index}</a></li>
    	</c:if>
    	<c:if test="${info.pageNum==index.index}">
    		<li><a href="javascript:void"><strong> ${index.index} </strong> </a></li>
    	</c:if>
    	
    </c:forEach>
    <li><a href="javascript:goPage(${info.nextPage})">&raquo;</a></li>
</ul>

<script type="text/javascript">
	function goPage(page){
		var url="/admin/link?pageNum="+page;
		$(".page-content").load(url);
	}
	
	function add(){
		$(".page-content").load("/admin/linkAdd");
	}
	function deleteLink(id){
		$.post(
			"deleteLink.do",
			{id:id},
			function(msg){
				if(msg.result == 1){
					alert("删除唱功");
					$(".page-content").load("/admin/link?pageNum=${info.pageNum}");
				}else{
					alert(msg.errorMsg);
				}
			},
			"json"
		)
	}
</script>
    