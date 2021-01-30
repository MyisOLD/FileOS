<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>
<link rel=stylesheet href="../css/button2.css" type="text/css">
<link rel=stylesheet href="../css/text_style.css" type="text/css">
<meta charset="utf-8">
<title>layPage快速使用</title>
<link rel="stylesheet" href="../layui/css/layui.css" media="all">
<!-- <script type="text/javascript">

function pagination(pageNo, pageSize, array) {
				var offset = (pageNo - 1) * pageSize;
				return (offset + pageSize >= array.length) ? array.slice(offset, array.length) : array.slice(offset, offset + pageSize);
			}
</script> -->
</head>

<body>
	<font size=4 color=red>已上传文件目录列表</font>
	<br>
	<form action="../servletFD" method="get">
		<div class="input_control">
			<input type="text" name="name" placeholder="删除指定文件名">
		</div>
		<div class="enjoycss" style="text-align: center">
			<input type="submit" value="删除">

		</div>
		
	</form>
	
<font size=5 color=blue>
	<%
		String path = "C:/Users/NOPPC/eclipse-workspace/FileOS/WebContent/upload";
		File fl = new File(path);
		File filelist[] = fl.listFiles();
		out.println("服务器上上传文件的保存路径：" + path + "<br><br>");
		int num = filelist.length;
		
		for (int i = 0; i < filelist.length; i++) {
			out.println((i+1)+":"+filelist[i].getName());%>
			<a href="../upload/<%=filelist[i].getName()%>" >
			<img border="0" src="../images/down.png" alt="W3School">
			</a>	
	<%out.println("<br><br>");
	}
	%>
	<!-- <script type="text/javascript">
	var pageTrades = pagination(1, 7, filelist);
	</script> -->
</font>
 
	 <div id="fenye"></div>
	<ul id="biuuu_city_list"></ul>


	<script src="../layui/layui.js"></script>
	<script>
	layui.use(['laypage', 'layer'], function(){
		  var laypage = layui.laypage
		  ,layer = layui.layer;
			

			//执行一个laypage实例
			laypage.render({
				elem : 'fenye' //注意，这里的 test1 是 ID，不用加 # 号
				
				,count :
	<%=num%>
			    ,limit:7
		//数据总数，从服务端得到
				
				,jump: function(obj){
				      //模拟渲染
				      document.getElementById("biuuu_city_list").innerHTML = function(){
				    	  
				        var arr = []
				        ,thisData = data.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
				        layui.each(thisData, function(index, item){
				          arr.push('<li>'+ item +'</li>');
				        });
				        return arr.join('');
				      }();
				    }
				  });
				  
		});
	</script> 
</body>
</html>