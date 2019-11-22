<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<%
	request.setCharacterEncoding("UTF-8");
	String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";

%>
<script>
		KindEditor.ready(function(K) {
			window.editor1 = K.create('textarea[name="content1"]', {
			cssPath : '/resource/kindeditor/plugins/code/prettify.css',
			uploadJson : '/resource/kindeditor/jsp/upload_json.jsp',
			fileManagerJson : '/resource/kindeditor/jsp/file_manager_json.jsp',
			allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
		function query(){
		  alert(editor1.html())
			//alert( $("[name='content1']").attr("src"))
		} 
	</script>
	<form action="" id="form">
	<input type="hidden" name="id" value="${article.id}">
		<div class="form-group row ">
			<label for="title">文章标题</label> <input type="text" value="${article.title}"
				class="form-control" id="title" name="title" placeholder="请输入标题">
		</div>


		<div class="form-group row ">
			<textarea name="content1" cols="100" rows="8"
				style="width: 900px; height: 250px; visibility: hidden;">
				${article.content}</textarea>
			<br />
		</div>
		<div class="form-group row ">
			<label for="title">文章标题图片</label> <input type="file"
				class="form-control" id="file" name="file">
		</div>
		<div class="form-group row ">
		  	<label for="channel">文章频道</label> 
			<select class="custom-select custom-select-sm mb-3" id="channel"  name="channelId">
			  <option value="-1">请选择</option>
			  <c:forEach items="${channel}" var="channel">
			  	<c:choose>
			  		<c:when test="${channel.id==article.channel_id}">
			  			<option value="${channel.id}" selected>${channel.name}</option>
			  		</c:when>
			  		<c:otherwise>
			  			<option value="${channel.id}">${channel.name}</option>
			  		</c:otherwise>
			  	</c:choose>
			  </c:forEach>
			</select>
			<label for="category">文章分类</label> 
			<select class="custom-select custom-select-sm mb-3" id="category" name="categoryId">
			</select>
			
			<label for="category">文章标签</label> 
				<input name="tags" size="50"/>
			
		</div>
		
		<div class="form-group row" >
		<button type="button" class="btn btn-success" onclick="update()">修改</button>
		
		</div>
	</form>



<script type="text/javascript">

//当频道的数据发生改变的时候，分类需要联动
$("#channel").change(function(){
	changeChannel();
});

function changeChannel(){
	    // 获取修改后的频道值
		var channelId =  $("#channel").val();
	   // 根据频道的数据获取相应的分裂
	   $.post(
			  "/article/getCategoryByChannel",
			  {chnId:channelId},
			  function(data){
		  		 //data 包含了分类的信息
		  		 if(data.result==1){
				   // 清空数据
				   $("#category").empty();
				   // 追加
				   $("#category").append("<option value='0'>请选择</option>")
				   for ( var index in data.data) {
					   if(data.data[index].id == '${article.category_id}' ){
					   	  $("#category").append("<option value='"+ data.data[index].id +"' selected>"+data.data[index].name+"</option>");
					   }else{
						  $("#category").append("<option value='"+ data.data[index].id +"'>"+data.data[index].name+"</option>");
				   	   }	
				   }
			   }else{
				   // 获取数据失败
				   alert(data.errorMsg);
			   }
		   },
	   	"json"
	   )
	}

// 首次加载以后自动出现分类
	changeChannel();



//修改发布文章
function update(){
	     
		//序列化表单数据带文件
		 var formData = new FormData($( "#form" )[0]);
		//改变formData的值
		// alert(editor1.html())// 是富文本的内容
		
		 formData.set("content",editor1.html());
		
		$.ajax({
			type:"post",
			data:formData,
			// 告诉jQuery不要去处理发送的数据
			processData : false,
			// 告诉jQuery不要去设置Content-Type请求头
			contentType : false,
			url:"/user/updateArticle",
			success:function(obj){
				if(obj){
					alert("修改发布成功!")
					$('#center').load("/user/myarticlelist");
				}else{
					alert("修改发布失败")
				}
				
			}
			
		})
		
}




</script>
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>
