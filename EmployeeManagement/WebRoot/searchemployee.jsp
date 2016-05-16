<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>login5.html</title>

		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">

		<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

	</head>

	<body background="images/bg1.jpg">
		<form action="search.action" method="post" name="search">
			<fieldset>
				<legend>
					员工信息
				</legend>
				<h3>
					<font color="LemonChiffon"> 请输入查找条件</font>
				</h3>
				<font >姓名：</font><br>
				<input type="text" size="10" name="name" /><br><br>
				<font>籍贯：</font><br>
				<input type="text" size="10" name="nativePlace" /><br><br>
				<font>学历：</font><br>
				<input type="text" size="10" name="formalSchooling" /><br><br>
				<input type="submit" value="精确查询" style="font-size: 15px;"><br>
			</fieldset>

		</form>
	</body>

</html>
