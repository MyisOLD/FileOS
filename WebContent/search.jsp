<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel=stylesheet href="css/button2.css" type="text/css">
<link rel=stylesheet href="css/text_style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url(images/bg2.jpg);
	padding: 0px;
	margin: 0px;
	background-size: cover;
}
</style>
</head>
<body>
	<table align="center" border="0" width="100%" height="50%">
		<caption>
			<font size="16" color=black face="思源黑体"><b>查找用户</b></font>
		</caption>
	</table>
	<form action="servletS" method="get">
		<div class="input_control">
			<input type="text" name="name">
		</div>
		<div class="enjoycss" style="text-align: center">
			<input type="submit" value="搜索">

		</div>
		
	</form>
</body>
</html>