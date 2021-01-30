<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>

<script>
	function checkEmail() {
		var emailRegex = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
		if (!emailRegex.test(document.register.UserEdss.value)) {
			alert("邮箱格式错误，请重新输入！");

		}
	}

	function alertc() {
		confirm("用户名：" + document.register.UserID.value + "\n密码："
				+ document.register.UserPass.value + "\n性别："
				+ document.register.sex.value + "\n生日:"
				+ document.register.date.value + "\n电子邮箱："
				+ document.register.UserEdss.value + "\n留言："
				+ document.register.word.value + "\n地区："
				+ document.register.location.value);

	}
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
			<font size="16" color=black face="思源黑体"><b>欢迎注册</b></font>
		</caption>
	</table>
	<form name="register" method="post" action="servlet1">

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


		<div CLASS="input_control">
			<font size="5" color=black face="思源黑体"><b>性别:</b></font> <input
				name="sex" type="radio" id="male" value="男" hidden />男 <label
				for="male"></label> <input name="sex" type="radio" id="female"
				value="女" hidden />女 <label for="female"></label>
		</div>

		<div CLASS="input_control">
			<input type="date" name="date" placeholder="输入出生日期">

		</div>

		<div CLASS="input_control">
			<input type="text" name="UserEdss" placeholder="输入邮箱地址"
				onblur="checkEmail()"><br>
		</div>


		<div class="input_control">
			<textarea name="word" cols="48" rows="6" placeholder="输入留言"></textarea>
		</div>

		<div class="input_control" style="text-align: center">
			<input type="text" list="k" placeholder="请选择地区" name="location">
			<datalist id="k">
			<option>--请选择地区--</option>
			<option>北京</option>
			<option>南京</option>
			<option>深圳</option>
			<option>上海</option>
			</datalist>
		</div>

		<div class="input_control">

			<font size="5" color=black face="思源黑体"><b>兴趣:</b></font> <input
				type="checkbox" name="hobby" id="football" value="足球" hidden>足球
			<label for="football"></label> <input type="checkbox" name="hobby"
				id="music" value="音乐" hidden>音乐 <label for="music"></label>

			<input type="checkbox" name="hobby" id="eat" value="吃" hidden>吃
			<label for="eat"></label>

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