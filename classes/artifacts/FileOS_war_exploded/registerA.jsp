<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>

<script>
	function checkPWD() {
		var pwd = document.register.UserPass.value;
		var pwda = document.register.UserPassA.value;
		if (pwd != pwda) {
			alert("密码错误， 请重新输入！");
		}
	}
	function checkName() {
		var name = document.register.UserID.value;
		if (name == "") {
			alert("请输入用户名");
		}
	}

	function time(time) {
		var time = new date();
		return time;
	}
</script>

<style type="text/css">
@import url(css/text_style.css);

@import url(css/button2.css);

a {
	text-decoration: none
}

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
			<font size="16" color=black face="思源黑体"><b>增加普通用户</b></font>
		</caption>
	</table>
	<form name="register" method="post" action="servletA">
		<div CLASS="input_control">
			<input type="text" name="UserID" placeholder="用户名" maxlength="8"
				onblur="checkName()"> <br>
		</div>
		<div CLASS="input_control">
			<input type="password" name="UserPass" id="input" placeholder="输入密码"><br>
		</div>
		<div CLASS="input_control">
			<input type="password" name="UserPassA" id="inputA"
				placeholder="再次输入密码" onblur="checkPWD()"><br>
		</div>
		<div class="enjoycss" style="text-align: center">
			<input type="submit" onclick="alertc()">
		</div>
		<div class="enjoycss" style="text-align: center">
			<input type="reset">
		</div>
		<br> <br> <br>
	</form>

</body>
</html>