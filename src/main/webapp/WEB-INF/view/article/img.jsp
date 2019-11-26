<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

	<form action="" id="form">
	<br>
	<div class="form-group row ">
			<label for="title">文章标题</label> <input type="text" value="${article.title}"
				class="form-control" id="title" name="title" placeholder="请输入标题">
		</div>
	<div id="imgAppend">
			<div class="input-group">
				 <span class="input-group-addon">图片</span>
				 <input type="file"
					class="form-control"  name="file">
			</div><br>
			<div class="input-group">
				 <span class="input-group-addon">图片描述</span>
				 <input type="Text"
					class="form-control"  name="desc">
			</div><br>
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
		<button type="button" class="btn" onclick="addImg()">添加图片</button>
		<button type="button" class="btn btn-success" onclick="postImg()">发布</button>
		
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
function addImg(){
	$("#imgAppend").append(                                      
	+	'<div class="input-group">                               '
	+'			 <span class="input-group-addon">图片</span>     '
	+'			 <input type="file"                              '
	+'				class="form-control"  name="file">           '
	+'		</div><br>                                           '
	+'		<div class="input-group">                            '
	+'			 <span class="input-group-addon">图片描述</span> '
	+'			 <input type="Text"                              '
	+'				class="form-control"  name="desc">           '
	+'		</div><br>'		                                     
	)
}


//修改发布文章
function postImg(){
	     
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
			url:"/user/postImg",
			success:function(obj){
				if(obj){
					alert("发布图片成功!");
					$('#content').load("/user/myarticles");
				}else{
					alert("发布图片失败")
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
