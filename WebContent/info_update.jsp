<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/button2.css" type="text/css">
<link rel=stylesheet href="css/text_style.css" type="text/css">
<script>
	function checkPWD() {
		var pwd = document.info_update.UserPass.value;
		var pwda = document.info_update.UserPassA.value;
		if (pwd != pwda) {
			alert("密码错误， 请重新输入！");
		}
	}
	function checkName() {
		var name = document.info_update.UserID.value;
		if (name == "") {
			alert("请输入用户名");
		}
		function alertc() {
			confirm("用户名：" + document.info_update.UserID.value + "\n密码："
					+ document.info_update.UserPass.value);

		}
	}
</script>
<style type="text/css">
a {
	text-decoration: none
}

body {
	background-image: url(images/bg02.jpg);
	padding: 0px;
	margin: 0px;
	background-size: cover;
}
</style>
</head>
<body>
	<div style="text-align: center">
		<font size="5" color=black face="思源黑体"><b>当前用户为：(<%=session.getAttribute("id")%>)
				<%=session.getAttribute("user")%></b></font>
	</div>

	<form name="info_update" method="post" action="servlet2">

		<div CLASS="input_control">

			<input type="text" name="UserID"
				placeholder="<%=session.getAttribute("user")%>(修改用户名)"
				maxlength="8" onblur="checkName()"> <br>
		</div>



		<div CLASS="input_control">
			<input type="password" name="UserPass" id="input" placeholder="输入新密码"><br>
		</div>

		<div CLASS="input_control">
			<input type="password" name="UserPassA" id="inputA"
				placeholder="再次输入新密码" onblur="checkPWD()"><br>
		</div>

		<div class="enjoycss" style="text-align: center">
			<input type="submit" onclick="alertc()">

		</div>
	</form>
</body>
</html>