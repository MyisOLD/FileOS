<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel=stylesheet href="css/nav4.css" type="text/css">
<style type="text/css">
</style>
</head>
<body>
	<div>
		<ul class="nav">
			<li class="menu"><a href="info_update.jsp" target="content"
				class="menuLink">修改个人信息</a></li>
			<li class="menu"><a href="#" target="content" class="menuLink">用户管理</a>
				<ul class="submenu">
					<li><a href="registerA.jsp" class="menuLink" target="content">增加用户</a></li>
					<li><a href="delete.jsp" class="menuLink" target="content">删除用户</a></li>
					<li><a href="search.jsp" class="menuLink" target="content">查找用户</a></li>
					

				</ul></li>

			<li class="menu"><a href="#" target="content" class="menuLink">文档发布</a>
			<ul class="submenu">
					<li><a href="file/upload.jsp" class="menuLink" target="content">上传文件</a></li>
					<li><a href="file/upload_list.jsp" class="menuLink" target="content">查看/下载文件</a></li>
					<li><a href="file/upload_list.jsp" class="menuLink" target="content">删除文件</a></li>
					

				</ul>
			</li>
			<li class="menu"><a href="file/upload_list.jsp" target="content" class="menuLink">文档展示</a></li>
			<li class="menu"><a href="exit.jsp" target="content" class="menuLink">退出</a></li>
		</ul>
	</div>
</body>
</html>