<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
		<h1>文件上传</h1>

		<form action="../FileUpdateServlet" method="post" name="uploadform"
			enctype="multipart/form-data">
			文件1：<input type="file" name="file1" size="40">
			<br><br>
			文件2：<input type="file" name="file1" size="40">
			<br><br>
			文件3：<input type="file" name="file1" size="40">
			<br><br>
			<div align="center">
			<input type="submit" name="submit" value="开始上传">
			</div>


		</form>
	</center>
</body>
</html>