<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<style type="text/css">
@import url(css/text_style.css);

@import url(css/button2.css);

body {
	background-image: url(images/bg2.jpg);
	padding: 0px;
	margin: 0px;
	background-size: cover;
}
</style>
<script>
	function check() {
		var name = document.login.name.value;
		var pwd = document.login.pwd.value;
		if (name == "") {
			alert("请输入用户名!");

			return false;
		} else if (pwd == "") {
			alert("请输入密码!");
			return false;
		}

	}
</script>
</head>
<body>
<table align="center" border="0" width="100%" height="50%">
		<caption>
			<font size="16" color=black face="思源黑体"><b>欢迎使用文件管理系统</b></font>
		</caption>
	</table>
	<form name="login" method="get" action="servlet"
		onsubmit="return check()">
		<div class="input_control">
			<input type="text" id="name" name="username" placeholder="用户名"><br>




		</div>

		<div class="input_control">
			<input type="password" id="pwd" name="password" placeholder="密码"><br>

		</div>

		<div class="input_control">
			<font size="5" color=black face="思源黑体"><b>身份：</b></font> <input
				type="radio" name="id" id="common" value="common" hidden>普通用户
			<label for="common"></label> <input type="radio" name="id"
				id="manager" value="manager" hidden>管理员 <label for="manager"></label>
		</div>

		<div class="enjoycss" style="text-align: center">
			<input type="submit" value="登录">
		</div>

		<div class="enjoycss" style="text-align: center">
			<input type="reset" value="重置">
		</div>

	</form>
	<div style="text-align: center">
		<font size="2" color=black face="思源黑体"><b><a
				href="register.jsp">还没有账号?马上注册一个</a></b></font>
	</div>
	<center><p><font size="4" color=green>POWERED BY ZYL 2011-2019</center>
</body>
</html>