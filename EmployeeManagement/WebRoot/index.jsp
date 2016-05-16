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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主界面</title>
<style>
body {
	scrollbar-base-color: #C0D586;
	scrollbar-arrow-color: #FFFFFF;
	scrollbar-shadow-color: DEEFC6;
}
</style>
</head>
<frameset rows="140,*,60" cols="*" frameborder="no" framespacing="0">
	<frame src="top.jsp" name="topFrame" scrolling="no">
	<frameset cols="220,*" name="btFrame" frameborder="NO" framespacing="0">
		<frame src="left.jsp" noresize name="menu" scrolling="no"
			style="border-left:1px #E7E7E7 solid;border-right:1px #E7E7E7 solid">
		<frame src="home.jsp" noresize name="main" scrolling="yes"
			noresize="noresize">
	</frameset>
<noframes>
	<body></body>
</noframes>
</html>
